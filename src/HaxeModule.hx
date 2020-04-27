typedef HaxeModule = ConvertedTypeDefinition;

typedef ConvertedTypeDefinition = haxe.macro.Expr.TypeDefinition & {
	tsSymbol: Null<typescript.ts.Symbol>,
	tsSymbolAccess: Null<SymbolAccess>,
}