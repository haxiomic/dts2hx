import * as ts from 'typescript';
import * as path from 'path';
import { TSUtil } from './TSUtil';
import Debug from './Debug';
import Terminal from './Terminal';

type HaxeType = {
    path: Array<string>,
    haxeSyntaxObject: any,
    contributingSymbols: Set<ts.Symbol>,
}

export class ExternGenerator {

    verbose: boolean = true;
    // mapping between haxe `package.Type.SubType` and haxe type descriptor
    protected haxeTypes = new Map<string, HaxeType>();

    constructor(protected checker: ts.TypeChecker) {

    }

    generateExternsForSymbol(symbol: ts.Symbol, exportRoot: ts.Symbol | null) {
        // => we never generate an extern for a symbol twice, so first check if we already have an extern for this symbol, if so then typedef and exit
        // => when adding fields, we do a lookup to get the haxe symbol at the parent path and create if doesn't exist
        //    this handles type merging

        // Should we use a flat string map rather than nested objects?

        let symbolPath = TSUtil.getSymbolPath(symbol, exportRoot);
        let nativePath = TSUtil.getNativePath(symbol, exportRoot);

        if (symbol.flags & ts.SymbolFlags.Type) {
            let previouslyGeneratedType = this.getPreviouslyGeneratedHaxeType(symbol);
            let haxePath = this.getHaxeTypePath(symbol, exportRoot);
            let typeName = haxePath[haxePath.length - 1];

            if (previouslyGeneratedType != null) {
                if (this.verbose) Terminal.log('Generating <green>typedef</>', haxePath.join('.'), `=`, previouslyGeneratedType.path.join('.'));
                previouslyGeneratedType.contributingSymbols.add(symbol);

                this.addGeneratedHaxeType({
                    path: haxePath,
                    haxeSyntaxObject: `typedef ${typeName} = ${previouslyGeneratedType.path.join('.')}`,
                    contributingSymbols: new Set([symbol]),
                });
            } else {
                // generate class
                if (symbol.flags & ts.SymbolFlags.Class) {
                    if (this.verbose) Terminal.log('Generating <blue>class</>', haxePath.join('.'));

                    this.addGeneratedHaxeType({
                        path: haxePath,
                        haxeSyntaxObject: `package ${haxePath.slice(0, -1).join('.')};\n @:native('${nativePath}')\nclass ${typeName} {}`,
                        contributingSymbols: new Set([symbol]),
                    });
                }

                // generate interface
                if (symbol.flags & ts.SymbolFlags.Interface) {
                    if (this.verbose) Terminal.log('Generating <magenta>interface</>', haxePath.join('.'));

                    this.addGeneratedHaxeType({
                        path: haxePath,
                        haxeSyntaxObject: `package ${haxePath.slice(0, -1).join('.')};\n interface ${typeName} {}`,
                        contributingSymbols: new Set([symbol]),
                    });
                }

                // enum
                if (symbol.flags & ts.SymbolFlags.Enum) {
                    if (this.verbose) Terminal.log('Generating <red>enum</>', haxePath.join('.'));

                    this.addGeneratedHaxeType({
                        path: haxePath,
                        haxeSyntaxObject: `package ${haxePath.slice(0, -1).join('.')};\n @:native('${nativePath}')\nenum ${typeName} {}`,
                        contributingSymbols: new Set([symbol]),
                    });
                }
            }
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

                    this.generateExternsForSymbol(parent, exportRoot);
                    parentHaxeType = this.haxeTypes.get(parentPath.join('.'));
                }
            }

            if (parentHaxeType == null) {
                Terminal.error(`Cannot determine where to generate field <b>${symbolPath.join('.')}</b>`);
                return;
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
                content = '';
            }

            // @! should be some haxe syntax printer call here
            content += haxeType.haxeSyntaxObject + '\n';

            haxeFiles.set(filePath, content);
        }

        return haxeFiles;
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

}