package global.three;

typedef WebGLRendererParameters = {
	/**
		A Canvas where the renderer draws its output.
	**/
	@:optional
	var canvas : js.html.CanvasElement;
	/**
		A WebGL Rendering Context.
		(https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext)
		Default is null
	**/
	@:optional
	var context : js.html.webgl.RenderingContext;
	/**
		shader precision. Can be "highp", "mediump" or "lowp".
	**/
	@:optional
	var precision : String;
	/**
		default is true.
	**/
	@:optional
	var alpha : Bool;
	/**
		default is true.
	**/
	@:optional
	var premultipliedAlpha : Bool;
	/**
		default is false.
	**/
	@:optional
	var antialias : Bool;
	/**
		default is true.
	**/
	@:optional
	var stencil : Bool;
	/**
		default is false.
	**/
	@:optional
	var preserveDrawingBuffer : Bool;
	/**
		Can be "high-performance", "low-power" or "default"
	**/
	@:optional
	var powerPreference : String;
	/**
		default is true.
	**/
	@:optional
	var depth : Bool;
	/**
		default is false.
	**/
	@:optional
	var logarithmicDepthBuffer : Bool;
};