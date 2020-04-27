package three;
@:jsRequire("three", "DepthTexture") extern class DepthTexture extends Texture {
	function new(width:Float, heighht:Float, ?type:TextureDataType, ?mapping:Mapping, ?wrapS:Wrapping, ?wrapT:Wrapping, ?magFilter:TextureFilter, ?minFilter:TextureFilter, ?anisotropy:Float);
	var image : { var width : Float; var height : Float; };
}