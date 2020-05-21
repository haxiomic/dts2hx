package three;

@:jsRequire("three", "Int32Attribute") extern class Int32Attribute extends BufferAttribute {
	function new(array:Dynamic, itemSize:Float);
	function clone():Int32Attribute;
	function copy(source:BufferAttribute):Int32Attribute;
	static var prototype : Int32Attribute;
}