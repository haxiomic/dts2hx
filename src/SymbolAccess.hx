import typescript.ts.Symbol;
import haxe.ds.ReadOnlyArray;

/**
	As we traverse the symbol tree we keep track of the symbol path so we can generate runtime-access metadata like @:native and @:jsRequire
	SymbolAccess represents the complete path to a symbol (including the symbol itself and if module import is required)
**/
enum SymbolAccess {
	AmbientModule(modulePath: String, moduleSymbol: Symbol, symbolChain: haxe.ds.ReadOnlyArray<Symbol>);
	ExportModule(moduleName: String, sourceFileSymbol: Symbol, symbolChain: ReadOnlyArray<Symbol>);
	Global(symbolChain: ReadOnlyArray<Symbol>);
	Inaccessible;
}