package three;
@:jsRequire("three", "WebGLObjects") extern class WebGLObjects {
	function new(gl:ts.html.IWebGLRenderingContext, properties:Any, info:Any);
	function getAttributeBuffer(attribute:Any):Any;
	function getWireframeAttribute(geometry:Any):Any;
	function update(object:Any):Void;
}