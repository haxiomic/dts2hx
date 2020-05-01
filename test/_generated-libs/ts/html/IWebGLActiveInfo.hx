package ts.html;
/**
	Part of the WebGL API and represents the information returned by calling the WebGLRenderingContext.getActiveAttrib() and WebGLRenderingContext.getActiveUniform() methods.
**/
typedef IWebGLActiveInfo = {
	final name : String;
	final size : Float;
	final type : Float;
};