package three;

@:jsRequire("three", "WebGLIndexedBufferRenderer") extern class WebGLIndexedBufferRenderer {
	function new(gl:js.html.webgl.RenderingContext, properties:Dynamic, info:Dynamic);
	function setMode(value:Dynamic):Void;
	function setIndex(index:Dynamic):Void;
	function render(start:Dynamic, count:Float):Void;
	function renderInstances(geometry:Dynamic, start:Dynamic, count:Float):Void;
	static var prototype : WebGLIndexedBufferRenderer;
}