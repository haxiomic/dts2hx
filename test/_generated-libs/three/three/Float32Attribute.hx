package three;

@:jsRequire("three", "Float32Attribute") extern class Float32Attribute extends BufferAttribute {
	function new(array:Dynamic, itemSize:Float);
	static var prototype : Float32Attribute;
}