import * as ts from 'typescript';

export class TSUtil {

    static getSymbolPath(symbol: ts.Symbol, exportRoot: ts.Symbol | null): Array<ts.Symbol> {
        if (symbol === exportRoot) {
            return [symbol];
        }

        if (this.isSourceFileModuleSymbol(symbol)) {
            if (exportRoot != null) {
                return [exportRoot];
            } else {
                return [];
            }
        } else {
            if (symbol.parent != null) {
                return this.getSymbolPath(symbol.parent, exportRoot).concat([symbol]);
            } else {
                if (exportRoot != null) {
                    return [exportRoot, symbol];
                } else {
                    return [symbol];
                }
            }
        }
    }

    static getNativePath(symbol: ts.Symbol, exportRoot: ts.Symbol | null): string {
        return this.getSymbolPath(symbol, exportRoot).map(s => s.name).join('.');
    }

    static isSourceFileModuleSymbol(symbol: ts.Symbol): boolean {
        if (symbol.declarations == null) {
            return false;
        }
        return symbol.declarations.some(d => d.kind === ts.SyntaxKind.SourceFile);
    }

    static isExternalModuleSymbol(moduleSymbol: ts.Symbol): boolean {
        return !!(moduleSymbol.flags & ts.SymbolFlags.Module) && moduleSymbol.name.charCodeAt(0) === '"'.charCodeAt(0);
    }

}