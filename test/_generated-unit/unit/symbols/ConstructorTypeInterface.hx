package unit.symbols;
@:jsRequire("./unit/symbols", "ConstructorTypeInterface") extern class ConstructorTypeInterface {
	function new(constructorTypeParam:std.Array<Bool>);
	@:selfCall
	function call(interfaceCallParam:Dynamic):Void;
	var interfaceField : Float;
	@:selfCall
	static function call_(callSignatureParam:Float):Void;
	static var constructorTypeField : String;
}