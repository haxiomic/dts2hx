package three;

@:jsRequire("three", "BufferAttribute") extern class BufferAttribute {
	function new(array:js.lib.ArrayLike<Float>, itemSize:Float, ?normalized:Bool);
	var name : String;
	var array : js.lib.ArrayLike<Float>;
	var itemSize : Float;
	@:native("dynamic")
	var dynamic_ : Bool;
	var updateRange : {
		var offset : Float;
		var count : Float;
	};
	var version : Float;
	var normalized : Bool;
	var needsUpdate : Bool;
	var count : Float;
	var onUpload : haxe.Constraints.Function;
	function setArray(?array:js.lib.ArrayBufferView):Void;
	function setDynamic(dynamic_:Bool):BufferAttribute;
	function clone():BufferAttribute;
	function copy(source:BufferAttribute):BufferAttribute;
	function copyAt(index1:Float, attribute:BufferAttribute, index2:Float):BufferAttribute;
	function copyArray(array:js.lib.ArrayLike<Float>):BufferAttribute;
	function copyColorsArray(colors:Array<{ var r : Float; var g : Float; var b : Float; }>):BufferAttribute;
	function copyVector2sArray(vectors:Array<{ var x : Float; var y : Float; }>):BufferAttribute;
	function copyVector3sArray(vectors:Array<{ var x : Float; var y : Float; var z : Float; }>):BufferAttribute;
	function copyVector4sArray(vectors:Array<{ var x : Float; var y : Float; var z : Float; var w : Float; }>):BufferAttribute;
	function set(value:ts.AnyOf2<js.lib.ArrayBufferView, js.lib.ArrayLike<Float>>, ?offset:Float):BufferAttribute;
	function getX(index:Float):Float;
	function setX(index:Float, x:Float):BufferAttribute;
	function getY(index:Float):Float;
	function setY(index:Float, y:Float):BufferAttribute;
	function getZ(index:Float):Float;
	function setZ(index:Float, z:Float):BufferAttribute;
	function getW(index:Float):Float;
	function setW(index:Float, z:Float):BufferAttribute;
	function setXY(index:Float, x:Float, y:Float):BufferAttribute;
	function setXYZ(index:Float, x:Float, y:Float, z:Float):BufferAttribute;
	function setXYZW(index:Float, x:Float, y:Float, z:Float, w:Float):BufferAttribute;
	var length : Float;
	static var prototype : BufferAttribute;
}