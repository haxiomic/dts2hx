package global.three;

@:native("THREE.Int32BufferAttribute") extern class Int32BufferAttribute extends BufferAttribute {
	function new(array:ts.AnyOf3<js.lib.ArrayBuffer, js.lib.ArrayLike<Float>, Iterable<Float, Dynamic, Dynamic>>, itemSize:Float, ?normalized:Bool);
	function clone():Int32BufferAttribute;
	function copy(source:BufferAttribute):Int32BufferAttribute;
	static var prototype : Int32BufferAttribute;
}