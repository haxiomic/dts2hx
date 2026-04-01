package three;

@:jsRequire("three", "WebGLRenderTargetCube") extern class WebGLRenderTargetCube extends WebGLRenderTarget {
	function new(width:Float, height:Float, ?options:WebGLRenderTargetOptions);
	function clone():WebGLRenderTargetCube;
	function copy(source:WebGLRenderTarget):WebGLRenderTargetCube;
	static var prototype : WebGLRenderTargetCube;
}