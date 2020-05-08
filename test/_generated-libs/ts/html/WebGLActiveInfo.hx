package ts.html;
/**
	Part of the WebGL API and represents the information returned by calling the WebGLRenderingContext.getActiveAttrib() and WebGLRenderingContext.getActiveUniform() methods.
**/
@:native("WebGLActiveInfo") extern class WebGLActiveInfo {
	function new();
	final name : String;
	final size : Float;
	final type : Float;
	static var prototype : WebGLActiveInfo;
}