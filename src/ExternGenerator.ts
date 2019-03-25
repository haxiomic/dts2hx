import * as ts from 'typescript';
import * as path from 'path';
import * as util from 'util';
import { TSUtil } from './TSUtil';
import Debug from './Debug';
import Terminal from './Terminal';

type HaxeSyntaxObject = string;

type HaxeType = {
    typePath: Array<string>,
    haxeSyntaxObject: HaxeSyntaxObject,
    contributingSymbols: Set<ts.Symbol>,
    exportRoot: ts.Symbol | null,
    aliasTo: HaxeType | null,
}

export class ExternGenerator {

    logVerboseEnabled: boolean = false;
    logWarningsEnabled: boolean = true;
    printErrorLocation: boolean = true;

    // mapping between haxe `package.Type.SubType` and haxe type descriptor
    // use `getHaxeType` instead of `haxeTypes.get` to follow typedefs
    protected haxeTypes = new Map<string, HaxeType>();
    protected packageRoot: Array<string>;

    constructor(protected checker: ts.TypeChecker, packageRoot: Array<string> = []) {
        this.packageRoot = packageRoot.map(p => this.toSafePackageName(p));
    }

    /**
     * Adds symbol to list of externs to generate
     * @throws
     */
    addSymbol(symbol: ts.Symbol, exportRoot: ts.Symbol | null) {
        // => we never generate an extern for a symbol twice, so first check if we already have an extern for this symbol, if so then typedef and exit
        // => when adding fields, we do a lookup to get the haxe symbol at the parent path and create if doesn't exist
        //    this handles type merging

        let symbolHandled = false;

        // @! need to skip namespace only

        // completely skipped symbols
        if (symbol.flags === ts.SymbolFlags.None || // we can't do anything with symbols with no flags
            symbol.flags & (
                  ts.SymbolFlags.Prototype          // no need to expose the prototype symbol
                | ts.SymbolFlags.ExportStar         // this is the list of `export * from 'x'` statements (the symbol walker will already include the target symbols)
                | ts.SymbolFlags.ExportValue        // see comment in TypeScript's binder.ts declareModuleMember() method
        )) {
            this.logVerbose(`Skipping symbol ${Debug.symbolInfoFormatted(this.checker, symbol, exportRoot)}`);
            return;
        }

        if (symbol.flags & ts.SymbolFlags.TypeParameter) {
            let parentHaxePath: Array<string>;
            let symbolPath = TSUtil.getSymbolPath(symbol, exportRoot);
            let parent: ts.Symbol | undefined = symbolPath[symbolPath.length - 2];

            if (parent != null) {
                parentHaxePath = this.getHaxeTypePath(parent, exportRoot);
            } else {
                throw `Type parameter does not have parent symbol ${Debug.symbolInfoFormatted(this.checker, symbol, exportRoot)}` + this.errorLocation(symbol);
            }

            // get the haxe type object that corresponds to the fields owner
            let parentHaxeType = this.getHaxeType(parentHaxePath, true);

            if (parentHaxeType != null) {
                if (!parentHaxeType.contributingSymbols.has(symbol)) {
                    // @! need to properly add to type
                    parentHaxeType.haxeSyntaxObject += `\nType parameter <${symbol.name}>`;
                    parentHaxeType.contributingSymbols.add(symbol);
                }
            } else {
                throw `Type parameter's parent type "${parentHaxePath}" has not yet been created` + this.errorLocation(symbol);
            }

            symbolHandled = true;
        }

        // handle symbol type declaration
        if ((symbol.flags & ts.SymbolFlags.Type) && !(symbol.flags & ts.SymbolFlags.TypeParameter)) {
            let previouslyGeneratedType = this.getExistingHaxeType(symbol);
            let haxeTypePath = this.getHaxeTypePath(symbol, exportRoot);
            let typeName = this.typePathTypeName(haxeTypePath);

            if (typeName == null) {
                throw `No TypeName in haxe type path "${haxeTypePath}" for native symbol ${Debug.symbolInfoFormatted(this.checker, symbol, exportRoot)}`;
            }

            // generate haxe syntax object
            let haxeSyntaxObject: HaxeSyntaxObject;
            let aliasTo: HaxeType | null;

            if (previouslyGeneratedType != null) {
                previouslyGeneratedType.contributingSymbols.add(symbol);

                haxeSyntaxObject = this.generateTypedef(previouslyGeneratedType, typeName, symbol, exportRoot);
                aliasTo = previouslyGeneratedType;
            } else {
                let typeSyntaxObject = this.generateType(typeName, symbol, exportRoot);

                if (typeSyntaxObject == null) {
                    throw `Unsupported type-symbol ${Debug.symbolInfoFormatted(this.checker, symbol, exportRoot)}` + this.errorLocation(symbol);
                }

                haxeSyntaxObject = typeSyntaxObject;
                aliasTo = null;
            }

            this.addGeneratedHaxeType({
                typePath: haxeTypePath,
                haxeSyntaxObject: haxeSyntaxObject,
                contributingSymbols: new Set([symbol]),
                exportRoot: exportRoot,
                aliasTo: aliasTo,
            });

            symbolHandled = true;
        }

        // handle symbol field declaration (this will create namespace classes if required)
        if (symbol.flags & (
            ts.SymbolFlags.Constructor |
            ts.SymbolFlags.Function |
            ts.SymbolFlags.Method |
            ts.SymbolFlags.Property |
            ts.SymbolFlags.BlockScopedVariable | 
            ts.SymbolFlags.FunctionScopedVariable
        )) {
            let parentHaxePath: Array<string>;
            let symbolPath = TSUtil.getSymbolPath(symbol, exportRoot);
            let parent: ts.Symbol | undefined = symbolPath[symbolPath.length - 2];
            const globalClassName = 'Global'

            if (parent != null) {
                parentHaxePath = this.getHaxeTypePath(parent, exportRoot);
            } else {
                parentHaxePath = this.packageRoot.concat([globalClassName]);
            }
            
            // get the haxe type object that corresponds to the fields owner
            let parentHaxeType = this.getHaxeType(parentHaxePath, true);
            // if this type doesn't exist, then create it
            if (parentHaxeType == null) {
                // if this is a module field we want to create a module class
                if (symbol.flags & ts.SymbolFlags.ModuleMember) {
                    let moduleClassTypeName = this.typePathTypeName(parentHaxePath);
                    let moduleClassHaxePath = parentHaxePath;

                    if (moduleClassTypeName == null || moduleClassHaxePath.length === 0) {
                        throw (
                            `Field's enclosing module has no type name in path ${parentHaxePath}\n` +
                            `\tFor symbol ${Debug.symbolInfoFormatted(this.checker, symbol, exportRoot)}` +
                            this.errorLocation(symbol, 'prepend')
                        );
                    }

                    // generate a module class 
                    parentHaxeType = this.addGeneratedHaxeType({
                        typePath: moduleClassHaxePath,
                        haxeSyntaxObject: this.generateModuleClass(moduleClassTypeName, parent, exportRoot),
                        contributingSymbols: new Set([]),
                        exportRoot: exportRoot,
                        aliasTo: null,
                    });
                } else if (parent != null) {
                    this.logWarning(
                        `Field generated before type was generated (this is not expected to happen)\n` + 
                        `\tField: ${Debug.symbolInfoFormatted(this.checker, symbol, exportRoot)}\n` +
                        `\tParent: ${Debug.symbolInfoFormatted(this.checker, parent, exportRoot)}` +
                        this.errorLocation(symbol, 'prepend')
                    );

                    this.addSymbol(parent, exportRoot);
                    parentHaxeType = this.getHaxeType(parentHaxePath, true);
                }
            }

            if (parentHaxeType == null) {
                throw `Cannot determine where to generate field ${Debug.symbolInfoFormatted(this.checker, symbol, exportRoot)}` + this.errorLocation(symbol);
            }

            // @! add field to parentHaxeType
            if (!parentHaxeType.contributingSymbols.has(symbol)) {
                parentHaxeType.haxeSyntaxObject += '\n\t' + (symbol.flags & ts.SymbolFlags.ModuleMember ? 'static ' : '') + symbol.name;
                parentHaxeType.contributingSymbols.add(symbol);
            }

            symbolHandled = true;
        }

        // quieten symbolHandled errors for these flags
        if (symbol.flags & (
            ts.SymbolFlags.Module  // Modules (haxe packages and module classes) are created as types and fields are added so we don't need to do anything for them directly
        )) {
            symbolHandled = true;
        }

        if (!symbolHandled) {
            throw `Symbol was not handled ${Debug.symbolInfoFormatted(this.checker, symbol, exportRoot)}` + this.errorLocation(symbol);
        }
    }

