package three;

/**
	The WebGL renderer displays your beautifully crafted scenes using WebGL, if your device supports it.
	This renderer has way better performance than CanvasRenderer.
**/
@:jsRequire("three", "WebGLRenderer") extern class WebGLRenderer {
	/**
		parameters is an optional object with properties defining the renderer's behaviour. The constructor also accepts no parameters at all. In all cases, it will assume sane defaults when parameters are missing.
	**/
	function new(?parameters:WebGLRendererParameters);
	/**
		A Canvas where the renderer draws its output.
		This is automatically created by the renderer in the constructor (if not provided already); you just need to add it to your page.
	**/
	var domElement : js.html.CanvasElement;
	/**
		The HTML5 Canvas's 'webgl' context obtained from the canvas where the renderer will draw.
	**/
	var context : js.html.webgl.RenderingContext;
	/**
		Defines whether the renderer should automatically clear its output before rendering.
	**/
	var autoClear : Bool;
	/**
		If autoClear is true, defines whether the renderer should clear the color buffer. Default is true.
	**/
	var autoClearColor : Bool;
	/**
		If autoClear is true, defines whether the renderer should clear the depth buffer. Default is true.
	**/
	var autoClearDepth : Bool;
	/**
		If autoClear is true, defines whether the renderer should clear the stencil buffer. Default is true.
	**/
	var autoClearStencil : Bool;
	/**
		Debug configurations.
	**/
	var debug : WebGLDebug;
	/**
		Defines whether the renderer should sort objects. Default is true.
	**/
	var sortObjects : Bool;
	var clippingPlanes : Array<Dynamic>;
	var localClippingEnabled : Bool;
	var extensions : WebGLExtensions;
	/**
		Default is false.
	**/
	var gammaInput : Bool;
	/**
		Default is false.
	**/
	var gammaOutput : Bool;
	var physicallyCorrectLights : Bool;
	var toneMapping : ToneMapping;
	var toneMappingExposure : Float;
	var toneMappingWhitePoint : Float;
	/**
		Default is false.
	**/
	var shadowMapDebug : Bool;
	/**
		Default is 8.
	**/
	var maxMorphTargets : Float;
	/**
		Default is 4.
	**/
	var maxMorphNormals : Float;
	var info : WebGLInfo;
	var shadowMap : WebGLShadowMap;
	var pixelRation : Float;
	var capabilities : WebGLCapabilities;
	var properties : WebGLProperties;
	var renderLists : WebGLRenderLists;
	var state : WebGLState;
	var vr : WebVRManager;
	/**
		Return the WebGL context.
	**/
	function getContext():js.html.webgl.RenderingContext;
	function getContextAttributes():Dynamic;
	function forceContextLoss():Void;
	function getMaxAnisotropy():Float;
	function getPrecision():String;
	function getPixelRatio():Float;
	function setPixelRatio(value:Float):Void;
	function getDrawingBufferSize(target:Vector2):Vector2;
	function setDrawingBufferSize(width:Float, height:Float, pixelRatio:Float):Void;
	function getSize(target:Vector2):Vector2;
	/**
		Resizes the output canvas to (width, height), and also sets the viewport to fit that size, starting in (0, 0).
	**/
	function setSize(width:Float, height:Float, ?updateStyle:Bool):Void;
	function getCurrentViewport(target:Vector4):Vector4;
	/**
		Copies the viewport into target.
	**/
	function getViewport(target:Vector4):Vector4;
	/**
		Sets the viewport to render from (x, y) to (x + width, y + height).
		(x, y) is the lower-left corner of the region.
	**/
	function setViewport(x:ts.AnyOf2<Float, Vector4>, ?y:Float, ?width:Float, ?height:Float):Void;
	/**
		Copies the scissor area into target.
	**/
	function getScissor(target:Vector4):Vector4;
	/**
		Sets the scissor area from (x, y) to (x + width, y + height).
	**/
	function setScissor(x:ts.AnyOf2<Float, Vector4>, ?y:Float, ?width:Float, ?height:Float):Void;
	/**
		Returns true if scissor test is enabled; returns false otherwise.
	**/
	function getScissorTest():Bool;
	/**
		Enable the scissor test. When this is enabled, only the pixels within the defined scissor area will be affected by further renderer actions.
	**/
	function setScissorTest(enable:Bool):Void;
	/**
		Returns a THREE.Color instance with the current clear color.
	**/
	function getClearColor():Color;
	/**
		Sets the clear color, using color for the color and alpha for the opacity.
	**/
	@:overload(function(color:String, ?alpha:Float):Void { })
	@:overload(function(color:Float, ?alpha:Float):Void { })
	function setClearColor(color:Color, ?alpha:Float):Void;
	/**
		Returns a float with the current clear alpha. Ranges from 0 to 1.
	**/
	function getClearAlpha():Float;
	function setClearAlpha(alpha:Float):Void;
	/**
		Tells the renderer to clear its color, depth or stencil drawing buffer(s).
		Arguments default to true
	**/
	function clear(?color:Bool, ?depth:Bool, ?stencil:Bool):Void;
	function clearColor():Void;
	function clearDepth():Void;
	function clearStencil():Void;
	function clearTarget(renderTarget:WebGLRenderTarget, color:Bool, depth:Bool, stencil:Bool):Void;
	function resetGLState():Void;
	function dispose():Void;
	/**
		Tells the shadow map plugin to update using the passed scene and camera parameters.
	**/
	function renderBufferImmediate(object:Object3D, program:Dynamic, material:Material):Void;
	function renderBufferDirect(camera:Camera, fog:Fog, geometry:ts.AnyOf2<Geometry, BufferGeometry>, material:Material, object:Object3D, geometryGroup:Dynamic):Void;
	/**
		A build in function that can be used instead of requestAnimationFrame. For WebVR projects this function must be used.
	**/
	function setAnimationLoop(callback:haxe.Constraints.Function):Void;
	function animate(callback:haxe.Constraints.Function):Void;
	/**
		Compiles all materials in the scene with the camera. This is useful to precompile shaders before the first rendering.
	**/
	function compile(scene:Scene, camera:Camera):Void;
	/**
		Render a scene using a camera.
		The render is done to a previously specified {@link WebGLRenderTarget#renderTarget .renderTarget} set by calling
		{@link WebGLRenderer#setRenderTarget .setRenderTarget} or to the canvas as usual.
		
		By default render buffers are cleared before rendering but you can prevent this by setting the property
		{@link WebGLRenderer#autoClear autoClear} to false. If you want to prevent only certain buffers being cleared
		you can set either the {@link WebGLRenderer#autoClearColor autoClearColor},
		{@link WebGLRenderer#autoClearStencil autoClearStencil} or {@link WebGLRenderer#autoClearDepth autoClearDepth}
		properties to false. To forcibly clear one ore more buffers call {@link WebGLRenderer#clear .clear}.
	**/
	function render(scene:Scene, camera:Camera):Void;
	/**
		Returns the current active cube face.
	**/
	function getActiveCubeFace():Float;
	/**
		Returns the current active mipmap level.
	**/
	function getActiveMipmapLevel():Float;
	/**
		Returns the current render target. If no render target is set, null is returned.
	**/
	function getRenderTarget():Null<RenderTarget>;
	function getCurrentRenderTarget():Null<RenderTarget>;
	/**
		Sets the active render target.
	**/
	function setRenderTarget(renderTarget:Null<RenderTarget>, ?activeCubeFace:Float, ?activeMipmapLevel:Float):Void;
	function readRenderTargetPixels(renderTarget:RenderTarget, x:Float, y:Float, width:Float, height:Float, buffer:Dynamic, ?activeCubeFaceIndex:Float):Void;
	var gammaFactor : Float;
	var shadowMapEnabled : Bool;
	var shadowMapType : ShadowMapType;
	var shadowMapCullFace : CullFace;
	function supportsFloatTextures():Dynamic;
	function supportsHalfFloatTextures():Dynamic;
	function supportsStandardDerivatives():Dynamic;
	function supportsCompressedTextureS3TC():Dynamic;
	function supportsCompressedTexturePVRTC():Dynamic;
	function supportsBlendMinMax():Dynamic;
	function supportsVertexTextures():Dynamic;
	function supportsInstancedArrays():Dynamic;
	function enableScissorTest(boolean:Dynamic):Dynamic;
	static var prototype : WebGLRenderer;
}