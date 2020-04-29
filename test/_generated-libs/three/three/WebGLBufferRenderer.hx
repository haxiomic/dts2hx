package three;
@:jsRequire("three", "WebGLBufferRenderer") extern class WebGLBufferRenderer {
	function new(_gl:js.html.IWebGLRenderingContext, extensions:Any, _infoRender:Any);
	function setMode(value:Any):Void;
	function render(start:Any, count:Float):Void;
	function renderInstances(geometry:Any):Void;
}