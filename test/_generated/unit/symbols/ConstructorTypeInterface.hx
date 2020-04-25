package unit.symbols;
@:jsRequire("./unit/symbols", "ConstructorTypeInterface") @:interface extern class ConstructorTypeInterface {
	function new(constructorTypeParam:std.Array<Bool>);
	var interfaceField : Float;
	@:selfCall
	static function call(callSignatureParam:Float):Void;
	static var constructorTypeField : String;
}