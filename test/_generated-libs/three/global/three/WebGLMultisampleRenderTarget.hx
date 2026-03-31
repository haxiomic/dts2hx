package global.three;

@:native("THREE.WebGLMultisampleRenderTarget") extern class WebGLMultisampleRenderTarget extends WebGLRenderTarget {
	function new(width:Float, height:Float, ?options:WebGLRenderTargetOptions);
	static var prototype : WebGLMultisampleRenderTarget;
}