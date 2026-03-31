package global.three;

@:native("THREE.Uint8Attribute") extern class Uint8Attribute extends BufferAttribute {
	function new(array:Dynamic, itemSize:Float);
	static var prototype : Uint8Attribute;
}