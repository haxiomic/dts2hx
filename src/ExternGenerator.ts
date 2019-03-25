import * as ts from 'typescript';
import * as path from 'path';
import { TSUtil } from './TSUtil';
import Debug from './Debug';
import Terminal from './Terminal';

type HaxeSyntaxObject = string;

type HaxeType = {
    path: Array<string>,
    haxeSyntaxObject: HaxeSyntaxObject,
    contributingSymbols: Set<ts.Symbol>,
}

export class ExternGenerator {

    verbose: boolean = true;
    // mapping between haxe `package.Type.SubType` and haxe type descriptor
    protected haxeTypes = new Map<string, HaxeType>();

    constructor(protected checker: ts.TypeChecker) {}

    /**
     * Adds symbol to list of externs to generate
     * @throws
     */
    addSymbol(symbol: ts.Symbol, exportRoot: ts.Symbol | null) {
        // => we never generate an extern for a symbol twice, so first check if we already have an extern for this symbol, if so then typedef and exit
        // => when adding fields, we do a lookup to get the haxe symbol at the parent path and create if doesn't exist
        //    this handles type merging

        // Should we use a flat string map rather than nested objects?

        if (symbol.flags & ts.SymbolFlags.Type) {
            let previouslyGeneratedType = this.getPreviouslyGeneratedHaxeType(symbol);
            let haxeTypePath = this.getHaxeTypePath(symbol, exportRoot);
            let typeName = this.typePathTypeName(haxeTypePath);
            let nativePath = TSUtil.getNativePath(symbol, exportRoot);

            if (typeName == null) {
                throw `No TypeName in haxe type path "${haxeTypePath}" for native symbol ${Debug.symbolInfoFormatted(this.checker, symbol, exportRoot)}`;
            }

            // generate haxe syntax object
            let haxeSyntaxObject: HaxeSyntaxObject;

            if (previouslyGeneratedType != null) {
                previouslyGeneratedType.contributingSymbols.add(symbol);

                haxeSyntaxObject = this.generateTypeDef(previouslyGeneratedType, typeName, nativePath, symbol, exportRoot);
            } else {
                let typeSyntaxObject = this.generateType(typeName, nativePath, symbol, exportRoot);

                if (typeSyntaxObject == null) {
                    throw `Failed to generate type for symbol ${Debug.symbolInfoFormatted(this.checker, symbol, exportRoot)}`;
                }

                haxeSyntaxObject = typeSyntaxObject;
            }

            this.addGeneratedHaxeType({
                path: haxeTypePath,
                haxeSyntaxObject: haxeSyntaxObject,
                contributingSymbols: new Set([symbol]),
            });
        }

        if (symbol.flags & (
            ts.SymbolFlags.Function |
            ts.SymbolFlags.Property |
            ts.SymbolFlags.BlockScopedVariable | 
            ts.SymbolFlags.FunctionScopedVariable
        )) {
            let parentPath: Array<string> = [];
            let symbolPath = TSUtil.getSymbolPath(symbol, exportRoot);
            let parent = symbolPath[symbolPath.length - 2];
            if (parent != null) {
                parentPath = this.getHaxeTypePath(parent, exportRoot);
            }
            
            // get the haxe type object that corresponds to the fields owner
            let parentHaxeType = this.haxeTypes.get(parentPath.join('.'));
            // if this type doesn't exist, then create it
            if (parentHaxeType == null) {
                // if this is a module field we want to create a module class
                if (symbol.flags & ts.SymbolFlags.ModuleMember) {
                    if (this.verbose) Terminal.log('Generating <cyan>module class</>', parentPath.join('.'));
                    let typeName = parentPath.length > 0 ? parentPath[parentPath.length - 1] : 'Global';
                    parentHaxeType = this.addGeneratedHaxeType({
                        path: parentPath,
                        contributingSymbols: new Set([]),
                        haxeSyntaxObject: `package ${parentPath.slice(0, -1).join('.')};\n class ${typeName} {}`,
                    });
                } else if (parent != null) {
                    Terminal.warn(`Field generated before type <b>${parentPath}</b>`);
                    Debug.logSymbol(this.checker, symbol, exportRoot, 0);
                    Debug.logSymbol(this.checker, parent, exportRoot, 0);

                    this.addSymbol(parent, exportRoot);
                    parentHaxeType = this.haxeTypes.get(parentPath.join('.'));
                }
            }

            if (parentHaxeType == null) {
                throw `Cannot determine where to generate field ${Debug.symbolInfoFormatted(this.checker, symbol, exportRoot)}`;
            }

            // @! add field to parentHaxeType
            parentHaxeType.haxeSyntaxObject += '\n\t' + symbol.name;

            // if (this.verbose) Terminal.log('Generating <yellow>value</>', parentPath.join('.'), symbol.name);
        }
    }

