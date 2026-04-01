package three;

@:jsRequire("three", "Uint16Attribute") extern class Uint16Attribute extends BufferAttribute {
	function new(array:Dynamic, itemSize:Float);
	function clone():Uint16Attribute;
	function copy(source:BufferAttribute):Uint16Attribute;
	static var prototype : Uint16Attribute;
}