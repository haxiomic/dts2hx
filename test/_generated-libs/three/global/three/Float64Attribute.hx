package global.three;

@:native("THREE.Float64Attribute") extern class Float64Attribute extends BufferAttribute {
	function new(array:Dynamic, itemSize:Float);
	static var prototype : Float64Attribute;
}