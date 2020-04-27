package three;
@:jsRequire("three", "WebGLCapabilities") extern class WebGLCapabilities {
	function new(gl:js.html.WebGLRenderingContext, extensions:Any, parameters:WebGLCapabilitiesParameters);
	var precision : Any;
	var logarithmicDepthBuffer : Any;
	var maxTextures : Any;
	var maxVertexTextures : Any;
	var maxTextureSize : Any;
	var maxCubemapSize : Any;
	var maxAttributes : Any;
	var maxVertexUniforms : Any;
	var maxVaryings : Any;
	var maxFragmentUniforms : Any;
	var vertexTextures : Any;
	var floatFragmentTextures : Any;
	var floatVertexTextures : Any;
	function getMaxAnisotropy():Float;
	function getMaxPrecision(precision:String):String;
}