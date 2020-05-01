package three;
@:jsRequire("three", "WebGLObjects") extern class WebGLObjects {
	function new(gl:ts.html.IWebGLRenderingContext, properties:Dynamic, info:Dynamic);
	function getAttributeBuffer(attribute:Dynamic):Dynamic;
	function getWireframeAttribute(geometry:Dynamic):Dynamic;
	function update(object:Dynamic):Void;
}