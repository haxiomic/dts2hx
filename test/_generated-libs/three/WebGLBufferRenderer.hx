package three;
@:jsRequire("three", "WebGLBufferRenderer") extern class WebGLBufferRenderer {
	function new(_gl:ts.html.WebGLRenderingContext, extensions:Dynamic, _infoRender:Dynamic);
	function setMode(value:Dynamic):Void;
	function render(start:Dynamic, count:Float):Void;
	function renderInstances(geometry:Dynamic):Void;
}