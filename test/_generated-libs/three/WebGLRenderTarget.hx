package three;
@:jsRequire("three", "WebGLRenderTarget") extern class WebGLRenderTarget extends EventDispatcher {
	function new(width:Float, height:Float, ?options:WebGLRenderTargetOptions);
	var uuid : String;
	var width : Float;
	var height : Float;
	var scissor : Vector4;
	var scissorTest : Bool;
	var viewport : Vector4;
	var texture : Texture;
	var depthBuffer : Bool;
	var stencilBuffer : Bool;
	var depthTexture : Texture;
	var wrapS : Any;
	var wrapT : Any;
	var magFilter : Any;
	var minFilter : Any;
	var anisotropy : Any;
	var offset : Any;
	var repeat : Any;
	var format : Any;
	var type : Any;
	var generateMipmaps : Any;
	function setSize(width:Float, height:Float):Void;
	function clone():WebGLRenderTarget;
	function copy(source:WebGLRenderTarget):WebGLRenderTarget;
	function dispose():Void;
}