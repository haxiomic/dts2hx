package global.three;

@:native("THREE.WebGLTextures") extern class WebGLTextures {
	function new(gl:Dynamic, extensions:Dynamic, state:Dynamic, properties:Dynamic, capabilities:Dynamic, paramThreeToGL:haxe.Constraints.Function, info:Dynamic);
	function setTexture2D(texture:Dynamic, slot:Float):Void;
	function setTextureCube(texture:Dynamic, slot:Float):Void;
	function setTextureCubeDynamic(texture:Dynamic, slot:Float):Void;
	function setupRenderTarget(renderTarget:Dynamic):Void;
	function updateRenderTargetMipmap(renderTarget:Dynamic):Void;
	static var prototype : WebGLTextures;
}