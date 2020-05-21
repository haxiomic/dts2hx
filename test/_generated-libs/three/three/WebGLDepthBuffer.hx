package three;

@:jsRequire("three", "WebGLDepthBuffer") extern class WebGLDepthBuffer {
	function new();
	function setTest(depthTest:Bool):Void;
	function setMask(depthMask:Bool):Void;
	function setFunc(depthFunc:DepthModes):Void;
	function setLocked(lock:Bool):Void;
	function setClear(depth:Float):Void;
	function reset():Void;
	static var prototype : WebGLDepthBuffer;
}