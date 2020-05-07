package three;
@:jsRequire("three", "WebGLCapabilities") extern class WebGLCapabilities {
	function new(gl:ts.html.WebGLRenderingContext, extensions:Dynamic, parameters:WebGLCapabilitiesParameters);
	var precision : Dynamic;
	var logarithmicDepthBuffer : Dynamic;
	var maxTextures : Dynamic;
	var maxVertexTextures : Dynamic;
	var maxTextureSize : Dynamic;
	var maxCubemapSize : Dynamic;
	var maxAttributes : Dynamic;
	var maxVertexUniforms : Dynamic;
	var maxVaryings : Dynamic;
	var maxFragmentUniforms : Dynamic;
	var vertexTextures : Dynamic;
	var floatFragmentTextures : Dynamic;
	var floatVertexTextures : Dynamic;
	function getMaxAnisotropy():Float;
	function getMaxPrecision(precision:String):String;
}