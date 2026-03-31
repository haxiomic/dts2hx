package three;

@:jsRequire("three", "Int32Attribute") extern class Int32Attribute extends BufferAttribute {
	function new(array:Dynamic, itemSize:Float);
	static var prototype : Int32Attribute;
}