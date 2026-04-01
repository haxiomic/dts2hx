package unit.symbols;

@:jsRequire("./unit/symbols", "ConstructorTypeAnon") @:forward @:forwardStatics extern abstract ConstructorTypeAnon({ var anonTypeField : Float; }) from { var anonTypeField : Float; } to { var anonTypeField : Float; } {
	function new();
	@:selfCall
	static function call(constructorTypeCallParam:Float):Void;
	static var prototype : ConstructorTypeAnon;
	static var constructorTypeField : String;
}