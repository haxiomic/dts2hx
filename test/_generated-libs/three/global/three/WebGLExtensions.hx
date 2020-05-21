package global.three;

@:native("THREE.WebGLExtensions") extern class WebGLExtensions {
	function new(gl:js.html.webgl.RenderingContext);
	function get(name:String):Dynamic;
	static var prototype : WebGLExtensions;
}