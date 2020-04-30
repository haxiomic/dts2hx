package three;
@:jsRequire("three", "WebGLTextures") extern class WebGLTextures {
	function new(gl:Any, extensions:Any, state:Any, properties:Any, capabilities:Any, paramThreeToGL:ts.lib.IFunction, info:Any);
	function setTexture2D(texture:Any, slot:Float):Void;
	function setTextureCube(texture:Any, slot:Float):Void;
	function setTextureCubeDynamic(texture:Any, slot:Float):Void;
	function setupRenderTarget(renderTarget:Any):Void;
	function updateRenderTargetMipmap(renderTarget:Any):Void;
}