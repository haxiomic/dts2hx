package three;

@:jsRequire("three", "WebGLLights") extern class WebGLLights {
	function new(gl:js.html.webgl.RenderingContext, properties:Dynamic, info:Dynamic);
	function get(light:Dynamic):Dynamic;
	static var prototype : WebGLLights;
}