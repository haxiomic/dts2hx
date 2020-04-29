package three;
@:jsRequire("three", "WebGLState") extern class WebGLState {
	function new(gl:js.html.IWebGLRenderingContext, extensions:WebGLExtensions, utils:Any, capabilities:WebGLCapabilities);
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
	function getCompressedTextureFormats():std.Array<Float>;
	function useProgram(program:Any):Bool;
	function setBlending(blending:Blending, ?blendEquation:BlendingEquation, ?blendSrc:BlendingSrcFactor, ?blendDst:BlendingDstFactor, ?blendEquationAlpha:BlendingEquation, ?blendSrcAlpha:BlendingSrcFactor, ?blendDstAlpha:BlendingDstFactor, ?premultiplyAlpha:Bool):Void;
	function setMaterial(material:Material, frontFaceCW:Bool):Void;
	function setFlipSided(flipSided:Bool):Void;
	function setCullFace(cullFace:CullFace):Void;
	function setLineWidth(width:Float):Void;
	function setPolygonOffset(polygonoffset:Bool, factor:Float, units:Float):Void;
	function setScissorTest(scissorTest:Bool):Void;
	function activeTexture(webglSlot:Float):Void;
	function bindTexture(webglType:Float, webglTexture:Any):Void;
	function compressedTexImage2D(target:Float, level:Float, internalformat:Float, width:Float, height:Float, border:Float, data:js.lib.ArrayBufferView):Void;
	@:overload(function(target:Float, level:Float, internalformat:Float, format:Float, type:Float, source:Any):Void { })
	function texImage2D(target:Float, level:Float, internalformat:Float, width:Float, height:Float, border:Float, format:Float, type:Float, pixels:Null<js.lib.ArrayBufferView>):Void;
	function texImage3D(target:Float, level:Float, internalformat:Float, width:Float, height:Float, depth:Float, border:Float, format:Float, type:Float, pixels:Any):Void;
	function scissor(scissor:Vector4):Void;
	function viewport(viewport:Vector4):Void;
	function reset():Void;
}