    generateHaxeFiles(): {
        files: Map<string, string>,
        errors: Array<string>,
    } {
        // @! iterate haxe type paths, creating files and package directories as needed
        let haxeFiles = new Map<string, string>();
        let errors = new Array<string>();

        for (let haxeTypePathStr of this.haxeTypes.keys()) {
            let haxeType = this.haxeTypes.get(haxeTypePathStr)!;

            let packages = this.typePathPackages(haxeType.typePath);
            let moduleName = this.typePathModule(haxeType.typePath);

            if (moduleName == null) {
                let symbolsInfo = new Array<string>();
                haxeType.contributingSymbols.forEach(s => {
                    symbolsInfo.push(Debug.symbolInfoFormatted(this.checker, s, haxeType.exportRoot))
                });

                errors.push(
                    `Haxe type path "${haxeType.typePath}" has no module name and so this file was not generated` + ((symbolsInfo.length > 0) ? '\n' : '') +
                    '\t' + symbolsInfo.join('\n\t')
                );

                continue;
            }

            let filePath = path.join.apply(path.join, packages.concat([moduleName + '.hx']));

            // if file has already been generated, append type to the file (which happens in the case of sub types)
            let content = haxeFiles.get(filePath);

            if (content == null) {
                content = packages.length > 0 ? `package ${packages.join('.')};` + '\n\n' : '';
            }

            // @! should be some haxe syntax printer call here
            content += haxeType.haxeSyntaxObject + '\n';

            haxeFiles.set(filePath, content);
        }

        return {
            files: haxeFiles,
            errors: errors,
        }
    }

