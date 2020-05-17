package three;

typedef WebGLRenderTargetOptions = {
	@:optional
	var wrapS : Wrapping;
	@:optional
	var wrapT : Wrapping;
	@:optional
	var magFilter : TextureFilter;
	@:optional
	var minFilter : TextureFilter;
	@:optional
	var format : Float;
	@:optional
	var type : TextureDataType;
	@:optional
	var anisotropy : Float;
	@:optional
	var depthBuffer : Bool;
	@:optional
	var stencilBuffer : Bool;
	@:optional
	var generateMipmaps : Bool;
};