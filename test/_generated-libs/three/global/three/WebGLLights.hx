package global.three;

@:native("THREE.WebGLLights") extern class WebGLLights {
	function new(gl:js.html.webgl.RenderingContext, properties:Dynamic, info:Dynamic);
	function get(light:Dynamic):Dynamic;
	static var prototype : WebGLLights;
}