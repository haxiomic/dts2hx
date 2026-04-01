package global.three;

@:native("THREE.WebGLState") extern class WebGLState {
	function new(gl:js.html.webgl.RenderingContext, extensions:WebGLExtensions, utils:Dynamic, capabilities:WebGLCapabilities);
	var buffers : {
		var color : WebGLColorBuffer;
		var depth : WebGLDepthBuffer;
		var stencil : WebGLStencilBuffer;
	};
	function initAttributes():Void;
	function enableAttribute(attribute:Float):Void;
	function enableAttributeAndDivisor(attribute:Float, meshPerAttribute:Float):Void;
	function disableUnusedAttributes():Void;
	function enable(id:Float):Void;
	function disable(id:Float):Void;
	function getCompressedTextureFormats():Array<Float>;
	function useProgram(program:Dynamic):Bool;
	function setBlending(blending:Blending, ?blendEquation:BlendingEquation, ?blendSrc:BlendingSrcFactor, ?blendDst:BlendingDstFactor, ?blendEquationAlpha:BlendingEquation, ?blendSrcAlpha:BlendingSrcFactor, ?blendDstAlpha:BlendingDstFactor, ?premultiplyAlpha:Bool):Void;
	function setMaterial(material:Material, frontFaceCW:Bool):Void;
	function setFlipSided(flipSided:Bool):Void;
	function setCullFace(cullFace:CullFace):Void;
	function setLineWidth(width:Float):Void;
	function setPolygonOffset(polygonoffset:Bool, factor:Float, units:Float):Void;
	function setScissorTest(scissorTest:Bool):Void;
	function activeTexture(webglSlot:Float):Void;
	function bindTexture(webglType:Float, webglTexture:Dynamic):Void;
	function compressedTexImage2D(target:Float, level:Float, internalformat:Float, width:Float, height:Float, border:Float, data:js.lib.ArrayBufferView_<js.lib.ArrayBuffer>):Void;
	@:overload(function(target:Float, level:Float, internalformat:Float, format:Float, type:Float, source:Dynamic):Void { })
	function texImage2D(target:Float, level:Float, internalformat:Float, width:Float, height:Float, border:Float, format:Float, type:Float, pixels:Null<js.lib.ArrayBufferView_<js.lib.ArrayBuffer>>):Void;
	function texImage3D(target:Float, level:Float, internalformat:Float, width:Float, height:Float, depth:Float, border:Float, format:Float, type:Float, pixels:Dynamic):Void;
	function scissor(scissor:Vector4):Void;
	function viewport(viewport:Vector4):Void;
	function reset():Void;
	static var prototype : WebGLState;
}