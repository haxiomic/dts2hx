package three;

@:jsRequire("three", "WebGLBufferRenderer") extern class WebGLBufferRenderer {
	function new(_gl:js.html.webgl.RenderingContext, extensions:Dynamic, _infoRender:Dynamic);
	function setMode(value:Dynamic):Void;
	function render(start:Dynamic, count:Float):Void;
	function renderInstances(geometry:Dynamic):Void;
	static var prototype : WebGLBufferRenderer;
}