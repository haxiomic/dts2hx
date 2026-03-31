package three;

@:jsRequire("three", "Float64Attribute") extern class Float64Attribute extends BufferAttribute {
	function new(array:Dynamic, itemSize:Float);
	static var prototype : Float64Attribute;
}