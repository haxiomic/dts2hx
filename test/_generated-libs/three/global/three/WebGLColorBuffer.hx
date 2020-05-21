package global.three;

@:native("THREE.WebGLColorBuffer") extern class WebGLColorBuffer {
	function new();
	function setMask(colorMask:Bool):Void;
	function setLocked(lock:Bool):Void;
	function setClear(r:Float, g:Float, b:Float, a:Float, premultipliedAlpha:Bool):Void;
	function reset():Void;
	static var prototype : WebGLColorBuffer;
}