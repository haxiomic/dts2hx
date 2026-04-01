package three;

@:jsRequire("three", "WebGLMultisampleRenderTarget") extern class WebGLMultisampleRenderTarget extends WebGLRenderTarget {
	function new(width:Float, height:Float, ?options:WebGLRenderTargetOptions);
	function clone():WebGLMultisampleRenderTarget;
	function copy(source:WebGLRenderTarget):WebGLMultisampleRenderTarget;
	static var prototype : WebGLMultisampleRenderTarget;
}