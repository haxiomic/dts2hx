package global.three;

@:native("THREE.WebGLRenderTarget") extern class WebGLRenderTarget extends EventDispatcher {
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
	var wrapS : Dynamic;
	var wrapT : Dynamic;
	var magFilter : Dynamic;
	var minFilter : Dynamic;
	var anisotropy : Dynamic;
	var offset : Dynamic;
	var repeat : Dynamic;
	var format : Dynamic;
	var type : Dynamic;
	var generateMipmaps : Dynamic;
	function setSize(width:Float, height:Float):Void;
	function clone():WebGLRenderTarget;
	function copy(source:WebGLRenderTarget):WebGLRenderTarget;
	function dispose():Void;
	static var prototype : WebGLRenderTarget;
}