    protected generateType(typeName: string, symbol: ts.Symbol, exportRoot: ts.Symbol | null): HaxeSyntaxObject | null {
        // assumes symbols have mutual exclusivity between types

        // class
        if (symbol.flags & ts.SymbolFlags.Class) {
            return this.generateClass(typeName, symbol, exportRoot);
        }

        // interface
        if (symbol.flags & ts.SymbolFlags.Interface) {
            return this.generateInterface(typeName, symbol, exportRoot);
        }

        // enum
        if (symbol.flags & ts.SymbolFlags.Enum) {
            return this.generateEnum(typeName, symbol, exportRoot);
        }

        return null;
    }

    /**
     * Module classes are classes with only static fields that hold typescript-module-level members (since haxe doesn't have a notion of members not contained within a type)
     */
    protected generateModuleClass(typeName: string, moduleSymbol: ts.Symbol | undefined, exportRoot: ts.Symbol | null): HaxeSyntaxObject {
        let haxeTypePath = moduleSymbol ? this.getHaxeTypePath(moduleSymbol, exportRoot) : [typeName];
        this.logVerbose('Generating <cyan,i>module class</>', haxeTypePath.join('.'));

        // not clear yet if we need to do anything special for module classes

        let nativePath = moduleSymbol ? TSUtil.getNativePath(moduleSymbol, exportRoot) : '';

        return (
            ((nativePath != null) ? `@:native('${nativePath}')\n` : '') +
            `class ${typeName} {}`
        );
    }

    protected generateClass(typeName: string, symbol: ts.Symbol, exportRoot: ts.Symbol | null): HaxeSyntaxObject {
        let haxeTypePath = this.getHaxeTypePath(symbol, exportRoot);
        this.logVerbose('Generating <blue>class</>', haxeTypePath.join('.'));

        let nativePath = TSUtil.getNativePath(symbol, exportRoot);

        return (
            `// ${Debug.getSymbolPrintableLocation(symbol)}\n` +
            ((nativePath != null) ? `@:native('${nativePath}')\n` : '') + 
            `class ${typeName} {}`
        );
    }

    protected generateInterface(typeName: string, symbol: ts.Symbol, exportRoot: ts.Symbol | null): HaxeSyntaxObject {
        let haxeTypePath = this.getHaxeTypePath(symbol, exportRoot);
        this.logVerbose('Generating <magenta>interface</>', haxeTypePath.join('.'));

        let nativePath = TSUtil.getNativePath(symbol, exportRoot);

        return (
            `// ${Debug.getSymbolPrintableLocation(symbol)}\n` +
            ((nativePath != null) ? `@:native('${nativePath}')\n` : '') +
            `interface ${typeName} {}`
        );
    }

    protected generateEnum(typeName: string, symbol: ts.Symbol, exportRoot: ts.Symbol | null): HaxeSyntaxObject {
        let haxeTypePath = this.getHaxeTypePath(symbol, exportRoot);
        this.logVerbose('Generating <red>enum</>', haxeTypePath.join('.'));

        let nativePath = TSUtil.getNativePath(symbol, exportRoot);

        return (
            `// ${Debug.getSymbolPrintableLocation(symbol)}\n` +
            ((nativePath != null) ? `@:native('${nativePath}')\n` : '') +
            `enum ${typeName} {}`
        );
    }

    protected generateTypedef(targetType: HaxeType, typeName: string, symbol: ts.Symbol, exportRoot: ts.Symbol | null): HaxeSyntaxObject {
        // @! need to account for type parameters!
        let haxeTypePath = this.getHaxeTypePath(symbol, exportRoot);
        this.logVerbose('Generating <green>typedef</>', haxeTypePath.join('.'), `=`, targetType.typePath.join('.'));
        
        return (
            `// ${Debug.getSymbolPrintableLocation(symbol)}\n` +
            `typedef ${typeName} = ${targetType.typePath.join('.')};`
        );
    }

