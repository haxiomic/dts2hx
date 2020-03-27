import haxe.macro.Expr.TypeDefinition;

typedef HaxeModule = TypeDefinition & {
	subTypes: Array<TypeDefinition>,
}