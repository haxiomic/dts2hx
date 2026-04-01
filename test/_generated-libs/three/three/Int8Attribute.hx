package three;

@:jsRequire("three", "Int8Attribute") extern class Int8Attribute extends BufferAttribute {
	function new(array:Dynamic, itemSize:Float);
	function clone():Int8Attribute;
	function copy(source:BufferAttribute):Int8Attribute;
	static var prototype : Int8Attribute;
}