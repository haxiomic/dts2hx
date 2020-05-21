package three;

@:jsRequire("three", "WebGLShader") extern class WebGLShader {
	function new(gl:Dynamic, type:String, string:String);
	static var prototype : WebGLShader;
}