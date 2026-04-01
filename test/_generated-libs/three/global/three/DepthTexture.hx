package global.three;

@:native("THREE.DepthTexture") extern class DepthTexture extends Texture {
	function new(width:Float, heighht:Float, ?type:TextureDataType, ?mapping:Mapping, ?wrapS:Wrapping, ?wrapT:Wrapping, ?magFilter:TextureFilter, ?minFilter:TextureFilter, ?anisotropy:Float);
	function clone():DepthTexture;
	function copy(source:Texture):DepthTexture;
	static var prototype : DepthTexture;
}