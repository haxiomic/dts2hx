package three;
@:jsRequire("three", "WebGLIndexedBufferRenderer") extern class WebGLIndexedBufferRenderer {
	function new(gl:js.html.IWebGLRenderingContext, properties:Any, info:Any);
	function setMode(value:Any):Void;
	function setIndex(index:Any):Void;
	function render(start:Any, count:Float):Void;
	function renderInstances(geometry:Any, start:Any, count:Float):Void;
}