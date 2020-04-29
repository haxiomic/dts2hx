package three;
@:jsRequire("three", "InstancedInterleavedBuffer") extern class InstancedInterleavedBuffer {
	function new(array:js.lib.ArrayLike<Float>, stride:Float, ?meshPerAttribute:Float);
	var meshPerAttribute : Float;
	var array : js.lib.ArrayLike<Float>;
	var stride : Float;
	@:native("dynamic")
	var dynamic_ : Bool;
	var updateRange : {
		var offset : Float;
		var count : Float;
	};
	var version : Float;
	var length : Float;
	var count : Float;
	var needsUpdate : Bool;
	function setArray(?array:js.lib.ArrayBufferView):Void;
	function setDynamic(dynamic_:Bool):InterleavedBuffer;
	function clone():InstancedInterleavedBuffer;
	function copy(source:InterleavedBuffer):InstancedInterleavedBuffer;
	function copyAt(index1:Float, attribute:InterleavedBufferAttribute, index2:Float):InterleavedBuffer;
	function set(value:js.lib.ArrayLike<Float>, index:Float):InterleavedBuffer;
}