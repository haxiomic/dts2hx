package three;
@:jsRequire("three", "WebGLIndexedBufferRenderer") extern class WebGLIndexedBufferRenderer {
	function new(gl:ts.html.IWebGLRenderingContext, properties:Dynamic, info:Dynamic);
	function setMode(value:Dynamic):Void;
	function setIndex(index:Dynamic):Void;
	function render(start:Dynamic, count:Float):Void;
	function renderInstances(geometry:Dynamic, start:Dynamic, count:Float):Void;
}