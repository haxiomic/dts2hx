package unit.symbols;

@:jsRequire("./unit/symbols", "ConstructorTypeClassAlias") @:forward @:forwardStatics extern abstract ConstructorTypeClassAlias(ExampleClass) from ExampleClass to ExampleClass {
	function new(constructorTypeParam:Array<Bool>);
	@:selfCall
	static function call(constructorTypeCallParam:Float):Void;
	static var prototype : ExampleClass;
	static var constructorTypeField : String;
}