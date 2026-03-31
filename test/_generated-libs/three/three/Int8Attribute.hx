package three;

@:jsRequire("three", "Int8Attribute") extern class Int8Attribute extends BufferAttribute {
	function new(array:Dynamic, itemSize:Float);
	static var prototype : Int8Attribute;
}