    protected addGeneratedHaxeType(haxeType: HaxeType) {
        let haxePath = haxeType.typePath;
        let haxePathStr = haxePath.join('.');
        if (this.haxeTypes.has(haxePathStr)) {
            // we don't replace existing types at the same path because their values get merged
        } else {
            this.haxeTypes.set(haxePath.join('.'), haxeType);
        }
        return haxeType;
    }

    protected getExistingHaxeType(symbol: ts.Symbol): HaxeType | null {
        for (let typePath of this.haxeTypes.keys()) {
            let haxeType = this.haxeTypes.get(typePath)!;
            if (haxeType.contributingSymbols.has(symbol)) {
                return haxeType;
            }
        }
        return null;
    }

    /**
     * Given a symbol with Module or Type flags, it will return the generated haxe type path
     */
    protected getHaxeTypePath(symbol: ts.Symbol, exportRoot: ts.Symbol | null): Array<string> {
        let symbolPath = TSUtil.getSymbolPath(symbol, exportRoot);
        let packages = symbolPath.slice(0, -1).map(s => {
            if ((s.flags & ts.SymbolFlags.Type) && !(s.flags & ts.SymbolFlags.Module)) {
                return this.toSafeHaxeTypeName(s.name);
            } else {
                return this.toSafePackageName(s.name);
            }
        });

        let haxeTypePath = packages.concat([this.toSafeHaxeTypeName(symbol.name)]);

        // prepend package root if it doesn't match the first package name
        // this deduplicates so we don't have import three.three.Type
        if (haxeTypePath[0] !== this.packageRoot[this.packageRoot.length - 1]) {
            return this.packageRoot.concat(haxeTypePath);
        } else {
            return haxeTypePath;
        }
    }

    /**
     * Returns a HaxeType for a given haxe type path, following typedefs if required
     */
    protected getHaxeType(haxeTypePath: Array<string>, followAliases: boolean): HaxeType | null {
        let haxeType = this.haxeTypes.get(haxeTypePath.join('.'));
        if (haxeType != null) {
            if (followAliases && haxeType.aliasTo != null) {
                return this.getHaxeType(haxeType.aliasTo.typePath, followAliases);
            } else {
                return haxeType;
            }
        } else {
            return null;
        }
    }

    protected toSafePackageName(name: string) {
        // lowercase
        name = name.toLowerCase();
        // remove quotes
        name = name.replace(/["'`]/gm, '');
        // replace disallowed characters with _
        name = name.replace(/[^0-9a-z_]/igm, '_');
        // remove any disallowed characters from the front of the name
        name = name.replace(/^[^a-z]+/i, '');

        return name;
    }

    protected toSafeHaxeTypeName(name: string) {
        // remove quotes
        name = name.replace(/["'`]/gm, '');
        // replace disallowed characters with _
        name = name.replace(/[^0-9a-z_]/igm, '_');
        // remove any disallowed characters from the front of the name
        name = name.replace(/^[^a-z]+/i, '');
        // capitalize first character
        name = name.charAt(0).toUpperCase() + name.substr(1);

        return name;
    }

    /**
     * Given a haxe type path, such as a.b.Module.SubType, this returns [a, b]
     */
    protected typePathPackages(haxeTypePath: Array<string>): Array<string> {
        let packages = new Array<string>();
        for (let p of haxeTypePath) {
            let c = p.charAt(0);
            if (c === c.toLowerCase()) {
                packages.push(p);
            } else {
                break;
            }
        }
        return packages;
    }

    /**
     * Given a haxe type path, such as a.b.Module.SubType, this returns 'Module'
     */
    protected typePathModule(haxeTypePath: Array<string>): string | null {
        for (let p of haxeTypePath) {
            let c = p.charAt(0);
            if (c === c.toUpperCase()) {
                return p;
            }
        }
        return null;
    }

    /**
     * Given a haxe type path, such as a.b.Module.SubType, this returns 'SubType'
     */
    protected typePathTypeName(haxeTypePath: Array<string>): string | null {
        let lastEntry = haxeTypePath[haxeTypePath.length - 1];
        if (lastEntry.charAt(0) === lastEntry.charAt(0).toUpperCase()) {
            return lastEntry;
        } else {
            return null;
        }
    }

    protected logVerbose(...args: Array<any>) {
        if (this.logVerboseEnabled) {
            Terminal.log.apply(Terminal, args);
        }
    }

    protected logWarning(...args: Array<any>) {
        if (this.logWarningsEnabled) {
            Terminal.warn.apply(Terminal, args);
        }
    }

    protected errorLocation(symbol: ts.Symbol, newline?: 'append' | 'prepend') {
        if (this.printErrorLocation) {
            return (
                (newline === 'prepend' ? '\n' : '') +
                ' <dim,gray,u>' + Debug.getSymbolPrintableLocation(symbol) + '</>' +
                (newline === 'append' ? '\n' : '')
            );
        } else {
            return '';
        }
    }

}