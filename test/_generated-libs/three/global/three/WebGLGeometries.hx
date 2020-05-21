package global.three;

@:native("THREE.WebGLGeometries") extern class WebGLGeometries {
	function new(gl:js.html.webgl.RenderingContext, extensions:Dynamic, _infoRender:Dynamic);
	function get(object:Dynamic):Dynamic;
	static var prototype : WebGLGeometries;
}