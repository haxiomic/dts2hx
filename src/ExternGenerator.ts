import * as ts from 'typescript';
import { TSUtil } from './TSUtil';
import Debug from './Debug';
import Terminal from './Terminal';

// alternate form
type HaxeType = {
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

            if (previouslyGeneratedType != null) {
                let haxePath = this.getHaxeTypePath(symbol, exportRoot);
                if (this.verbose) Terminal.log('Generating <green>typedef</>', nativePath, haxePath);
            } else {
                // generate class
                // if (symbol.flags & ts.SymbolFlags.Class) {
                    let haxePath = this.getHaxeTypePath(symbol, exportRoot);
                    if (this.verbose) Terminal.log('Generating <blue>type</>', haxePath);
                // }
            }
        }

        if (symbol.flags & (
            ts.SymbolFlags.Function |
            ts.SymbolFlags.Property |
            ts.SymbolFlags.BlockScopedVariable | 
            ts.SymbolFlags.FunctionScopedVariable
        )) {
            let haxePath = '<global>';
            let symbolPath = TSUtil.getSymbolPath(symbol, exportRoot);
            let parent = symbolPath[symbolPath.length - 2];
            if (parent != null) {
                haxePath = this.getHaxeTypePath(parent, exportRoot);
            }
            // if (this.verbose) Terminal.log('Generating <yellow>value</>', haxePath, symbol.name);
        }
    }

    generateFiles() {
        // @! iterate haxe type paths, creating files and package directories as needed
    }

    getPreviouslyGeneratedHaxeType(symbol: ts.Symbol): HaxeType | null {
        for (let typePath of this.haxeTypes.keys()) {
            let haxeType = this.haxeTypes.get(typePath);
            if (haxeType != null && haxeType.contributingSymbols.has(symbol)) {
                return haxeType;
            }
        }

        return null;
    }

    getHaxeTypePath(symbol: ts.Symbol, exportRoot: ts.Symbol | null): string {
        let symbolPath = TSUtil.getSymbolPath(symbol, exportRoot);
        let packages = symbolPath.slice(0, -1).map(s => {
            if ((s.flags & ts.SymbolFlags.Type) && !(s.flags & ts.SymbolFlags.Module)) {
                return this.toHaxeTypeName(s.name);
            } else {
                return this.toPackageName(s.name);
            }
        });
        return packages.concat([this.toHaxeTypeName(symbol.name)]).join('.');
    }

    toPackageName(name: string) {
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

    toHaxeTypeName(name: String) {
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

}