package js.html;
/**
	The WebGLShader is part of the WebGL API and can either be a vertex or a fragment shader. A WebGLProgram requires both types of shaders.
**/
@:native("WebGLShader") extern class WebGLShader {
	function new();
	static var prototype : IWebGLShader;
}