    generateHaxeFiles(): Map<string, string> {
        // @! iterate haxe type paths, creating files and package directories as needed
        let haxeFiles = new Map<string, string>();

        for (let haxeTypePathStr of this.haxeTypes.keys()) {
            let haxeType = this.haxeTypes.get(haxeTypePathStr)!;

            let packages = this.typePathPackages(haxeType.path);
            let moduleName = this.typePathModule(haxeType.path);
            let filePath = path.join.apply(path.join, packages.concat([moduleName + '.hx']));


            let content = haxeFiles.get(filePath);
            if (content == null) {
                content = `package ${packages.join('.')};` + '\n';
            }

            // @! should be some haxe syntax printer call here
            content += haxeType.haxeSyntaxObject + '\n';

            haxeFiles.set(filePath, content);
        }

        return haxeFiles;
    }

    protected generateType(typeName: string, nativePath: string, symbol: ts.Symbol, exportRoot: ts.Symbol | null): HaxeSyntaxObject | null {
        // assumes mutual exclusivity between types

        // class
        if (symbol.flags & ts.SymbolFlags.Class) {
            return this.generateClass(typeName, nativePath, symbol, exportRoot);
        }

        // interface
        if (symbol.flags & ts.SymbolFlags.Interface) {
            return this.generateInterface(typeName, nativePath, symbol, exportRoot);
        }

        // enum
        if (symbol.flags & ts.SymbolFlags.Enum) {
            return this.generateEnum(typeName, nativePath, symbol, exportRoot);
        }

        return null;
    }

    protected generateClass(typeName: string, nativePath: string, symbol: ts.Symbol, exportRoot: ts.Symbol | null): HaxeSyntaxObject {
        if (this.verbose) {
            let haxeTypePath = this.getHaxeTypePath(symbol, exportRoot);
            Terminal.log('Generating <blue>class</>', haxeTypePath.join('.'));
        }

        return `@:native('${nativePath}')\nclass ${typeName} {}`
    }

    protected generateInterface(typeName: string, nativePath: string, symbol: ts.Symbol, exportRoot: ts.Symbol | null): HaxeSyntaxObject {
        if (this.verbose) {
            let haxeTypePath = this.getHaxeTypePath(symbol, exportRoot);
            Terminal.log('Generating <magenta>interface</>', haxeTypePath.join('.'));
        }

        return `@:native('${nativePath}')\ninterface ${typeName} {}`
    }

    protected generateEnum(typeName: string, nativePath: string, symbol: ts.Symbol, exportRoot: ts.Symbol | null): HaxeSyntaxObject {
        if (this.verbose) {
            let haxeTypePath = this.getHaxeTypePath(symbol, exportRoot);
            Terminal.log('Generating <red>enum</>', haxeTypePath.join('.'));
        }

        return `@:native('${nativePath}')\nenum ${typeName} {}`
    }

    protected generateTypeDef(targetType: HaxeType, typeName: string, nativePath: string, symbol: ts.Symbol, exportRoot: ts.Symbol | null): HaxeSyntaxObject {
        // @! need to account for type parameters!
        if (this.verbose) {
            let haxeTypePath = this.getHaxeTypePath(symbol, exportRoot);
            Terminal.log('Generating <green>typedef</>', haxeTypePath.join('.'), `=`, targetType.path.join('.'));
        }
        
        return `typedef ${typeName} = ${targetType.path.join('.')}`;
    }

    protected addGeneratedHaxeType(haxeType: HaxeType) {
        let haxePath = haxeType.path;
        let haxePathStr = haxePath.join('.');
        if (this.haxeTypes.has(haxePathStr)) {
            // we don't replace existing types at the same path because their values get merged
        } else {
            this.haxeTypes.set(haxePath.join('.'), haxeType);
        }
        return haxeType;
    }

    protected getPreviouslyGeneratedHaxeType(symbol: ts.Symbol): HaxeType | null {
        for (let typePath of this.haxeTypes.keys()) {
            let haxeType = this.haxeTypes.get(typePath)!;
            if (haxeType.contributingSymbols.has(symbol)) {
                return haxeType;
            }
        }

        return null;
    }

    protected getHaxeTypePath(symbol: ts.Symbol, exportRoot: ts.Symbol | null): Array<string> {
        let symbolPath = TSUtil.getSymbolPath(symbol, exportRoot);
        let packages = symbolPath.slice(0, -1).map(s => {
            if ((s.flags & ts.SymbolFlags.Type) && !(s.flags & ts.SymbolFlags.Module)) {
                return this.toHaxeTypeName(s.name);
            } else {
                return this.toPackageName(s.name);
            }
        });
        return packages.concat([this.toHaxeTypeName(symbol.name)]);
    }

    protected toPackageName(name: string) {
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

    protected toHaxeTypeName(name: string) {
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

}