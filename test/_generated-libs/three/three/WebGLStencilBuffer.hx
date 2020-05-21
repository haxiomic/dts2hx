package three;

@:jsRequire("three", "WebGLStencilBuffer") extern class WebGLStencilBuffer {
	function new();
	function setTest(stencilTest:Bool):Void;
	function setMask(stencilMask:Float):Void;
	function setFunc(stencilFunc:Float, stencilRef:Float, stencilMask:Float):Void;
	function setOp(stencilFail:Float, stencilZFail:Float, stencilZPass:Float):Void;
	function setLocked(lock:Bool):Void;
	function setClear(stencil:Float):Void;
	function reset():Void;
	static var prototype : WebGLStencilBuffer;
}