package three;

@:jsRequire("three", "Uint32Attribute") extern class Uint32Attribute extends BufferAttribute {
	function new(array:Dynamic, itemSize:Float);
	function clone():Uint32Attribute;
	function copy(source:BufferAttribute):Uint32Attribute;
	static var prototype : Uint32Attribute;
}