package ts.html;
/**
	Part of the WebGL API and represents the information returned by calling the WebGLRenderingContext.getShaderPrecisionFormat() method.
**/
extern typedef IWebGLShaderPrecisionFormat = {
	final precision : Float;
	final rangeMax : Float;
	final rangeMin : Float;
};