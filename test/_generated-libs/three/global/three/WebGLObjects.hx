package global.three;

@:native("THREE.WebGLObjects") extern class WebGLObjects {
	function new(gl:js.html.webgl.RenderingContext, properties:Dynamic, info:Dynamic);
	function getAttributeBuffer(attribute:Dynamic):Dynamic;
	function getWireframeAttribute(geometry:Dynamic):Dynamic;
	function update(object:Dynamic):Void;
	static var prototype : WebGLObjects;
}