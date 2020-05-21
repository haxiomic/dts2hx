package three;

@:jsRequire("three", "InterleavedBufferAttribute") extern class InterleavedBufferAttribute {
	function new(interleavedBuffer:InterleavedBuffer, itemSize:Float, offset:Float, ?normalized:Bool);
	var uuid : String;
	var data : InterleavedBuffer;
	var itemSize : Float;
	var offset : Float;
	var count : Float;
	var normalized : Bool;
	var array : Array<Dynamic>;
	function getX(index:Float):Float;
	function setX(index:Float, x:Float):InterleavedBufferAttribute;
	function getY(index:Float):Float;
	function setY(index:Float, y:Float):InterleavedBufferAttribute;
	function getZ(index:Float):Float;
	function setZ(index:Float, z:Float):InterleavedBufferAttribute;
	function getW(index:Float):Float;
	function setW(index:Float, z:Float):InterleavedBufferAttribute;
	function setXY(index:Float, x:Float, y:Float):InterleavedBufferAttribute;
	function setXYZ(index:Float, x:Float, y:Float, z:Float):InterleavedBufferAttribute;
	function setXYZW(index:Float, x:Float, y:Float, z:Float, w:Float):InterleavedBufferAttribute;
	var length : Float;
	static var prototype : InterleavedBufferAttribute;
}