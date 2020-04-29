package js.html;
@:native("WebGL2RenderingContext") extern class WebGL2RenderingContext {
	function new();
	function beginQuery(target:Float, query:IWebGLQuery):Void;
	function beginTransformFeedback(primitiveMode:Float):Void;
	function bindBufferBase(target:Float, index:Float, buffer:Null<IWebGLBuffer>):Void;
	function bindBufferRange(target:Float, index:Float, buffer:Null<IWebGLBuffer>, offset:Float, size:Float):Void;
	function bindSampler(unit:Float, sampler:Null<IWebGLSampler>):Void;
	function bindTransformFeedback(target:Float, tf:Null<IWebGLTransformFeedback>):Void;
	function bindVertexArray(array:Null<IWebGLVertexArrayObject>):Void;
	function blitFramebuffer(srcX0:Float, srcY0:Float, srcX1:Float, srcY1:Float, dstX0:Float, dstY0:Float, dstX1:Float, dstY1:Float, mask:Float, filter:Float):Void;
	function clearBufferfi(buffer:Float, drawbuffer:Float, depth:Float, stencil:Float):Void;
	@:overload(function(buffer:Float, drawbuffer:Float, values:js.lib.Iterable<Float>, ?srcOffset:Float):Void { })
	function clearBufferfv(buffer:Float, drawbuffer:Float, values:haxe.extern.EitherType<js.lib.IFloat32Array, std.Array<Float>>, ?srcOffset:Float):Void;
	@:overload(function(buffer:Float, drawbuffer:Float, values:js.lib.Iterable<Float>, ?srcOffset:Float):Void { })
	function clearBufferiv(buffer:Float, drawbuffer:Float, values:haxe.extern.EitherType<js.lib.IInt32Array, std.Array<Float>>, ?srcOffset:Float):Void;
	@:overload(function(buffer:Float, drawbuffer:Float, values:js.lib.Iterable<Float>, ?srcOffset:Float):Void { })
	function clearBufferuiv(buffer:Float, drawbuffer:Float, values:haxe.extern.EitherType<js.lib.IUint32Array, std.Array<Float>>, ?srcOffset:Float):Void;
	function clientWaitSync(sync:IWebGLSync, flags:Float, timeout:Float):Float;
	@:overload(function(target:Float, level:Float, internalformat:Float, width:Float, height:Float, depth:Float, border:Float, srcData:js.lib.ArrayBufferView, ?srcOffset:Float, ?srcLengthOverride:Float):Void { })
	function compressedTexImage3D(target:Float, level:Float, internalformat:Float, width:Float, height:Float, depth:Float, border:Float, imageSize:Float, offset:Float):Void;
	@:overload(function(target:Float, level:Float, xoffset:Float, yoffset:Float, zoffset:Float, width:Float, height:Float, depth:Float, format:Float, srcData:js.lib.ArrayBufferView, ?srcOffset:Float, ?srcLengthOverride:Float):Void { })
	function compressedTexSubImage3D(target:Float, level:Float, xoffset:Float, yoffset:Float, zoffset:Float, width:Float, height:Float, depth:Float, format:Float, imageSize:Float, offset:Float):Void;
	function copyBufferSubData(readTarget:Float, writeTarget:Float, readOffset:Float, writeOffset:Float, size:Float):Void;
	function copyTexSubImage3D(target:Float, level:Float, xoffset:Float, yoffset:Float, zoffset:Float, x:Float, y:Float, width:Float, height:Float):Void;
	function createQuery():Null<IWebGLQuery>;
	function createSampler():Null<IWebGLSampler>;
	function createTransformFeedback():Null<IWebGLTransformFeedback>;
	function createVertexArray():Null<IWebGLVertexArrayObject>;
	function deleteQuery(query:Null<IWebGLQuery>):Void;
	function deleteSampler(sampler:Null<IWebGLSampler>):Void;
	function deleteSync(sync:Null<IWebGLSync>):Void;
	function deleteTransformFeedback(tf:Null<IWebGLTransformFeedback>):Void;
	function deleteVertexArray(vertexArray:Null<IWebGLVertexArrayObject>):Void;
	function drawArraysInstanced(mode:Float, first:Float, count:Float, instanceCount:Float):Void;
	@:overload(function(buffers:js.lib.Iterable<Float>):Void { })
	function drawBuffers(buffers:std.Array<Float>):Void;
	function drawElementsInstanced(mode:Float, count:Float, type:Float, offset:Float, instanceCount:Float):Void;
	function drawRangeElements(mode:Float, start:Float, end:Float, count:Float, type:Float, offset:Float):Void;
	function endQuery(target:Float):Void;
	function endTransformFeedback():Void;
	function fenceSync(condition:Float, flags:Float):Null<IWebGLSync>;
	function framebufferTextureLayer(target:Float, attachment:Float, texture:Null<IWebGLTexture>, level:Float, layer:Float):Void;
	function getActiveUniformBlockName(program:IWebGLProgram, uniformBlockIndex:Float):Null<String>;
	function getActiveUniformBlockParameter(program:IWebGLProgram, uniformBlockIndex:Float, pname:Float):Any;
	@:overload(function(program:IWebGLProgram, uniformIndices:js.lib.Iterable<Float>, pname:Float):Any { })
	function getActiveUniforms(program:IWebGLProgram, uniformIndices:std.Array<Float>, pname:Float):Any;
	function getBufferSubData(target:Float, srcByteOffset:Float, dstBuffer:js.lib.ArrayBufferView, ?dstOffset:Float, ?length:Float):Void;
	function getFragDataLocation(program:IWebGLProgram, name:String):Float;
	function getIndexedParameter(target:Float, index:Float):Any;
	function getInternalformatParameter(target:Float, internalformat:Float, pname:Float):Any;
	function getQuery(target:Float, pname:Float):Null<IWebGLQuery>;
	function getQueryParameter(query:IWebGLQuery, pname:Float):Any;
	function getSamplerParameter(sampler:IWebGLSampler, pname:Float):Any;
	function getSyncParameter(sync:IWebGLSync, pname:Float):Any;
	function getTransformFeedbackVarying(program:IWebGLProgram, index:Float):Null<IWebGLActiveInfo>;
	function getUniformBlockIndex(program:IWebGLProgram, uniformBlockName:String):Float;
	@:overload(function(program:IWebGLProgram, uniformNames:js.lib.Iterable<String>):Null<js.lib.Iterable<Float>> { })
	function getUniformIndices(program:IWebGLProgram, uniformNames:std.Array<String>):Null<std.Array<Float>>;
	@:overload(function(target:Float, attachments:js.lib.Iterable<Float>):Void { })
	function invalidateFramebuffer(target:Float, attachments:std.Array<Float>):Void;
	@:overload(function(target:Float, attachments:js.lib.Iterable<Float>, x:Float, y:Float, width:Float, height:Float):Void { })
	function invalidateSubFramebuffer(target:Float, attachments:std.Array<Float>, x:Float, y:Float, width:Float, height:Float):Void;
	function isQuery(query:Null<IWebGLQuery>):Bool;
	function isSampler(sampler:Null<IWebGLSampler>):Bool;
	function isSync(sync:Null<IWebGLSync>):Bool;
	function isTransformFeedback(tf:Null<IWebGLTransformFeedback>):Bool;
	function isVertexArray(vertexArray:Null<IWebGLVertexArrayObject>):Bool;
	function pauseTransformFeedback():Void;
	function readBuffer(src:Float):Void;
	function renderbufferStorageMultisample(target:Float, samples:Float, internalformat:Float, width:Float, height:Float):Void;
	function resumeTransformFeedback():Void;
	function samplerParameterf(sampler:IWebGLSampler, pname:Float, param:Float):Void;
	function samplerParameteri(sampler:IWebGLSampler, pname:Float, param:Float):Void;
	@:overload(function(target:Float, level:Float, internalformat:Float, width:Float, height:Float, depth:Float, border:Float, format:Float, type:Float, source:haxe.extern.EitherType<IHTMLCanvasElement, haxe.extern.EitherType<IHTMLVideoElement, haxe.extern.EitherType<IImageData, haxe.extern.EitherType<IHTMLImageElement, haxe.extern.EitherType<IOffscreenCanvas, IImageBitmap>>>>>):Void { })
	@:overload(function(target:Float, level:Float, internalformat:Float, width:Float, height:Float, depth:Float, border:Float, format:Float, type:Float, srcData:Null<js.lib.ArrayBufferView>):Void { })
	@:overload(function(target:Float, level:Float, internalformat:Float, width:Float, height:Float, depth:Float, border:Float, format:Float, type:Float, srcData:js.lib.ArrayBufferView, srcOffset:Float):Void { })
	function texImage3D(target:Float, level:Float, internalformat:Float, width:Float, height:Float, depth:Float, border:Float, format:Float, type:Float, pboOffset:Float):Void;
	function texStorage2D(target:Float, levels:Float, internalformat:Float, width:Float, height:Float):Void;
	function texStorage3D(target:Float, levels:Float, internalformat:Float, width:Float, height:Float, depth:Float):Void;
	@:overload(function(target:Float, level:Float, xoffset:Float, yoffset:Float, zoffset:Float, width:Float, height:Float, depth:Float, format:Float, type:Float, source:haxe.extern.EitherType<IHTMLCanvasElement, haxe.extern.EitherType<IHTMLVideoElement, haxe.extern.EitherType<IImageData, haxe.extern.EitherType<IHTMLImageElement, haxe.extern.EitherType<IOffscreenCanvas, IImageBitmap>>>>>):Void { })
	@:overload(function(target:Float, level:Float, xoffset:Float, yoffset:Float, zoffset:Float, width:Float, height:Float, depth:Float, format:Float, type:Float, srcData:Null<js.lib.ArrayBufferView>, ?srcOffset:Float):Void { })
	function texSubImage3D(target:Float, level:Float, xoffset:Float, yoffset:Float, zoffset:Float, width:Float, height:Float, depth:Float, format:Float, type:Float, pboOffset:Float):Void;
	@:overload(function(program:IWebGLProgram, varyings:js.lib.Iterable<String>, bufferMode:Float):Void { })
	function transformFeedbackVaryings(program:IWebGLProgram, varyings:std.Array<String>, bufferMode:Float):Void;
	function uniform1ui(location:Null<IWebGLUniformLocation>, v0:Float):Void;
	@:overload(function(location:Null<IWebGLUniformLocation>, data:js.lib.Iterable<Float>, ?srcOffset:Float, ?srcLength:Float):Void { })
	function uniform1uiv(location:Null<IWebGLUniformLocation>, data:haxe.extern.EitherType<js.lib.IUint32Array, std.Array<Float>>, ?srcOffset:Float, ?srcLength:Float):Void;
	function uniform2ui(location:Null<IWebGLUniformLocation>, v0:Float, v1:Float):Void;
	@:overload(function(location:Null<IWebGLUniformLocation>, data:js.lib.Iterable<Float>, ?srcOffset:Float, ?srcLength:Float):Void { })
	function uniform2uiv(location:Null<IWebGLUniformLocation>, data:haxe.extern.EitherType<js.lib.IUint32Array, std.Array<Float>>, ?srcOffset:Float, ?srcLength:Float):Void;
	function uniform3ui(location:Null<IWebGLUniformLocation>, v0:Float, v1:Float, v2:Float):Void;
	@:overload(function(location:Null<IWebGLUniformLocation>, data:js.lib.Iterable<Float>, ?srcOffset:Float, ?srcLength:Float):Void { })
	function uniform3uiv(location:Null<IWebGLUniformLocation>, data:haxe.extern.EitherType<js.lib.IUint32Array, std.Array<Float>>, ?srcOffset:Float, ?srcLength:Float):Void;
	function uniform4ui(location:Null<IWebGLUniformLocation>, v0:Float, v1:Float, v2:Float, v3:Float):Void;
	@:overload(function(location:Null<IWebGLUniformLocation>, data:js.lib.Iterable<Float>, ?srcOffset:Float, ?srcLength:Float):Void { })
	function uniform4uiv(location:Null<IWebGLUniformLocation>, data:haxe.extern.EitherType<js.lib.IUint32Array, std.Array<Float>>, ?srcOffset:Float, ?srcLength:Float):Void;
	function uniformBlockBinding(program:IWebGLProgram, uniformBlockIndex:Float, uniformBlockBinding:Float):Void;
	@:overload(function(location:Null<IWebGLUniformLocation>, transpose:Bool, data:js.lib.Iterable<Float>, ?srcOffset:Float, ?srcLength:Float):Void { })
	function uniformMatrix2x3fv(location:Null<IWebGLUniformLocation>, transpose:Bool, data:haxe.extern.EitherType<js.lib.IFloat32Array, std.Array<Float>>, ?srcOffset:Float, ?srcLength:Float):Void;
	@:overload(function(location:Null<IWebGLUniformLocation>, transpose:Bool, data:js.lib.Iterable<Float>, ?srcOffset:Float, ?srcLength:Float):Void { })
	function uniformMatrix2x4fv(location:Null<IWebGLUniformLocation>, transpose:Bool, data:haxe.extern.EitherType<js.lib.IFloat32Array, std.Array<Float>>, ?srcOffset:Float, ?srcLength:Float):Void;
	@:overload(function(location:Null<IWebGLUniformLocation>, transpose:Bool, data:js.lib.Iterable<Float>, ?srcOffset:Float, ?srcLength:Float):Void { })
	function uniformMatrix3x2fv(location:Null<IWebGLUniformLocation>, transpose:Bool, data:haxe.extern.EitherType<js.lib.IFloat32Array, std.Array<Float>>, ?srcOffset:Float, ?srcLength:Float):Void;
	@:overload(function(location:Null<IWebGLUniformLocation>, transpose:Bool, data:js.lib.Iterable<Float>, ?srcOffset:Float, ?srcLength:Float):Void { })
	function uniformMatrix3x4fv(location:Null<IWebGLUniformLocation>, transpose:Bool, data:haxe.extern.EitherType<js.lib.IFloat32Array, std.Array<Float>>, ?srcOffset:Float, ?srcLength:Float):Void;
	@:overload(function(location:Null<IWebGLUniformLocation>, transpose:Bool, data:js.lib.Iterable<Float>, ?srcOffset:Float, ?srcLength:Float):Void { })
	function uniformMatrix4x2fv(location:Null<IWebGLUniformLocation>, transpose:Bool, data:haxe.extern.EitherType<js.lib.IFloat32Array, std.Array<Float>>, ?srcOffset:Float, ?srcLength:Float):Void;
	@:overload(function(location:Null<IWebGLUniformLocation>, transpose:Bool, data:js.lib.Iterable<Float>, ?srcOffset:Float, ?srcLength:Float):Void { })
	function uniformMatrix4x3fv(location:Null<IWebGLUniformLocation>, transpose:Bool, data:haxe.extern.EitherType<js.lib.IFloat32Array, std.Array<Float>>, ?srcOffset:Float, ?srcLength:Float):Void;
	function vertexAttribDivisor(index:Float, divisor:Float):Void;
	function vertexAttribI4i(index:Float, x:Float, y:Float, z:Float, w:Float):Void;
	@:overload(function(index:Float, values:js.lib.Iterable<Float>):Void { })
	function vertexAttribI4iv(index:Float, values:haxe.extern.EitherType<js.lib.IInt32Array, std.Array<Float>>):Void;
	function vertexAttribI4ui(index:Float, x:Float, y:Float, z:Float, w:Float):Void;
	@:overload(function(index:Float, values:js.lib.Iterable<Float>):Void { })
	function vertexAttribI4uiv(index:Float, values:haxe.extern.EitherType<js.lib.IUint32Array, std.Array<Float>>):Void;
	function vertexAttribIPointer(index:Float, size:Float, type:Float, stride:Float, offset:Float):Void;
	function waitSync(sync:IWebGLSync, flags:Float, timeout:Float):Void;
	final ACTIVE_UNIFORM_BLOCKS : Float;
	final ALREADY_SIGNALED : Float;
	final ANY_SAMPLES_PASSED : Float;
	final ANY_SAMPLES_PASSED_CONSERVATIVE : Float;
	final COLOR : Float;
	final COLOR_ATTACHMENT1 : Float;
	final COLOR_ATTACHMENT10 : Float;
	final COLOR_ATTACHMENT11 : Float;
	final COLOR_ATTACHMENT12 : Float;
	final COLOR_ATTACHMENT13 : Float;
	final COLOR_ATTACHMENT14 : Float;
	final COLOR_ATTACHMENT15 : Float;
	final COLOR_ATTACHMENT2 : Float;
	final COLOR_ATTACHMENT3 : Float;
	final COLOR_ATTACHMENT4 : Float;
	final COLOR_ATTACHMENT5 : Float;
	final COLOR_ATTACHMENT6 : Float;
	final COLOR_ATTACHMENT7 : Float;
	final COLOR_ATTACHMENT8 : Float;
	final COLOR_ATTACHMENT9 : Float;
	final COMPARE_REF_TO_TEXTURE : Float;
	final CONDITION_SATISFIED : Float;
	final COPY_READ_BUFFER : Float;
	final COPY_READ_BUFFER_BINDING : Float;
	final COPY_WRITE_BUFFER : Float;
	final COPY_WRITE_BUFFER_BINDING : Float;
	final CURRENT_QUERY : Float;
	final DEPTH : Float;
	final DEPTH24_STENCIL8 : Float;
	final DEPTH32F_STENCIL8 : Float;
	final DEPTH_COMPONENT24 : Float;
	final DEPTH_COMPONENT32F : Float;
	final DRAW_BUFFER0 : Float;
	final DRAW_BUFFER1 : Float;
	final DRAW_BUFFER10 : Float;
	final DRAW_BUFFER11 : Float;
	final DRAW_BUFFER12 : Float;
	final DRAW_BUFFER13 : Float;
	final DRAW_BUFFER14 : Float;
	final DRAW_BUFFER15 : Float;
	final DRAW_BUFFER2 : Float;
	final DRAW_BUFFER3 : Float;
	final DRAW_BUFFER4 : Float;
	final DRAW_BUFFER5 : Float;
	final DRAW_BUFFER6 : Float;
	final DRAW_BUFFER7 : Float;
	final DRAW_BUFFER8 : Float;
	final DRAW_BUFFER9 : Float;
	final DRAW_FRAMEBUFFER : Float;
	final DRAW_FRAMEBUFFER_BINDING : Float;
	final DYNAMIC_COPY : Float;
	final DYNAMIC_READ : Float;
	final FLOAT_32_UNSIGNED_INT_24_8_REV : Float;
	final FLOAT_MAT2x3 : Float;
	final FLOAT_MAT2x4 : Float;
	final FLOAT_MAT3x2 : Float;
	final FLOAT_MAT3x4 : Float;
	final FLOAT_MAT4x2 : Float;
	final FLOAT_MAT4x3 : Float;
	final FRAGMENT_SHADER_DERIVATIVE_HINT : Float;
	final FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE : Float;
	final FRAMEBUFFER_ATTACHMENT_BLUE_SIZE : Float;
	final FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING : Float;
	final FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE : Float;
	final FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE : Float;
	final FRAMEBUFFER_ATTACHMENT_GREEN_SIZE : Float;
	final FRAMEBUFFER_ATTACHMENT_RED_SIZE : Float;
	final FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE : Float;
	final FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER : Float;
	final FRAMEBUFFER_DEFAULT : Float;
	final FRAMEBUFFER_INCOMPLETE_MULTISAMPLE : Float;
	final HALF_FLOAT : Float;
	final INTERLEAVED_ATTRIBS : Float;
	final INT_2_10_10_10_REV : Float;
	final INT_SAMPLER_2D : Float;
	final INT_SAMPLER_2D_ARRAY : Float;
	final INT_SAMPLER_3D : Float;
	final INT_SAMPLER_CUBE : Float;
	final INVALID_INDEX : Float;
	final MAX : Float;
	final MAX_3D_TEXTURE_SIZE : Float;
	final MAX_ARRAY_TEXTURE_LAYERS : Float;
	final MAX_CLIENT_WAIT_TIMEOUT_WEBGL : Float;
	final MAX_COLOR_ATTACHMENTS : Float;
	final MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS : Float;
	final MAX_COMBINED_UNIFORM_BLOCKS : Float;
	final MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS : Float;
	final MAX_DRAW_BUFFERS : Float;
	final MAX_ELEMENTS_INDICES : Float;
	final MAX_ELEMENTS_VERTICES : Float;
	final MAX_ELEMENT_INDEX : Float;
	final MAX_FRAGMENT_INPUT_COMPONENTS : Float;
	final MAX_FRAGMENT_UNIFORM_BLOCKS : Float;
	final MAX_FRAGMENT_UNIFORM_COMPONENTS : Float;
	final MAX_PROGRAM_TEXEL_OFFSET : Float;
	final MAX_SAMPLES : Float;
	final MAX_SERVER_WAIT_TIMEOUT : Float;
	final MAX_TEXTURE_LOD_BIAS : Float;
	final MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS : Float;
	final MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS : Float;
	final MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS : Float;
	final MAX_UNIFORM_BLOCK_SIZE : Float;
	final MAX_UNIFORM_BUFFER_BINDINGS : Float;
	final MAX_VARYING_COMPONENTS : Float;
	final MAX_VERTEX_OUTPUT_COMPONENTS : Float;
	final MAX_VERTEX_UNIFORM_BLOCKS : Float;
	final MAX_VERTEX_UNIFORM_COMPONENTS : Float;
	final MIN : Float;
	final MIN_PROGRAM_TEXEL_OFFSET : Float;
	final OBJECT_TYPE : Float;
	final PACK_ROW_LENGTH : Float;
	final PACK_SKIP_PIXELS : Float;
	final PACK_SKIP_ROWS : Float;
	final PIXEL_PACK_BUFFER : Float;
	final PIXEL_PACK_BUFFER_BINDING : Float;
	final PIXEL_UNPACK_BUFFER : Float;
	final PIXEL_UNPACK_BUFFER_BINDING : Float;
	final QUERY_RESULT : Float;
	final QUERY_RESULT_AVAILABLE : Float;
	final R11F_G11F_B10F : Float;
	final R16F : Float;
	final R16I : Float;
	final R16UI : Float;
	final R32F : Float;
	final R32I : Float;
	final R32UI : Float;
	final R8 : Float;
	final R8I : Float;
	final R8UI : Float;
	final R8_SNORM : Float;
	final RASTERIZER_DISCARD : Float;
	final READ_BUFFER : Float;
	final READ_FRAMEBUFFER : Float;
	final READ_FRAMEBUFFER_BINDING : Float;
	final RED : Float;
	final RED_INTEGER : Float;
	final RENDERBUFFER_SAMPLES : Float;
	final RG : Float;
	final RG16F : Float;
	final RG16I : Float;
	final RG16UI : Float;
	final RG32F : Float;
	final RG32I : Float;
	final RG32UI : Float;
	final RG8 : Float;
	final RG8I : Float;
	final RG8UI : Float;
	final RG8_SNORM : Float;
	final RGB10_A2 : Float;
	final RGB10_A2UI : Float;
	final RGB16F : Float;
	final RGB16I : Float;
	final RGB16UI : Float;
	final RGB32F : Float;
	final RGB32I : Float;
	final RGB32UI : Float;
	final RGB8 : Float;
	final RGB8I : Float;
	final RGB8UI : Float;
	final RGB8_SNORM : Float;
	final RGB9_E5 : Float;
	final RGBA16F : Float;
	final RGBA16I : Float;
	final RGBA16UI : Float;
	final RGBA32F : Float;
	final RGBA32I : Float;
	final RGBA32UI : Float;
	final RGBA8 : Float;
	final RGBA8I : Float;
	final RGBA8UI : Float;
	final RGBA8_SNORM : Float;
	final RGBA_INTEGER : Float;
	final RGB_INTEGER : Float;
	final RG_INTEGER : Float;
	final SAMPLER_2D_ARRAY : Float;
	final SAMPLER_2D_ARRAY_SHADOW : Float;
	final SAMPLER_2D_SHADOW : Float;
	final SAMPLER_3D : Float;
	final SAMPLER_BINDING : Float;
	final SAMPLER_CUBE_SHADOW : Float;
	final SEPARATE_ATTRIBS : Float;
	final SIGNALED : Float;
	final SIGNED_NORMALIZED : Float;
	final SRGB : Float;
	final SRGB8 : Float;
	final SRGB8_ALPHA8 : Float;
	final STATIC_COPY : Float;
	final STATIC_READ : Float;
	final STENCIL : Float;
	final STREAM_COPY : Float;
	final STREAM_READ : Float;
	final SYNC_CONDITION : Float;
	final SYNC_FENCE : Float;
	final SYNC_FLAGS : Float;
	final SYNC_FLUSH_COMMANDS_BIT : Float;
	final SYNC_GPU_COMMANDS_COMPLETE : Float;
	final SYNC_STATUS : Float;
	final TEXTURE_2D_ARRAY : Float;
	final TEXTURE_3D : Float;
	final TEXTURE_BASE_LEVEL : Float;
	final TEXTURE_BINDING_2D_ARRAY : Float;
	final TEXTURE_BINDING_3D : Float;
	final TEXTURE_COMPARE_FUNC : Float;
	final TEXTURE_COMPARE_MODE : Float;
	final TEXTURE_IMMUTABLE_FORMAT : Float;
	final TEXTURE_IMMUTABLE_LEVELS : Float;
	final TEXTURE_MAX_LEVEL : Float;
	final TEXTURE_MAX_LOD : Float;
	final TEXTURE_MIN_LOD : Float;
	final TEXTURE_WRAP_R : Float;
	final TIMEOUT_EXPIRED : Float;
	final TIMEOUT_IGNORED : Float;
	final TRANSFORM_FEEDBACK : Float;
	final TRANSFORM_FEEDBACK_ACTIVE : Float;
	final TRANSFORM_FEEDBACK_BINDING : Float;
	final TRANSFORM_FEEDBACK_BUFFER : Float;
	final TRANSFORM_FEEDBACK_BUFFER_BINDING : Float;
	final TRANSFORM_FEEDBACK_BUFFER_MODE : Float;
	final TRANSFORM_FEEDBACK_BUFFER_SIZE : Float;
	final TRANSFORM_FEEDBACK_BUFFER_START : Float;
	final TRANSFORM_FEEDBACK_PAUSED : Float;
	final TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN : Float;
	final TRANSFORM_FEEDBACK_VARYINGS : Float;
	final UNIFORM_ARRAY_STRIDE : Float;
	final UNIFORM_BLOCK_ACTIVE_UNIFORMS : Float;
	final UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES : Float;
	final UNIFORM_BLOCK_BINDING : Float;
	final UNIFORM_BLOCK_DATA_SIZE : Float;
	final UNIFORM_BLOCK_INDEX : Float;
	final UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER : Float;
	final UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER : Float;
	final UNIFORM_BUFFER : Float;
	final UNIFORM_BUFFER_BINDING : Float;
	final UNIFORM_BUFFER_OFFSET_ALIGNMENT : Float;
	final UNIFORM_BUFFER_SIZE : Float;
	final UNIFORM_BUFFER_START : Float;
	final UNIFORM_IS_ROW_MAJOR : Float;
	final UNIFORM_MATRIX_STRIDE : Float;
	final UNIFORM_OFFSET : Float;
	final UNIFORM_SIZE : Float;
	final UNIFORM_TYPE : Float;
	final UNPACK_IMAGE_HEIGHT : Float;
	final UNPACK_ROW_LENGTH : Float;
	final UNPACK_SKIP_IMAGES : Float;
	final UNPACK_SKIP_PIXELS : Float;
	final UNPACK_SKIP_ROWS : Float;
	final UNSIGNALED : Float;
	final UNSIGNED_INT_10F_11F_11F_REV : Float;
	final UNSIGNED_INT_24_8 : Float;
	final UNSIGNED_INT_2_10_10_10_REV : Float;
	final UNSIGNED_INT_5_9_9_9_REV : Float;
	final UNSIGNED_INT_SAMPLER_2D : Float;
	final UNSIGNED_INT_SAMPLER_2D_ARRAY : Float;
	final UNSIGNED_INT_SAMPLER_3D : Float;
	final UNSIGNED_INT_SAMPLER_CUBE : Float;
	final UNSIGNED_INT_VEC2 : Float;
	final UNSIGNED_INT_VEC3 : Float;
	final UNSIGNED_INT_VEC4 : Float;
	final UNSIGNED_NORMALIZED : Float;
	final VERTEX_ARRAY_BINDING : Float;
	final VERTEX_ATTRIB_ARRAY_DIVISOR : Float;
	final VERTEX_ATTRIB_ARRAY_INTEGER : Float;
	final WAIT_FAILED : Float;
	@:overload(function(target:Float, srcData:Null<haxe.extern.EitherType<js.lib.IArrayBuffer, js.lib.ArrayBufferView>>, usage:Float):Void { })
	@:overload(function(target:Float, srcData:js.lib.ArrayBufferView, usage:Float, srcOffset:Float, ?length:Float):Void { })
	function bufferData(target:Float, size:Float, usage:Float):Void;
	@:overload(function(target:Float, dstByteOffset:Float, srcData:js.lib.ArrayBufferView, srcOffset:Float, ?length:Float):Void { })
	function bufferSubData(target:Float, dstByteOffset:Float, srcData:haxe.extern.EitherType<js.lib.IArrayBuffer, js.lib.ArrayBufferView>):Void;
	@:overload(function(target:Float, level:Float, internalformat:Float, width:Float, height:Float, border:Float, srcData:js.lib.ArrayBufferView, ?srcOffset:Float, ?srcLengthOverride:Float):Void { })
	function compressedTexImage2D(target:Float, level:Float, internalformat:Float, width:Float, height:Float, border:Float, imageSize:Float, offset:Float):Void;
	@:overload(function(target:Float, level:Float, xoffset:Float, yoffset:Float, width:Float, height:Float, format:Float, srcData:js.lib.ArrayBufferView, ?srcOffset:Float, ?srcLengthOverride:Float):Void { })
	function compressedTexSubImage2D(target:Float, level:Float, xoffset:Float, yoffset:Float, width:Float, height:Float, format:Float, imageSize:Float, offset:Float):Void;
	@:overload(function(x:Float, y:Float, width:Float, height:Float, format:Float, type:Float, offset:Float):Void { })
	@:overload(function(x:Float, y:Float, width:Float, height:Float, format:Float, type:Float, dstData:js.lib.ArrayBufferView, dstOffset:Float):Void { })
	function readPixels(x:Float, y:Float, width:Float, height:Float, format:Float, type:Float, dstData:Null<js.lib.ArrayBufferView>):Void;
	@:overload(function(target:Float, level:Float, internalformat:Float, format:Float, type:Float, source:haxe.extern.EitherType<IHTMLCanvasElement, haxe.extern.EitherType<IHTMLVideoElement, haxe.extern.EitherType<IImageData, haxe.extern.EitherType<IHTMLImageElement, haxe.extern.EitherType<IOffscreenCanvas, IImageBitmap>>>>>):Void { })
	@:overload(function(target:Float, level:Float, internalformat:Float, width:Float, height:Float, border:Float, format:Float, type:Float, pboOffset:Float):Void { })
	@:overload(function(target:Float, level:Float, internalformat:Float, width:Float, height:Float, border:Float, format:Float, type:Float, source:haxe.extern.EitherType<IHTMLCanvasElement, haxe.extern.EitherType<IHTMLVideoElement, haxe.extern.EitherType<IImageData, haxe.extern.EitherType<IHTMLImageElement, haxe.extern.EitherType<IOffscreenCanvas, IImageBitmap>>>>>):Void { })
	@:overload(function(target:Float, level:Float, internalformat:Float, width:Float, height:Float, border:Float, format:Float, type:Float, srcData:js.lib.ArrayBufferView, srcOffset:Float):Void { })
	function texImage2D(target:Float, level:Float, internalformat:Float, width:Float, height:Float, border:Float, format:Float, type:Float, pixels:Null<js.lib.ArrayBufferView>):Void;
	@:overload(function(target:Float, level:Float, xoffset:Float, yoffset:Float, format:Float, type:Float, source:haxe.extern.EitherType<IHTMLCanvasElement, haxe.extern.EitherType<IHTMLVideoElement, haxe.extern.EitherType<IImageData, haxe.extern.EitherType<IHTMLImageElement, haxe.extern.EitherType<IOffscreenCanvas, IImageBitmap>>>>>):Void { })
	@:overload(function(target:Float, level:Float, xoffset:Float, yoffset:Float, width:Float, height:Float, format:Float, type:Float, pboOffset:Float):Void { })
	@:overload(function(target:Float, level:Float, xoffset:Float, yoffset:Float, width:Float, height:Float, format:Float, type:Float, source:haxe.extern.EitherType<IHTMLCanvasElement, haxe.extern.EitherType<IHTMLVideoElement, haxe.extern.EitherType<IImageData, haxe.extern.EitherType<IHTMLImageElement, haxe.extern.EitherType<IOffscreenCanvas, IImageBitmap>>>>>):Void { })
	@:overload(function(target:Float, level:Float, xoffset:Float, yoffset:Float, width:Float, height:Float, format:Float, type:Float, srcData:js.lib.ArrayBufferView, srcOffset:Float):Void { })
	function texSubImage2D(target:Float, level:Float, xoffset:Float, yoffset:Float, width:Float, height:Float, format:Float, type:Float, pixels:Null<js.lib.ArrayBufferView>):Void;
	@:overload(function(location:Null<IWebGLUniformLocation>, data:js.lib.Iterable<Float>, ?srcOffset:Float, ?srcLength:Float):Void { })
	function uniform1fv(location:Null<IWebGLUniformLocation>, data:haxe.extern.EitherType<js.lib.IFloat32Array, std.Array<Float>>, ?srcOffset:Float, ?srcLength:Float):Void;
	@:overload(function(location:Null<IWebGLUniformLocation>, data:js.lib.Iterable<Float>, ?srcOffset:Float, ?srcLength:Float):Void { })
	function uniform1iv(location:Null<IWebGLUniformLocation>, data:haxe.extern.EitherType<js.lib.IInt32Array, std.Array<Float>>, ?srcOffset:Float, ?srcLength:Float):Void;
	@:overload(function(location:Null<IWebGLUniformLocation>, data:js.lib.Iterable<Float>, ?srcOffset:Float, ?srcLength:Float):Void { })
	function uniform2fv(location:Null<IWebGLUniformLocation>, data:haxe.extern.EitherType<js.lib.IFloat32Array, std.Array<Float>>, ?srcOffset:Float, ?srcLength:Float):Void;
	@:overload(function(location:Null<IWebGLUniformLocation>, data:js.lib.Iterable<Float>, ?srcOffset:Float, ?srcLength:Float):Void { })
	function uniform2iv(location:Null<IWebGLUniformLocation>, data:haxe.extern.EitherType<js.lib.IInt32Array, std.Array<Float>>, ?srcOffset:Float, ?srcLength:Float):Void;
	@:overload(function(location:Null<IWebGLUniformLocation>, data:js.lib.Iterable<Float>, ?srcOffset:Float, ?srcLength:Float):Void { })
	function uniform3fv(location:Null<IWebGLUniformLocation>, data:haxe.extern.EitherType<js.lib.IFloat32Array, std.Array<Float>>, ?srcOffset:Float, ?srcLength:Float):Void;
	@:overload(function(location:Null<IWebGLUniformLocation>, data:js.lib.Iterable<Float>, ?srcOffset:Float, ?srcLength:Float):Void { })
	function uniform3iv(location:Null<IWebGLUniformLocation>, data:haxe.extern.EitherType<js.lib.IInt32Array, std.Array<Float>>, ?srcOffset:Float, ?srcLength:Float):Void;
	@:overload(function(location:Null<IWebGLUniformLocation>, data:js.lib.Iterable<Float>, ?srcOffset:Float, ?srcLength:Float):Void { })
	function uniform4fv(location:Null<IWebGLUniformLocation>, data:haxe.extern.EitherType<js.lib.IFloat32Array, std.Array<Float>>, ?srcOffset:Float, ?srcLength:Float):Void;
	@:overload(function(location:Null<IWebGLUniformLocation>, data:js.lib.Iterable<Float>, ?srcOffset:Float, ?srcLength:Float):Void { })
	function uniform4iv(location:Null<IWebGLUniformLocation>, data:haxe.extern.EitherType<js.lib.IInt32Array, std.Array<Float>>, ?srcOffset:Float, ?srcLength:Float):Void;
	@:overload(function(location:Null<IWebGLUniformLocation>, transpose:Bool, data:js.lib.Iterable<Float>, ?srcOffset:Float, ?srcLength:Float):Void { })
	function uniformMatrix2fv(location:Null<IWebGLUniformLocation>, transpose:Bool, data:haxe.extern.EitherType<js.lib.IFloat32Array, std.Array<Float>>, ?srcOffset:Float, ?srcLength:Float):Void;
	@:overload(function(location:Null<IWebGLUniformLocation>, transpose:Bool, data:js.lib.Iterable<Float>, ?srcOffset:Float, ?srcLength:Float):Void { })
	function uniformMatrix3fv(location:Null<IWebGLUniformLocation>, transpose:Bool, data:haxe.extern.EitherType<js.lib.IFloat32Array, std.Array<Float>>, ?srcOffset:Float, ?srcLength:Float):Void;
	@:overload(function(location:Null<IWebGLUniformLocation>, transpose:Bool, data:js.lib.Iterable<Float>, ?srcOffset:Float, ?srcLength:Float):Void { })
	function uniformMatrix4fv(location:Null<IWebGLUniformLocation>, transpose:Bool, data:haxe.extern.EitherType<js.lib.IFloat32Array, std.Array<Float>>, ?srcOffset:Float, ?srcLength:Float):Void;
	final canvas : haxe.extern.EitherType<IHTMLCanvasElement, IOffscreenCanvas>;
	final drawingBufferHeight : Float;
	final drawingBufferWidth : Float;
	function activeTexture(texture:Float):Void;
	function attachShader(program:IWebGLProgram, shader:IWebGLShader):Void;
	function bindAttribLocation(program:IWebGLProgram, index:Float, name:String):Void;
	function bindBuffer(target:Float, buffer:Null<IWebGLBuffer>):Void;
	function bindFramebuffer(target:Float, framebuffer:Null<IWebGLFramebuffer>):Void;
	function bindRenderbuffer(target:Float, renderbuffer:Null<IWebGLRenderbuffer>):Void;
	function bindTexture(target:Float, texture:Null<IWebGLTexture>):Void;
	function blendColor(red:Float, green:Float, blue:Float, alpha:Float):Void;
	function blendEquation(mode:Float):Void;
	function blendEquationSeparate(modeRGB:Float, modeAlpha:Float):Void;
	function blendFunc(sfactor:Float, dfactor:Float):Void;
	function blendFuncSeparate(srcRGB:Float, dstRGB:Float, srcAlpha:Float, dstAlpha:Float):Void;
	function checkFramebufferStatus(target:Float):Float;
	function clear(mask:Float):Void;
	function clearColor(red:Float, green:Float, blue:Float, alpha:Float):Void;
	function clearDepth(depth:Float):Void;
	function clearStencil(s:Float):Void;
	function colorMask(red:Bool, green:Bool, blue:Bool, alpha:Bool):Void;
	function compileShader(shader:IWebGLShader):Void;
	function copyTexImage2D(target:Float, level:Float, internalformat:Float, x:Float, y:Float, width:Float, height:Float, border:Float):Void;
	function copyTexSubImage2D(target:Float, level:Float, xoffset:Float, yoffset:Float, x:Float, y:Float, width:Float, height:Float):Void;
	function createBuffer():Null<IWebGLBuffer>;
	function createFramebuffer():Null<IWebGLFramebuffer>;
	function createProgram():Null<IWebGLProgram>;
	function createRenderbuffer():Null<IWebGLRenderbuffer>;
	function createShader(type:Float):Null<IWebGLShader>;
	function createTexture():Null<IWebGLTexture>;
	function cullFace(mode:Float):Void;
	function deleteBuffer(buffer:Null<IWebGLBuffer>):Void;
	function deleteFramebuffer(framebuffer:Null<IWebGLFramebuffer>):Void;
	function deleteProgram(program:Null<IWebGLProgram>):Void;
	function deleteRenderbuffer(renderbuffer:Null<IWebGLRenderbuffer>):Void;
	function deleteShader(shader:Null<IWebGLShader>):Void;
	function deleteTexture(texture:Null<IWebGLTexture>):Void;
	function depthFunc(func:Float):Void;
	function depthMask(flag:Bool):Void;
	function depthRange(zNear:Float, zFar:Float):Void;
	function detachShader(program:IWebGLProgram, shader:IWebGLShader):Void;
	function disable(cap:Float):Void;
	function disableVertexAttribArray(index:Float):Void;
	function drawArrays(mode:Float, first:Float, count:Float):Void;
	function drawElements(mode:Float, count:Float, type:Float, offset:Float):Void;
	function enable(cap:Float):Void;
	function enableVertexAttribArray(index:Float):Void;
	function finish():Void;
	function flush():Void;
	function framebufferRenderbuffer(target:Float, attachment:Float, renderbuffertarget:Float, renderbuffer:Null<IWebGLRenderbuffer>):Void;
	function framebufferTexture2D(target:Float, attachment:Float, textarget:Float, texture:Null<IWebGLTexture>, level:Float):Void;
	function frontFace(mode:Float):Void;
	function generateMipmap(target:Float):Void;
	function getActiveAttrib(program:IWebGLProgram, index:Float):Null<IWebGLActiveInfo>;
	function getActiveUniform(program:IWebGLProgram, index:Float):Null<IWebGLActiveInfo>;
	function getAttachedShaders(program:IWebGLProgram):Null<std.Array<IWebGLShader>>;
	function getAttribLocation(program:IWebGLProgram, name:String):Float;
	function getBufferParameter(target:Float, pname:Float):Any;
	function getContextAttributes():Null<WebGLContextAttributes>;
	function getError():Float;
	@:overload(function(extensionName:String):Null<EXT_texture_filter_anisotropic> { })
	@:overload(function(extensionName:String):Null<EXT_frag_depth> { })
	@:overload(function(extensionName:String):Null<EXT_shader_texture_lod> { })
	@:overload(function(extensionName:String):Null<EXT_sRGB> { })
	@:overload(function(extensionName:String):Null<OES_vertex_array_object> { })
	@:overload(function(extensionName:String):Null<WEBGL_color_buffer_float> { })
	@:overload(function(extensionName:String):Null<WEBGL_compressed_texture_astc> { })
	@:overload(function(extensionName:String):Null<WEBGL_compressed_texture_s3tc_srgb> { })
	@:overload(function(extensionName:String):Null<WEBGL_debug_shaders> { })
	@:overload(function(extensionName:String):Null<js.lib.WEBGL_draw_buffers> { })
	@:overload(function(extensionName:String):Null<WEBGL_lose_context> { })
	@:overload(function(extensionName:String):Null<WEBGL_depth_texture> { })
	@:overload(function(extensionName:String):Null<WEBGL_debug_renderer_info> { })
	@:overload(function(extensionName:String):Null<WEBGL_compressed_texture_s3tc> { })
	@:overload(function(extensionName:String):Null<OES_texture_half_float_linear> { })
	@:overload(function(extensionName:String):Null<OES_texture_half_float> { })
	@:overload(function(extensionName:String):Null<OES_texture_float_linear> { })
	@:overload(function(extensionName:String):Null<OES_texture_float> { })
	@:overload(function(extensionName:String):Null<OES_standard_derivatives> { })
	@:overload(function(extensionName:String):Null<OES_element_index_uint> { })
	@:overload(function(extensionName:String):Null<ANGLE_instanced_arrays> { })
	@:overload(function(extensionName:String):Any { })
	function getExtension(extensionName:String):Null<EXT_blend_minmax>;
	function getFramebufferAttachmentParameter(target:Float, attachment:Float, pname:Float):Any;
	function getParameter(pname:Float):Any;
	function getProgramInfoLog(program:IWebGLProgram):Null<String>;
	function getProgramParameter(program:IWebGLProgram, pname:Float):Any;
	function getRenderbufferParameter(target:Float, pname:Float):Any;
	function getShaderInfoLog(shader:IWebGLShader):Null<String>;
	function getShaderParameter(shader:IWebGLShader, pname:Float):Any;
	function getShaderPrecisionFormat(shadertype:Float, precisiontype:Float):Null<IWebGLShaderPrecisionFormat>;
	function getShaderSource(shader:IWebGLShader):Null<String>;
	function getSupportedExtensions():Null<std.Array<String>>;
	function getTexParameter(target:Float, pname:Float):Any;
	function getUniform(program:IWebGLProgram, location:IWebGLUniformLocation):Any;
	function getUniformLocation(program:IWebGLProgram, name:String):Null<IWebGLUniformLocation>;
	function getVertexAttrib(index:Float, pname:Float):Any;
	function getVertexAttribOffset(index:Float, pname:Float):Float;
	function hint(target:Float, mode:Float):Void;
	function isBuffer(buffer:Null<IWebGLBuffer>):Bool;
	function isContextLost():Bool;
	function isEnabled(cap:Float):Bool;
	function isFramebuffer(framebuffer:Null<IWebGLFramebuffer>):Bool;
	function isProgram(program:Null<IWebGLProgram>):Bool;
	function isRenderbuffer(renderbuffer:Null<IWebGLRenderbuffer>):Bool;
	function isShader(shader:Null<IWebGLShader>):Bool;
	function isTexture(texture:Null<IWebGLTexture>):Bool;
	function lineWidth(width:Float):Void;
	function linkProgram(program:IWebGLProgram):Void;
	function pixelStorei(pname:Float, param:haxe.extern.EitherType<Float, Bool>):Void;
	function polygonOffset(factor:Float, units:Float):Void;
	function renderbufferStorage(target:Float, internalformat:Float, width:Float, height:Float):Void;
	function sampleCoverage(value:Float, invert:Bool):Void;
	function scissor(x:Float, y:Float, width:Float, height:Float):Void;
	function shaderSource(shader:IWebGLShader, source:String):Void;
	function stencilFunc(func:Float, ref:Float, mask:Float):Void;
	function stencilFuncSeparate(face:Float, func:Float, ref:Float, mask:Float):Void;
	function stencilMask(mask:Float):Void;
	function stencilMaskSeparate(face:Float, mask:Float):Void;
	function stencilOp(fail:Float, zfail:Float, zpass:Float):Void;
	function stencilOpSeparate(face:Float, fail:Float, zfail:Float, zpass:Float):Void;
	function texParameterf(target:Float, pname:Float, param:Float):Void;
	function texParameteri(target:Float, pname:Float, param:Float):Void;
	function uniform1f(location:Null<IWebGLUniformLocation>, x:Float):Void;
	function uniform1i(location:Null<IWebGLUniformLocation>, x:Float):Void;
	function uniform2f(location:Null<IWebGLUniformLocation>, x:Float, y:Float):Void;
	function uniform2i(location:Null<IWebGLUniformLocation>, x:Float, y:Float):Void;
	function uniform3f(location:Null<IWebGLUniformLocation>, x:Float, y:Float, z:Float):Void;
	function uniform3i(location:Null<IWebGLUniformLocation>, x:Float, y:Float, z:Float):Void;
	function uniform4f(location:Null<IWebGLUniformLocation>, x:Float, y:Float, z:Float, w:Float):Void;
	function uniform4i(location:Null<IWebGLUniformLocation>, x:Float, y:Float, z:Float, w:Float):Void;
	function useProgram(program:Null<IWebGLProgram>):Void;
	function validateProgram(program:IWebGLProgram):Void;
	function vertexAttrib1f(index:Float, x:Float):Void;
	@:overload(function(index:Float, values:js.lib.Iterable<Float>):Void { })
	function vertexAttrib1fv(index:Float, values:haxe.extern.EitherType<js.lib.IFloat32Array, std.Array<Float>>):Void;
	function vertexAttrib2f(index:Float, x:Float, y:Float):Void;
	@:overload(function(index:Float, values:js.lib.Iterable<Float>):Void { })
	function vertexAttrib2fv(index:Float, values:haxe.extern.EitherType<js.lib.IFloat32Array, std.Array<Float>>):Void;
	function vertexAttrib3f(index:Float, x:Float, y:Float, z:Float):Void;
	@:overload(function(index:Float, values:js.lib.Iterable<Float>):Void { })
	function vertexAttrib3fv(index:Float, values:haxe.extern.EitherType<js.lib.IFloat32Array, std.Array<Float>>):Void;
	function vertexAttrib4f(index:Float, x:Float, y:Float, z:Float, w:Float):Void;
	@:overload(function(index:Float, values:js.lib.Iterable<Float>):Void { })
	function vertexAttrib4fv(index:Float, values:haxe.extern.EitherType<js.lib.IFloat32Array, std.Array<Float>>):Void;
	function vertexAttribPointer(index:Float, size:Float, type:Float, normalized:Bool, stride:Float, offset:Float):Void;
	function viewport(x:Float, y:Float, width:Float, height:Float):Void;
	final ACTIVE_ATTRIBUTES : Float;
	final ACTIVE_TEXTURE : Float;
	final ACTIVE_UNIFORMS : Float;
	final ALIASED_LINE_WIDTH_RANGE : Float;
	final ALIASED_POINT_SIZE_RANGE : Float;
	final ALPHA : Float;
	final ALPHA_BITS : Float;
	final ALWAYS : Float;
	final ARRAY_BUFFER : Float;
	final ARRAY_BUFFER_BINDING : Float;
	final ATTACHED_SHADERS : Float;
	final BACK : Float;
	final BLEND : Float;
	final BLEND_COLOR : Float;
	final BLEND_DST_ALPHA : Float;
	final BLEND_DST_RGB : Float;
	final BLEND_EQUATION : Float;
	final BLEND_EQUATION_ALPHA : Float;
	final BLEND_EQUATION_RGB : Float;
	final BLEND_SRC_ALPHA : Float;
	final BLEND_SRC_RGB : Float;
	final BLUE_BITS : Float;
	final BOOL : Float;
	final BOOL_VEC2 : Float;
	final BOOL_VEC3 : Float;
	final BOOL_VEC4 : Float;
	final BROWSER_DEFAULT_WEBGL : Float;
	final BUFFER_SIZE : Float;
	final BUFFER_USAGE : Float;
	final BYTE : Float;
	final CCW : Float;
	final CLAMP_TO_EDGE : Float;
	final COLOR_ATTACHMENT0 : Float;
	final COLOR_BUFFER_BIT : Float;
	final COLOR_CLEAR_VALUE : Float;
	final COLOR_WRITEMASK : Float;
	final COMPILE_STATUS : Float;
	final COMPRESSED_TEXTURE_FORMATS : Float;
	final CONSTANT_ALPHA : Float;
	final CONSTANT_COLOR : Float;
	final CONTEXT_LOST_WEBGL : Float;
	final CULL_FACE : Float;
	final CULL_FACE_MODE : Float;
	final CURRENT_PROGRAM : Float;
	final CURRENT_VERTEX_ATTRIB : Float;
	final CW : Float;
	final DECR : Float;
	final DECR_WRAP : Float;
	final DELETE_STATUS : Float;
	final DEPTH_ATTACHMENT : Float;
	final DEPTH_BITS : Float;
	final DEPTH_BUFFER_BIT : Float;
	final DEPTH_CLEAR_VALUE : Float;
	final DEPTH_COMPONENT : Float;
	final DEPTH_COMPONENT16 : Float;
	final DEPTH_FUNC : Float;
	final DEPTH_RANGE : Float;
	final DEPTH_STENCIL : Float;
	final DEPTH_STENCIL_ATTACHMENT : Float;
	final DEPTH_TEST : Float;
	final DEPTH_WRITEMASK : Float;
	final DITHER : Float;
	final DONT_CARE : Float;
	final DST_ALPHA : Float;
	final DST_COLOR : Float;
	final DYNAMIC_DRAW : Float;
	final ELEMENT_ARRAY_BUFFER : Float;
	final ELEMENT_ARRAY_BUFFER_BINDING : Float;
	final EQUAL : Float;
	final FASTEST : Float;
	final FLOAT : Float;
	final FLOAT_MAT2 : Float;
	final FLOAT_MAT3 : Float;
	final FLOAT_MAT4 : Float;
	final FLOAT_VEC2 : Float;
	final FLOAT_VEC3 : Float;
	final FLOAT_VEC4 : Float;
	final FRAGMENT_SHADER : Float;
	final FRAMEBUFFER : Float;
	final FRAMEBUFFER_ATTACHMENT_OBJECT_NAME : Float;
	final FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE : Float;
	final FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE : Float;
	final FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL : Float;
	final FRAMEBUFFER_BINDING : Float;
	final FRAMEBUFFER_COMPLETE : Float;
	final FRAMEBUFFER_INCOMPLETE_ATTACHMENT : Float;
	final FRAMEBUFFER_INCOMPLETE_DIMENSIONS : Float;
	final FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT : Float;
	final FRAMEBUFFER_UNSUPPORTED : Float;
	final FRONT : Float;
	final FRONT_AND_BACK : Float;
	final FRONT_FACE : Float;
	final FUNC_ADD : Float;
	final FUNC_REVERSE_SUBTRACT : Float;
	final FUNC_SUBTRACT : Float;
	final GENERATE_MIPMAP_HINT : Float;
	final GEQUAL : Float;
	final GREATER : Float;
	final GREEN_BITS : Float;
	final HIGH_FLOAT : Float;
	final HIGH_INT : Float;
	final IMPLEMENTATION_COLOR_READ_FORMAT : Float;
	final IMPLEMENTATION_COLOR_READ_TYPE : Float;
	final INCR : Float;
	final INCR_WRAP : Float;
	final INT : Float;
	final INT_VEC2 : Float;
	final INT_VEC3 : Float;
	final INT_VEC4 : Float;
	final INVALID_ENUM : Float;
	final INVALID_FRAMEBUFFER_OPERATION : Float;
	final INVALID_OPERATION : Float;
	final INVALID_VALUE : Float;
	final INVERT : Float;
	final KEEP : Float;
	final LEQUAL : Float;
	final LESS : Float;
	final LINEAR : Float;
	final LINEAR_MIPMAP_LINEAR : Float;
	final LINEAR_MIPMAP_NEAREST : Float;
	final LINES : Float;
	final LINE_LOOP : Float;
	final LINE_STRIP : Float;
	final LINE_WIDTH : Float;
	final LINK_STATUS : Float;
	final LOW_FLOAT : Float;
	final LOW_INT : Float;
	final LUMINANCE : Float;
	final LUMINANCE_ALPHA : Float;
	final MAX_COMBINED_TEXTURE_IMAGE_UNITS : Float;
	final MAX_CUBE_MAP_TEXTURE_SIZE : Float;
	final MAX_FRAGMENT_UNIFORM_VECTORS : Float;
	final MAX_RENDERBUFFER_SIZE : Float;
	final MAX_TEXTURE_IMAGE_UNITS : Float;
	final MAX_TEXTURE_SIZE : Float;
	final MAX_VARYING_VECTORS : Float;
	final MAX_VERTEX_ATTRIBS : Float;
	final MAX_VERTEX_TEXTURE_IMAGE_UNITS : Float;
	final MAX_VERTEX_UNIFORM_VECTORS : Float;
	final MAX_VIEWPORT_DIMS : Float;
	final MEDIUM_FLOAT : Float;
	final MEDIUM_INT : Float;
	final MIRRORED_REPEAT : Float;
	final NEAREST : Float;
	final NEAREST_MIPMAP_LINEAR : Float;
	final NEAREST_MIPMAP_NEAREST : Float;
	final NEVER : Float;
	final NICEST : Float;
	final NONE : Float;
	final NOTEQUAL : Float;
	final NO_ERROR : Float;
	final ONE : Float;
	final ONE_MINUS_CONSTANT_ALPHA : Float;
	final ONE_MINUS_CONSTANT_COLOR : Float;
	final ONE_MINUS_DST_ALPHA : Float;
	final ONE_MINUS_DST_COLOR : Float;
	final ONE_MINUS_SRC_ALPHA : Float;
	final ONE_MINUS_SRC_COLOR : Float;
	final OUT_OF_MEMORY : Float;
	final PACK_ALIGNMENT : Float;
	final POINTS : Float;
	final POLYGON_OFFSET_FACTOR : Float;
	final POLYGON_OFFSET_FILL : Float;
	final POLYGON_OFFSET_UNITS : Float;
	final RED_BITS : Float;
	final RENDERBUFFER : Float;
	final RENDERBUFFER_ALPHA_SIZE : Float;
	final RENDERBUFFER_BINDING : Float;
	final RENDERBUFFER_BLUE_SIZE : Float;
	final RENDERBUFFER_DEPTH_SIZE : Float;
	final RENDERBUFFER_GREEN_SIZE : Float;
	final RENDERBUFFER_HEIGHT : Float;
	final RENDERBUFFER_INTERNAL_FORMAT : Float;
	final RENDERBUFFER_RED_SIZE : Float;
	final RENDERBUFFER_STENCIL_SIZE : Float;
	final RENDERBUFFER_WIDTH : Float;
	final RENDERER : Float;
	final REPEAT : Float;
	final REPLACE : Float;
	final RGB : Float;
	final RGB565 : Float;
	final RGB5_A1 : Float;
	final RGBA : Float;
	final RGBA4 : Float;
	final SAMPLER_2D : Float;
	final SAMPLER_CUBE : Float;
	final SAMPLES : Float;
	final SAMPLE_ALPHA_TO_COVERAGE : Float;
	final SAMPLE_BUFFERS : Float;
	final SAMPLE_COVERAGE : Float;
	final SAMPLE_COVERAGE_INVERT : Float;
	final SAMPLE_COVERAGE_VALUE : Float;
	final SCISSOR_BOX : Float;
	final SCISSOR_TEST : Float;
	final SHADER_TYPE : Float;
	final SHADING_LANGUAGE_VERSION : Float;
	final SHORT : Float;
	final SRC_ALPHA : Float;
	final SRC_ALPHA_SATURATE : Float;
	final SRC_COLOR : Float;
	final STATIC_DRAW : Float;
	final STENCIL_ATTACHMENT : Float;
	final STENCIL_BACK_FAIL : Float;
	final STENCIL_BACK_FUNC : Float;
	final STENCIL_BACK_PASS_DEPTH_FAIL : Float;
	final STENCIL_BACK_PASS_DEPTH_PASS : Float;
	final STENCIL_BACK_REF : Float;
	final STENCIL_BACK_VALUE_MASK : Float;
	final STENCIL_BACK_WRITEMASK : Float;
	final STENCIL_BITS : Float;
	final STENCIL_BUFFER_BIT : Float;
	final STENCIL_CLEAR_VALUE : Float;
	final STENCIL_FAIL : Float;
	final STENCIL_FUNC : Float;
	final STENCIL_INDEX8 : Float;
	final STENCIL_PASS_DEPTH_FAIL : Float;
	final STENCIL_PASS_DEPTH_PASS : Float;
	final STENCIL_REF : Float;
	final STENCIL_TEST : Float;
	final STENCIL_VALUE_MASK : Float;
	final STENCIL_WRITEMASK : Float;
	final STREAM_DRAW : Float;
	final SUBPIXEL_BITS : Float;
	final TEXTURE : Float;
	final TEXTURE0 : Float;
	final TEXTURE1 : Float;
	final TEXTURE10 : Float;
	final TEXTURE11 : Float;
	final TEXTURE12 : Float;
	final TEXTURE13 : Float;
	final TEXTURE14 : Float;
	final TEXTURE15 : Float;
	final TEXTURE16 : Float;
	final TEXTURE17 : Float;
	final TEXTURE18 : Float;
	final TEXTURE19 : Float;
	final TEXTURE2 : Float;
	final TEXTURE20 : Float;
	final TEXTURE21 : Float;
	final TEXTURE22 : Float;
	final TEXTURE23 : Float;
	final TEXTURE24 : Float;
	final TEXTURE25 : Float;
	final TEXTURE26 : Float;
	final TEXTURE27 : Float;
	final TEXTURE28 : Float;
	final TEXTURE29 : Float;
	final TEXTURE3 : Float;
	final TEXTURE30 : Float;
	final TEXTURE31 : Float;
	final TEXTURE4 : Float;
	final TEXTURE5 : Float;
	final TEXTURE6 : Float;
	final TEXTURE7 : Float;
	final TEXTURE8 : Float;
	final TEXTURE9 : Float;
	final TEXTURE_2D : Float;
	final TEXTURE_BINDING_2D : Float;
	final TEXTURE_BINDING_CUBE_MAP : Float;
	final TEXTURE_CUBE_MAP : Float;
	final TEXTURE_CUBE_MAP_NEGATIVE_X : Float;
	final TEXTURE_CUBE_MAP_NEGATIVE_Y : Float;
	final TEXTURE_CUBE_MAP_NEGATIVE_Z : Float;
	final TEXTURE_CUBE_MAP_POSITIVE_X : Float;
	final TEXTURE_CUBE_MAP_POSITIVE_Y : Float;
	final TEXTURE_CUBE_MAP_POSITIVE_Z : Float;
	final TEXTURE_MAG_FILTER : Float;
	final TEXTURE_MIN_FILTER : Float;
	final TEXTURE_WRAP_S : Float;
	final TEXTURE_WRAP_T : Float;
	final TRIANGLES : Float;
	final TRIANGLE_FAN : Float;
	final TRIANGLE_STRIP : Float;
	final UNPACK_ALIGNMENT : Float;
	final UNPACK_COLORSPACE_CONVERSION_WEBGL : Float;
	final UNPACK_FLIP_Y_WEBGL : Float;
	final UNPACK_PREMULTIPLY_ALPHA_WEBGL : Float;
	final UNSIGNED_BYTE : Float;
	final UNSIGNED_INT : Float;
	final UNSIGNED_SHORT : Float;
	final UNSIGNED_SHORT_4_4_4_4 : Float;
	final UNSIGNED_SHORT_5_5_5_1 : Float;
	final UNSIGNED_SHORT_5_6_5 : Float;
	final VALIDATE_STATUS : Float;
	final VENDOR : Float;
	final VERSION : Float;
	final VERTEX_ATTRIB_ARRAY_BUFFER_BINDING : Float;
	final VERTEX_ATTRIB_ARRAY_ENABLED : Float;
	final VERTEX_ATTRIB_ARRAY_NORMALIZED : Float;
	final VERTEX_ATTRIB_ARRAY_POINTER : Float;
	final VERTEX_ATTRIB_ARRAY_SIZE : Float;
	final VERTEX_ATTRIB_ARRAY_STRIDE : Float;
	final VERTEX_ATTRIB_ARRAY_TYPE : Float;
	final VERTEX_SHADER : Float;
	final VIEWPORT : Float;
	final ZERO : Float;
	static var prototype : IWebGL2RenderingContext;
	@:native("ACTIVE_ATTRIBUTES")
	static final ACTIVE_ATTRIBUTES_ : Float;
	@:native("ACTIVE_TEXTURE")
	static final ACTIVE_TEXTURE_ : Float;
	@:native("ACTIVE_UNIFORMS")
	static final ACTIVE_UNIFORMS_ : Float;
	@:native("ALIASED_LINE_WIDTH_RANGE")
	static final ALIASED_LINE_WIDTH_RANGE_ : Float;
	@:native("ALIASED_POINT_SIZE_RANGE")
	static final ALIASED_POINT_SIZE_RANGE_ : Float;
	@:native("ALPHA")
	static final ALPHA_ : Float;
	@:native("ALPHA_BITS")
	static final ALPHA_BITS_ : Float;
	@:native("ALWAYS")
	static final ALWAYS_ : Float;
	@:native("ARRAY_BUFFER")
	static final ARRAY_BUFFER_ : Float;
	@:native("ARRAY_BUFFER_BINDING")
	static final ARRAY_BUFFER_BINDING_ : Float;
	@:native("ATTACHED_SHADERS")
	static final ATTACHED_SHADERS_ : Float;
	@:native("BACK")
	static final BACK_ : Float;
	@:native("BLEND")
	static final BLEND_ : Float;
	@:native("BLEND_COLOR")
	static final BLEND_COLOR_ : Float;
	@:native("BLEND_DST_ALPHA")
	static final BLEND_DST_ALPHA_ : Float;
	@:native("BLEND_DST_RGB")
	static final BLEND_DST_RGB_ : Float;
	@:native("BLEND_EQUATION")
	static final BLEND_EQUATION_ : Float;
	@:native("BLEND_EQUATION_ALPHA")
	static final BLEND_EQUATION_ALPHA_ : Float;
	@:native("BLEND_EQUATION_RGB")
	static final BLEND_EQUATION_RGB_ : Float;
	@:native("BLEND_SRC_ALPHA")
	static final BLEND_SRC_ALPHA_ : Float;
	@:native("BLEND_SRC_RGB")
	static final BLEND_SRC_RGB_ : Float;
	@:native("BLUE_BITS")
	static final BLUE_BITS_ : Float;
	@:native("BOOL")
	static final BOOL_ : Float;
	@:native("BOOL_VEC2")
	static final BOOL_VEC2_ : Float;
	@:native("BOOL_VEC3")
	static final BOOL_VEC3_ : Float;
	@:native("BOOL_VEC4")
	static final BOOL_VEC4_ : Float;
	@:native("BROWSER_DEFAULT_WEBGL")
	static final BROWSER_DEFAULT_WEBGL_ : Float;
	@:native("BUFFER_SIZE")
	static final BUFFER_SIZE_ : Float;
	@:native("BUFFER_USAGE")
	static final BUFFER_USAGE_ : Float;
	@:native("BYTE")
	static final BYTE_ : Float;
	@:native("CCW")
	static final CCW_ : Float;
	@:native("CLAMP_TO_EDGE")
	static final CLAMP_TO_EDGE_ : Float;
	@:native("COLOR_ATTACHMENT0")
	static final COLOR_ATTACHMENT0_ : Float;
	@:native("COLOR_BUFFER_BIT")
	static final COLOR_BUFFER_BIT_ : Float;
	@:native("COLOR_CLEAR_VALUE")
	static final COLOR_CLEAR_VALUE_ : Float;
	@:native("COLOR_WRITEMASK")
	static final COLOR_WRITEMASK_ : Float;
	@:native("COMPILE_STATUS")
	static final COMPILE_STATUS_ : Float;
	@:native("COMPRESSED_TEXTURE_FORMATS")
	static final COMPRESSED_TEXTURE_FORMATS_ : Float;
	@:native("CONSTANT_ALPHA")
	static final CONSTANT_ALPHA_ : Float;
	@:native("CONSTANT_COLOR")
	static final CONSTANT_COLOR_ : Float;
	@:native("CONTEXT_LOST_WEBGL")
	static final CONTEXT_LOST_WEBGL_ : Float;
	@:native("CULL_FACE")
	static final CULL_FACE_ : Float;
	@:native("CULL_FACE_MODE")
	static final CULL_FACE_MODE_ : Float;
	@:native("CURRENT_PROGRAM")
	static final CURRENT_PROGRAM_ : Float;
	@:native("CURRENT_VERTEX_ATTRIB")
	static final CURRENT_VERTEX_ATTRIB_ : Float;
	@:native("CW")
	static final CW_ : Float;
	@:native("DECR")
	static final DECR_ : Float;
	@:native("DECR_WRAP")
	static final DECR_WRAP_ : Float;
	@:native("DELETE_STATUS")
	static final DELETE_STATUS_ : Float;
	@:native("DEPTH_ATTACHMENT")
	static final DEPTH_ATTACHMENT_ : Float;
	@:native("DEPTH_BITS")
	static final DEPTH_BITS_ : Float;
	@:native("DEPTH_BUFFER_BIT")
	static final DEPTH_BUFFER_BIT_ : Float;
	@:native("DEPTH_CLEAR_VALUE")
	static final DEPTH_CLEAR_VALUE_ : Float;
	@:native("DEPTH_COMPONENT")
	static final DEPTH_COMPONENT_ : Float;
	@:native("DEPTH_COMPONENT16")
	static final DEPTH_COMPONENT16_ : Float;
	@:native("DEPTH_FUNC")
	static final DEPTH_FUNC_ : Float;
	@:native("DEPTH_RANGE")
	static final DEPTH_RANGE_ : Float;
	@:native("DEPTH_STENCIL")
	static final DEPTH_STENCIL_ : Float;
	@:native("DEPTH_STENCIL_ATTACHMENT")
	static final DEPTH_STENCIL_ATTACHMENT_ : Float;
	@:native("DEPTH_TEST")
	static final DEPTH_TEST_ : Float;
	@:native("DEPTH_WRITEMASK")
	static final DEPTH_WRITEMASK_ : Float;
	@:native("DITHER")
	static final DITHER_ : Float;
	@:native("DONT_CARE")
	static final DONT_CARE_ : Float;
	@:native("DST_ALPHA")
	static final DST_ALPHA_ : Float;
	@:native("DST_COLOR")
	static final DST_COLOR_ : Float;
	@:native("DYNAMIC_DRAW")
	static final DYNAMIC_DRAW_ : Float;
	@:native("ELEMENT_ARRAY_BUFFER")
	static final ELEMENT_ARRAY_BUFFER_ : Float;
	@:native("ELEMENT_ARRAY_BUFFER_BINDING")
	static final ELEMENT_ARRAY_BUFFER_BINDING_ : Float;
	@:native("EQUAL")
	static final EQUAL_ : Float;
	@:native("FASTEST")
	static final FASTEST_ : Float;
	@:native("FLOAT")
	static final FLOAT_ : Float;
	@:native("FLOAT_MAT2")
	static final FLOAT_MAT2_ : Float;
	@:native("FLOAT_MAT3")
	static final FLOAT_MAT3_ : Float;
	@:native("FLOAT_MAT4")
	static final FLOAT_MAT4_ : Float;
	@:native("FLOAT_VEC2")
	static final FLOAT_VEC2_ : Float;
	@:native("FLOAT_VEC3")
	static final FLOAT_VEC3_ : Float;
	@:native("FLOAT_VEC4")
	static final FLOAT_VEC4_ : Float;
	@:native("FRAGMENT_SHADER")
	static final FRAGMENT_SHADER_ : Float;
	@:native("FRAMEBUFFER")
	static final FRAMEBUFFER_ : Float;
	@:native("FRAMEBUFFER_ATTACHMENT_OBJECT_NAME")
	static final FRAMEBUFFER_ATTACHMENT_OBJECT_NAME_ : Float;
	@:native("FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE")
	static final FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE_ : Float;
	@:native("FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE")
	static final FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE_ : Float;
	@:native("FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL")
	static final FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL_ : Float;
	@:native("FRAMEBUFFER_BINDING")
	static final FRAMEBUFFER_BINDING_ : Float;
	@:native("FRAMEBUFFER_COMPLETE")
	static final FRAMEBUFFER_COMPLETE_ : Float;
	@:native("FRAMEBUFFER_INCOMPLETE_ATTACHMENT")
	static final FRAMEBUFFER_INCOMPLETE_ATTACHMENT_ : Float;
	@:native("FRAMEBUFFER_INCOMPLETE_DIMENSIONS")
	static final FRAMEBUFFER_INCOMPLETE_DIMENSIONS_ : Float;
	@:native("FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT")
	static final FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT_ : Float;
	@:native("FRAMEBUFFER_UNSUPPORTED")
	static final FRAMEBUFFER_UNSUPPORTED_ : Float;
	@:native("FRONT")
	static final FRONT_ : Float;
	@:native("FRONT_AND_BACK")
	static final FRONT_AND_BACK_ : Float;
	@:native("FRONT_FACE")
	static final FRONT_FACE_ : Float;
	@:native("FUNC_ADD")
	static final FUNC_ADD_ : Float;
	@:native("FUNC_REVERSE_SUBTRACT")
	static final FUNC_REVERSE_SUBTRACT_ : Float;
	@:native("FUNC_SUBTRACT")
	static final FUNC_SUBTRACT_ : Float;
	@:native("GENERATE_MIPMAP_HINT")
	static final GENERATE_MIPMAP_HINT_ : Float;
	@:native("GEQUAL")
	static final GEQUAL_ : Float;
	@:native("GREATER")
	static final GREATER_ : Float;
	@:native("GREEN_BITS")
	static final GREEN_BITS_ : Float;
	@:native("HIGH_FLOAT")
	static final HIGH_FLOAT_ : Float;
	@:native("HIGH_INT")
	static final HIGH_INT_ : Float;
	@:native("IMPLEMENTATION_COLOR_READ_FORMAT")
	static final IMPLEMENTATION_COLOR_READ_FORMAT_ : Float;
	@:native("IMPLEMENTATION_COLOR_READ_TYPE")
	static final IMPLEMENTATION_COLOR_READ_TYPE_ : Float;
	@:native("INCR")
	static final INCR_ : Float;
	@:native("INCR_WRAP")
	static final INCR_WRAP_ : Float;
	@:native("INT")
	static final INT_ : Float;
	@:native("INT_VEC2")
	static final INT_VEC2_ : Float;
	@:native("INT_VEC3")
	static final INT_VEC3_ : Float;
	@:native("INT_VEC4")
	static final INT_VEC4_ : Float;
	@:native("INVALID_ENUM")
	static final INVALID_ENUM_ : Float;
	@:native("INVALID_FRAMEBUFFER_OPERATION")
	static final INVALID_FRAMEBUFFER_OPERATION_ : Float;
	@:native("INVALID_OPERATION")
	static final INVALID_OPERATION_ : Float;
	@:native("INVALID_VALUE")
	static final INVALID_VALUE_ : Float;
	@:native("INVERT")
	static final INVERT_ : Float;
	@:native("KEEP")
	static final KEEP_ : Float;
	@:native("LEQUAL")
	static final LEQUAL_ : Float;
	@:native("LESS")
	static final LESS_ : Float;
	@:native("LINEAR")
	static final LINEAR_ : Float;
	@:native("LINEAR_MIPMAP_LINEAR")
	static final LINEAR_MIPMAP_LINEAR_ : Float;
	@:native("LINEAR_MIPMAP_NEAREST")
	static final LINEAR_MIPMAP_NEAREST_ : Float;
	@:native("LINES")
	static final LINES_ : Float;
	@:native("LINE_LOOP")
	static final LINE_LOOP_ : Float;
	@:native("LINE_STRIP")
	static final LINE_STRIP_ : Float;
	@:native("LINE_WIDTH")
	static final LINE_WIDTH_ : Float;
	@:native("LINK_STATUS")
	static final LINK_STATUS_ : Float;
	@:native("LOW_FLOAT")
	static final LOW_FLOAT_ : Float;
	@:native("LOW_INT")
	static final LOW_INT_ : Float;
	@:native("LUMINANCE")
	static final LUMINANCE_ : Float;
	@:native("LUMINANCE_ALPHA")
	static final LUMINANCE_ALPHA_ : Float;
	@:native("MAX_COMBINED_TEXTURE_IMAGE_UNITS")
	static final MAX_COMBINED_TEXTURE_IMAGE_UNITS_ : Float;
	@:native("MAX_CUBE_MAP_TEXTURE_SIZE")
	static final MAX_CUBE_MAP_TEXTURE_SIZE_ : Float;
	@:native("MAX_FRAGMENT_UNIFORM_VECTORS")
	static final MAX_FRAGMENT_UNIFORM_VECTORS_ : Float;
	@:native("MAX_RENDERBUFFER_SIZE")
	static final MAX_RENDERBUFFER_SIZE_ : Float;
	@:native("MAX_TEXTURE_IMAGE_UNITS")
	static final MAX_TEXTURE_IMAGE_UNITS_ : Float;
	@:native("MAX_TEXTURE_SIZE")
	static final MAX_TEXTURE_SIZE_ : Float;
	@:native("MAX_VARYING_VECTORS")
	static final MAX_VARYING_VECTORS_ : Float;
	@:native("MAX_VERTEX_ATTRIBS")
	static final MAX_VERTEX_ATTRIBS_ : Float;
	@:native("MAX_VERTEX_TEXTURE_IMAGE_UNITS")
	static final MAX_VERTEX_TEXTURE_IMAGE_UNITS_ : Float;
	@:native("MAX_VERTEX_UNIFORM_VECTORS")
	static final MAX_VERTEX_UNIFORM_VECTORS_ : Float;
	@:native("MAX_VIEWPORT_DIMS")
	static final MAX_VIEWPORT_DIMS_ : Float;
	@:native("MEDIUM_FLOAT")
	static final MEDIUM_FLOAT_ : Float;
	@:native("MEDIUM_INT")
	static final MEDIUM_INT_ : Float;
	@:native("MIRRORED_REPEAT")
	static final MIRRORED_REPEAT_ : Float;
	@:native("NEAREST")
	static final NEAREST_ : Float;
	@:native("NEAREST_MIPMAP_LINEAR")
	static final NEAREST_MIPMAP_LINEAR_ : Float;
	@:native("NEAREST_MIPMAP_NEAREST")
	static final NEAREST_MIPMAP_NEAREST_ : Float;
	@:native("NEVER")
	static final NEVER_ : Float;
	@:native("NICEST")
	static final NICEST_ : Float;
	@:native("NONE")
	static final NONE_ : Float;
	@:native("NOTEQUAL")
	static final NOTEQUAL_ : Float;
	@:native("NO_ERROR")
	static final NO_ERROR_ : Float;
	@:native("ONE")
	static final ONE_ : Float;
	@:native("ONE_MINUS_CONSTANT_ALPHA")
	static final ONE_MINUS_CONSTANT_ALPHA_ : Float;
	@:native("ONE_MINUS_CONSTANT_COLOR")
	static final ONE_MINUS_CONSTANT_COLOR_ : Float;
	@:native("ONE_MINUS_DST_ALPHA")
	static final ONE_MINUS_DST_ALPHA_ : Float;
	@:native("ONE_MINUS_DST_COLOR")
	static final ONE_MINUS_DST_COLOR_ : Float;
	@:native("ONE_MINUS_SRC_ALPHA")
	static final ONE_MINUS_SRC_ALPHA_ : Float;
	@:native("ONE_MINUS_SRC_COLOR")
	static final ONE_MINUS_SRC_COLOR_ : Float;
	@:native("OUT_OF_MEMORY")
	static final OUT_OF_MEMORY_ : Float;
	@:native("PACK_ALIGNMENT")
	static final PACK_ALIGNMENT_ : Float;
	@:native("POINTS")
	static final POINTS_ : Float;
	@:native("POLYGON_OFFSET_FACTOR")
	static final POLYGON_OFFSET_FACTOR_ : Float;
	@:native("POLYGON_OFFSET_FILL")
	static final POLYGON_OFFSET_FILL_ : Float;
	@:native("POLYGON_OFFSET_UNITS")
	static final POLYGON_OFFSET_UNITS_ : Float;
	@:native("RED_BITS")
	static final RED_BITS_ : Float;
	@:native("RENDERBUFFER")
	static final RENDERBUFFER_ : Float;
	@:native("RENDERBUFFER_ALPHA_SIZE")
	static final RENDERBUFFER_ALPHA_SIZE_ : Float;
	@:native("RENDERBUFFER_BINDING")
	static final RENDERBUFFER_BINDING_ : Float;
	@:native("RENDERBUFFER_BLUE_SIZE")
	static final RENDERBUFFER_BLUE_SIZE_ : Float;
	@:native("RENDERBUFFER_DEPTH_SIZE")
	static final RENDERBUFFER_DEPTH_SIZE_ : Float;
	@:native("RENDERBUFFER_GREEN_SIZE")
	static final RENDERBUFFER_GREEN_SIZE_ : Float;
	@:native("RENDERBUFFER_HEIGHT")
	static final RENDERBUFFER_HEIGHT_ : Float;
	@:native("RENDERBUFFER_INTERNAL_FORMAT")
	static final RENDERBUFFER_INTERNAL_FORMAT_ : Float;
	@:native("RENDERBUFFER_RED_SIZE")
	static final RENDERBUFFER_RED_SIZE_ : Float;
	@:native("RENDERBUFFER_STENCIL_SIZE")
	static final RENDERBUFFER_STENCIL_SIZE_ : Float;
	@:native("RENDERBUFFER_WIDTH")
	static final RENDERBUFFER_WIDTH_ : Float;
	@:native("RENDERER")
	static final RENDERER_ : Float;
	@:native("REPEAT")
	static final REPEAT_ : Float;
	@:native("REPLACE")
	static final REPLACE_ : Float;
	@:native("RGB")
	static final RGB_ : Float;
	@:native("RGB565")
	static final RGB565_ : Float;
	@:native("RGB5_A1")
	static final RGB5_A1_ : Float;
	@:native("RGBA")
	static final RGBA_ : Float;
	@:native("RGBA4")
	static final RGBA4_ : Float;
	@:native("SAMPLER_2D")
	static final SAMPLER_2D_ : Float;
	@:native("SAMPLER_CUBE")
	static final SAMPLER_CUBE_ : Float;
	@:native("SAMPLES")
	static final SAMPLES_ : Float;
	@:native("SAMPLE_ALPHA_TO_COVERAGE")
	static final SAMPLE_ALPHA_TO_COVERAGE_ : Float;
	@:native("SAMPLE_BUFFERS")
	static final SAMPLE_BUFFERS_ : Float;
	@:native("SAMPLE_COVERAGE")
	static final SAMPLE_COVERAGE_ : Float;
	@:native("SAMPLE_COVERAGE_INVERT")
	static final SAMPLE_COVERAGE_INVERT_ : Float;
	@:native("SAMPLE_COVERAGE_VALUE")
	static final SAMPLE_COVERAGE_VALUE_ : Float;
	@:native("SCISSOR_BOX")
	static final SCISSOR_BOX_ : Float;
	@:native("SCISSOR_TEST")
	static final SCISSOR_TEST_ : Float;
	@:native("SHADER_TYPE")
	static final SHADER_TYPE_ : Float;
	@:native("SHADING_LANGUAGE_VERSION")
	static final SHADING_LANGUAGE_VERSION_ : Float;
	@:native("SHORT")
	static final SHORT_ : Float;
	@:native("SRC_ALPHA")
	static final SRC_ALPHA_ : Float;
	@:native("SRC_ALPHA_SATURATE")
	static final SRC_ALPHA_SATURATE_ : Float;
	@:native("SRC_COLOR")
	static final SRC_COLOR_ : Float;
	@:native("STATIC_DRAW")
	static final STATIC_DRAW_ : Float;
	@:native("STENCIL_ATTACHMENT")
	static final STENCIL_ATTACHMENT_ : Float;
	@:native("STENCIL_BACK_FAIL")
	static final STENCIL_BACK_FAIL_ : Float;
	@:native("STENCIL_BACK_FUNC")
	static final STENCIL_BACK_FUNC_ : Float;
	@:native("STENCIL_BACK_PASS_DEPTH_FAIL")
	static final STENCIL_BACK_PASS_DEPTH_FAIL_ : Float;
	@:native("STENCIL_BACK_PASS_DEPTH_PASS")
	static final STENCIL_BACK_PASS_DEPTH_PASS_ : Float;
	@:native("STENCIL_BACK_REF")
	static final STENCIL_BACK_REF_ : Float;
	@:native("STENCIL_BACK_VALUE_MASK")
	static final STENCIL_BACK_VALUE_MASK_ : Float;
	@:native("STENCIL_BACK_WRITEMASK")
	static final STENCIL_BACK_WRITEMASK_ : Float;
	@:native("STENCIL_BITS")
	static final STENCIL_BITS_ : Float;
	@:native("STENCIL_BUFFER_BIT")
	static final STENCIL_BUFFER_BIT_ : Float;
	@:native("STENCIL_CLEAR_VALUE")
	static final STENCIL_CLEAR_VALUE_ : Float;
	@:native("STENCIL_FAIL")
	static final STENCIL_FAIL_ : Float;
	@:native("STENCIL_FUNC")
	static final STENCIL_FUNC_ : Float;
	@:native("STENCIL_INDEX8")
	static final STENCIL_INDEX8_ : Float;
	@:native("STENCIL_PASS_DEPTH_FAIL")
	static final STENCIL_PASS_DEPTH_FAIL_ : Float;
	@:native("STENCIL_PASS_DEPTH_PASS")
	static final STENCIL_PASS_DEPTH_PASS_ : Float;
	@:native("STENCIL_REF")
	static final STENCIL_REF_ : Float;
	@:native("STENCIL_TEST")
	static final STENCIL_TEST_ : Float;
	@:native("STENCIL_VALUE_MASK")
	static final STENCIL_VALUE_MASK_ : Float;
	@:native("STENCIL_WRITEMASK")
	static final STENCIL_WRITEMASK_ : Float;
	@:native("STREAM_DRAW")
	static final STREAM_DRAW_ : Float;
	@:native("SUBPIXEL_BITS")
	static final SUBPIXEL_BITS_ : Float;
	@:native("TEXTURE")
	static final TEXTURE_ : Float;
	@:native("TEXTURE0")
	static final TEXTURE0_ : Float;
	@:native("TEXTURE1")
	static final TEXTURE1_ : Float;
	@:native("TEXTURE10")
	static final TEXTURE10_ : Float;
	@:native("TEXTURE11")
	static final TEXTURE11_ : Float;
	@:native("TEXTURE12")
	static final TEXTURE12_ : Float;
	@:native("TEXTURE13")
	static final TEXTURE13_ : Float;
	@:native("TEXTURE14")
	static final TEXTURE14_ : Float;
	@:native("TEXTURE15")
	static final TEXTURE15_ : Float;
	@:native("TEXTURE16")
	static final TEXTURE16_ : Float;
	@:native("TEXTURE17")
	static final TEXTURE17_ : Float;
	@:native("TEXTURE18")
	static final TEXTURE18_ : Float;
	@:native("TEXTURE19")
	static final TEXTURE19_ : Float;
	@:native("TEXTURE2")
	static final TEXTURE2_ : Float;
	@:native("TEXTURE20")
	static final TEXTURE20_ : Float;
	@:native("TEXTURE21")
	static final TEXTURE21_ : Float;
	@:native("TEXTURE22")
	static final TEXTURE22_ : Float;
	@:native("TEXTURE23")
	static final TEXTURE23_ : Float;
	@:native("TEXTURE24")
	static final TEXTURE24_ : Float;
	@:native("TEXTURE25")
	static final TEXTURE25_ : Float;
	@:native("TEXTURE26")
	static final TEXTURE26_ : Float;
	@:native("TEXTURE27")
	static final TEXTURE27_ : Float;
	@:native("TEXTURE28")
	static final TEXTURE28_ : Float;
	@:native("TEXTURE29")
	static final TEXTURE29_ : Float;
	@:native("TEXTURE3")
	static final TEXTURE3_ : Float;
	@:native("TEXTURE30")
	static final TEXTURE30_ : Float;
	@:native("TEXTURE31")
	static final TEXTURE31_ : Float;
	@:native("TEXTURE4")
	static final TEXTURE4_ : Float;
	@:native("TEXTURE5")
	static final TEXTURE5_ : Float;
	@:native("TEXTURE6")
	static final TEXTURE6_ : Float;
	@:native("TEXTURE7")
	static final TEXTURE7_ : Float;
	@:native("TEXTURE8")
	static final TEXTURE8_ : Float;
	@:native("TEXTURE9")
	static final TEXTURE9_ : Float;
	@:native("TEXTURE_2D")
	static final TEXTURE_2D_ : Float;
	@:native("TEXTURE_BINDING_2D")
	static final TEXTURE_BINDING_2D_ : Float;
	@:native("TEXTURE_BINDING_CUBE_MAP")
	static final TEXTURE_BINDING_CUBE_MAP_ : Float;
	@:native("TEXTURE_CUBE_MAP")
	static final TEXTURE_CUBE_MAP_ : Float;
	@:native("TEXTURE_CUBE_MAP_NEGATIVE_X")
	static final TEXTURE_CUBE_MAP_NEGATIVE_X_ : Float;
	@:native("TEXTURE_CUBE_MAP_NEGATIVE_Y")
	static final TEXTURE_CUBE_MAP_NEGATIVE_Y_ : Float;
	@:native("TEXTURE_CUBE_MAP_NEGATIVE_Z")
	static final TEXTURE_CUBE_MAP_NEGATIVE_Z_ : Float;
	@:native("TEXTURE_CUBE_MAP_POSITIVE_X")
	static final TEXTURE_CUBE_MAP_POSITIVE_X_ : Float;
	@:native("TEXTURE_CUBE_MAP_POSITIVE_Y")
	static final TEXTURE_CUBE_MAP_POSITIVE_Y_ : Float;
	@:native("TEXTURE_CUBE_MAP_POSITIVE_Z")
	static final TEXTURE_CUBE_MAP_POSITIVE_Z_ : Float;
	@:native("TEXTURE_MAG_FILTER")
	static final TEXTURE_MAG_FILTER_ : Float;
	@:native("TEXTURE_MIN_FILTER")
	static final TEXTURE_MIN_FILTER_ : Float;
	@:native("TEXTURE_WRAP_S")
	static final TEXTURE_WRAP_S_ : Float;
	@:native("TEXTURE_WRAP_T")
	static final TEXTURE_WRAP_T_ : Float;
	@:native("TRIANGLES")
	static final TRIANGLES_ : Float;
	@:native("TRIANGLE_FAN")
	static final TRIANGLE_FAN_ : Float;
	@:native("TRIANGLE_STRIP")
	static final TRIANGLE_STRIP_ : Float;
	@:native("UNPACK_ALIGNMENT")
	static final UNPACK_ALIGNMENT_ : Float;
	@:native("UNPACK_COLORSPACE_CONVERSION_WEBGL")
	static final UNPACK_COLORSPACE_CONVERSION_WEBGL_ : Float;
	@:native("UNPACK_FLIP_Y_WEBGL")
	static final UNPACK_FLIP_Y_WEBGL_ : Float;
	@:native("UNPACK_PREMULTIPLY_ALPHA_WEBGL")
	static final UNPACK_PREMULTIPLY_ALPHA_WEBGL_ : Float;
	@:native("UNSIGNED_BYTE")
	static final UNSIGNED_BYTE_ : Float;
	@:native("UNSIGNED_INT")
	static final UNSIGNED_INT_ : Float;
	@:native("UNSIGNED_SHORT")
	static final UNSIGNED_SHORT_ : Float;
	@:native("UNSIGNED_SHORT_4_4_4_4")
	static final UNSIGNED_SHORT_4_4_4_4_ : Float;
	@:native("UNSIGNED_SHORT_5_5_5_1")
	static final UNSIGNED_SHORT_5_5_5_1_ : Float;
	@:native("UNSIGNED_SHORT_5_6_5")
	static final UNSIGNED_SHORT_5_6_5_ : Float;
	@:native("VALIDATE_STATUS")
	static final VALIDATE_STATUS_ : Float;
	@:native("VENDOR")
	static final VENDOR_ : Float;
	@:native("VERSION")
	static final VERSION_ : Float;
	@:native("VERTEX_ATTRIB_ARRAY_BUFFER_BINDING")
	static final VERTEX_ATTRIB_ARRAY_BUFFER_BINDING_ : Float;
	@:native("VERTEX_ATTRIB_ARRAY_ENABLED")
	static final VERTEX_ATTRIB_ARRAY_ENABLED_ : Float;
	@:native("VERTEX_ATTRIB_ARRAY_NORMALIZED")
	static final VERTEX_ATTRIB_ARRAY_NORMALIZED_ : Float;
	@:native("VERTEX_ATTRIB_ARRAY_POINTER")
	static final VERTEX_ATTRIB_ARRAY_POINTER_ : Float;
	@:native("VERTEX_ATTRIB_ARRAY_SIZE")
	static final VERTEX_ATTRIB_ARRAY_SIZE_ : Float;
	@:native("VERTEX_ATTRIB_ARRAY_STRIDE")
	static final VERTEX_ATTRIB_ARRAY_STRIDE_ : Float;
	@:native("VERTEX_ATTRIB_ARRAY_TYPE")
	static final VERTEX_ATTRIB_ARRAY_TYPE_ : Float;
	@:native("VERTEX_SHADER")
	static final VERTEX_SHADER_ : Float;
	@:native("VIEWPORT")
	static final VIEWPORT_ : Float;
	@:native("ZERO")
	static final ZERO_ : Float;
	@:native("ACTIVE_UNIFORM_BLOCKS")
	static final ACTIVE_UNIFORM_BLOCKS_ : Float;
	@:native("ALREADY_SIGNALED")
	static final ALREADY_SIGNALED_ : Float;
	@:native("ANY_SAMPLES_PASSED")
	static final ANY_SAMPLES_PASSED_ : Float;
	@:native("ANY_SAMPLES_PASSED_CONSERVATIVE")
	static final ANY_SAMPLES_PASSED_CONSERVATIVE_ : Float;
	@:native("COLOR")
	static final COLOR_ : Float;
	@:native("COLOR_ATTACHMENT1")
	static final COLOR_ATTACHMENT1_ : Float;
	@:native("COLOR_ATTACHMENT10")
	static final COLOR_ATTACHMENT10_ : Float;
	@:native("COLOR_ATTACHMENT11")
	static final COLOR_ATTACHMENT11_ : Float;
	@:native("COLOR_ATTACHMENT12")
	static final COLOR_ATTACHMENT12_ : Float;
	@:native("COLOR_ATTACHMENT13")
	static final COLOR_ATTACHMENT13_ : Float;
	@:native("COLOR_ATTACHMENT14")
	static final COLOR_ATTACHMENT14_ : Float;
	@:native("COLOR_ATTACHMENT15")
	static final COLOR_ATTACHMENT15_ : Float;
	@:native("COLOR_ATTACHMENT2")
	static final COLOR_ATTACHMENT2_ : Float;
	@:native("COLOR_ATTACHMENT3")
	static final COLOR_ATTACHMENT3_ : Float;
	@:native("COLOR_ATTACHMENT4")
	static final COLOR_ATTACHMENT4_ : Float;
	@:native("COLOR_ATTACHMENT5")
	static final COLOR_ATTACHMENT5_ : Float;
	@:native("COLOR_ATTACHMENT6")
	static final COLOR_ATTACHMENT6_ : Float;
	@:native("COLOR_ATTACHMENT7")
	static final COLOR_ATTACHMENT7_ : Float;
	@:native("COLOR_ATTACHMENT8")
	static final COLOR_ATTACHMENT8_ : Float;
	@:native("COLOR_ATTACHMENT9")
	static final COLOR_ATTACHMENT9_ : Float;
	@:native("COMPARE_REF_TO_TEXTURE")
	static final COMPARE_REF_TO_TEXTURE_ : Float;
	@:native("CONDITION_SATISFIED")
	static final CONDITION_SATISFIED_ : Float;
	@:native("COPY_READ_BUFFER")
	static final COPY_READ_BUFFER_ : Float;
	@:native("COPY_READ_BUFFER_BINDING")
	static final COPY_READ_BUFFER_BINDING_ : Float;
	@:native("COPY_WRITE_BUFFER")
	static final COPY_WRITE_BUFFER_ : Float;
	@:native("COPY_WRITE_BUFFER_BINDING")
	static final COPY_WRITE_BUFFER_BINDING_ : Float;
	@:native("CURRENT_QUERY")
	static final CURRENT_QUERY_ : Float;
	@:native("DEPTH")
	static final DEPTH_ : Float;
	@:native("DEPTH24_STENCIL8")
	static final DEPTH24_STENCIL8_ : Float;
	@:native("DEPTH32F_STENCIL8")
	static final DEPTH32F_STENCIL8_ : Float;
	@:native("DEPTH_COMPONENT24")
	static final DEPTH_COMPONENT24_ : Float;
	@:native("DEPTH_COMPONENT32F")
	static final DEPTH_COMPONENT32F_ : Float;
	@:native("DRAW_BUFFER0")
	static final DRAW_BUFFER0_ : Float;
	@:native("DRAW_BUFFER1")
	static final DRAW_BUFFER1_ : Float;
	@:native("DRAW_BUFFER10")
	static final DRAW_BUFFER10_ : Float;
	@:native("DRAW_BUFFER11")
	static final DRAW_BUFFER11_ : Float;
	@:native("DRAW_BUFFER12")
	static final DRAW_BUFFER12_ : Float;
	@:native("DRAW_BUFFER13")
	static final DRAW_BUFFER13_ : Float;
	@:native("DRAW_BUFFER14")
	static final DRAW_BUFFER14_ : Float;
	@:native("DRAW_BUFFER15")
	static final DRAW_BUFFER15_ : Float;
	@:native("DRAW_BUFFER2")
	static final DRAW_BUFFER2_ : Float;
	@:native("DRAW_BUFFER3")
	static final DRAW_BUFFER3_ : Float;
	@:native("DRAW_BUFFER4")
	static final DRAW_BUFFER4_ : Float;
	@:native("DRAW_BUFFER5")
	static final DRAW_BUFFER5_ : Float;
	@:native("DRAW_BUFFER6")
	static final DRAW_BUFFER6_ : Float;
	@:native("DRAW_BUFFER7")
	static final DRAW_BUFFER7_ : Float;
	@:native("DRAW_BUFFER8")
	static final DRAW_BUFFER8_ : Float;
	@:native("DRAW_BUFFER9")
	static final DRAW_BUFFER9_ : Float;
	@:native("DRAW_FRAMEBUFFER")
	static final DRAW_FRAMEBUFFER_ : Float;
	@:native("DRAW_FRAMEBUFFER_BINDING")
	static final DRAW_FRAMEBUFFER_BINDING_ : Float;
	@:native("DYNAMIC_COPY")
	static final DYNAMIC_COPY_ : Float;
	@:native("DYNAMIC_READ")
	static final DYNAMIC_READ_ : Float;
	@:native("FLOAT_32_UNSIGNED_INT_24_8_REV")
	static final FLOAT_32_UNSIGNED_INT_24_8_REV_ : Float;
	@:native("FLOAT_MAT2x3")
	static final FLOAT_MAT2x3_ : Float;
	@:native("FLOAT_MAT2x4")
	static final FLOAT_MAT2x4_ : Float;
	@:native("FLOAT_MAT3x2")
	static final FLOAT_MAT3x2_ : Float;
	@:native("FLOAT_MAT3x4")
	static final FLOAT_MAT3x4_ : Float;
	@:native("FLOAT_MAT4x2")
	static final FLOAT_MAT4x2_ : Float;
	@:native("FLOAT_MAT4x3")
	static final FLOAT_MAT4x3_ : Float;
	@:native("FRAGMENT_SHADER_DERIVATIVE_HINT")
	static final FRAGMENT_SHADER_DERIVATIVE_HINT_ : Float;
	@:native("FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE")
	static final FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE_ : Float;
	@:native("FRAMEBUFFER_ATTACHMENT_BLUE_SIZE")
	static final FRAMEBUFFER_ATTACHMENT_BLUE_SIZE_ : Float;
	@:native("FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING")
	static final FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING_ : Float;
	@:native("FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE")
	static final FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE_ : Float;
	@:native("FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE")
	static final FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE_ : Float;
	@:native("FRAMEBUFFER_ATTACHMENT_GREEN_SIZE")
	static final FRAMEBUFFER_ATTACHMENT_GREEN_SIZE_ : Float;
	@:native("FRAMEBUFFER_ATTACHMENT_RED_SIZE")
	static final FRAMEBUFFER_ATTACHMENT_RED_SIZE_ : Float;
	@:native("FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE")
	static final FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE_ : Float;
	@:native("FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER")
	static final FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER_ : Float;
	@:native("FRAMEBUFFER_DEFAULT")
	static final FRAMEBUFFER_DEFAULT_ : Float;
	@:native("FRAMEBUFFER_INCOMPLETE_MULTISAMPLE")
	static final FRAMEBUFFER_INCOMPLETE_MULTISAMPLE_ : Float;
	@:native("HALF_FLOAT")
	static final HALF_FLOAT_ : Float;
	@:native("INTERLEAVED_ATTRIBS")
	static final INTERLEAVED_ATTRIBS_ : Float;
	@:native("INT_2_10_10_10_REV")
	static final INT_2_10_10_10_REV_ : Float;
	@:native("INT_SAMPLER_2D")
	static final INT_SAMPLER_2D_ : Float;
	@:native("INT_SAMPLER_2D_ARRAY")
	static final INT_SAMPLER_2D_ARRAY_ : Float;
	@:native("INT_SAMPLER_3D")
	static final INT_SAMPLER_3D_ : Float;
	@:native("INT_SAMPLER_CUBE")
	static final INT_SAMPLER_CUBE_ : Float;
	@:native("INVALID_INDEX")
	static final INVALID_INDEX_ : Float;
	@:native("MAX")
	static final MAX_ : Float;
	@:native("MAX_3D_TEXTURE_SIZE")
	static final MAX_3D_TEXTURE_SIZE_ : Float;
	@:native("MAX_ARRAY_TEXTURE_LAYERS")
	static final MAX_ARRAY_TEXTURE_LAYERS_ : Float;
	@:native("MAX_CLIENT_WAIT_TIMEOUT_WEBGL")
	static final MAX_CLIENT_WAIT_TIMEOUT_WEBGL_ : Float;
	@:native("MAX_COLOR_ATTACHMENTS")
	static final MAX_COLOR_ATTACHMENTS_ : Float;
	@:native("MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS")
	static final MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS_ : Float;
	@:native("MAX_COMBINED_UNIFORM_BLOCKS")
	static final MAX_COMBINED_UNIFORM_BLOCKS_ : Float;
	@:native("MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS")
	static final MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS_ : Float;
	@:native("MAX_DRAW_BUFFERS")
	static final MAX_DRAW_BUFFERS_ : Float;
	@:native("MAX_ELEMENTS_INDICES")
	static final MAX_ELEMENTS_INDICES_ : Float;
	@:native("MAX_ELEMENTS_VERTICES")
	static final MAX_ELEMENTS_VERTICES_ : Float;
	@:native("MAX_ELEMENT_INDEX")
	static final MAX_ELEMENT_INDEX_ : Float;
	@:native("MAX_FRAGMENT_INPUT_COMPONENTS")
	static final MAX_FRAGMENT_INPUT_COMPONENTS_ : Float;
	@:native("MAX_FRAGMENT_UNIFORM_BLOCKS")
	static final MAX_FRAGMENT_UNIFORM_BLOCKS_ : Float;
	@:native("MAX_FRAGMENT_UNIFORM_COMPONENTS")
	static final MAX_FRAGMENT_UNIFORM_COMPONENTS_ : Float;
	@:native("MAX_PROGRAM_TEXEL_OFFSET")
	static final MAX_PROGRAM_TEXEL_OFFSET_ : Float;
	@:native("MAX_SAMPLES")
	static final MAX_SAMPLES_ : Float;
	@:native("MAX_SERVER_WAIT_TIMEOUT")
	static final MAX_SERVER_WAIT_TIMEOUT_ : Float;
	@:native("MAX_TEXTURE_LOD_BIAS")
	static final MAX_TEXTURE_LOD_BIAS_ : Float;
	@:native("MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS")
	static final MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS_ : Float;
	@:native("MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS")
	static final MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS_ : Float;
	@:native("MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS")
	static final MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS_ : Float;
	@:native("MAX_UNIFORM_BLOCK_SIZE")
	static final MAX_UNIFORM_BLOCK_SIZE_ : Float;
	@:native("MAX_UNIFORM_BUFFER_BINDINGS")
	static final MAX_UNIFORM_BUFFER_BINDINGS_ : Float;
	@:native("MAX_VARYING_COMPONENTS")
	static final MAX_VARYING_COMPONENTS_ : Float;
	@:native("MAX_VERTEX_OUTPUT_COMPONENTS")
	static final MAX_VERTEX_OUTPUT_COMPONENTS_ : Float;
	@:native("MAX_VERTEX_UNIFORM_BLOCKS")
	static final MAX_VERTEX_UNIFORM_BLOCKS_ : Float;
	@:native("MAX_VERTEX_UNIFORM_COMPONENTS")
	static final MAX_VERTEX_UNIFORM_COMPONENTS_ : Float;
	@:native("MIN")
	static final MIN_ : Float;
	@:native("MIN_PROGRAM_TEXEL_OFFSET")
	static final MIN_PROGRAM_TEXEL_OFFSET_ : Float;
	@:native("OBJECT_TYPE")
	static final OBJECT_TYPE_ : Float;
	@:native("PACK_ROW_LENGTH")
	static final PACK_ROW_LENGTH_ : Float;
	@:native("PACK_SKIP_PIXELS")
	static final PACK_SKIP_PIXELS_ : Float;
	@:native("PACK_SKIP_ROWS")
	static final PACK_SKIP_ROWS_ : Float;
	@:native("PIXEL_PACK_BUFFER")
	static final PIXEL_PACK_BUFFER_ : Float;
	@:native("PIXEL_PACK_BUFFER_BINDING")
	static final PIXEL_PACK_BUFFER_BINDING_ : Float;
	@:native("PIXEL_UNPACK_BUFFER")
	static final PIXEL_UNPACK_BUFFER_ : Float;
	@:native("PIXEL_UNPACK_BUFFER_BINDING")
	static final PIXEL_UNPACK_BUFFER_BINDING_ : Float;
	@:native("QUERY_RESULT")
	static final QUERY_RESULT_ : Float;
	@:native("QUERY_RESULT_AVAILABLE")
	static final QUERY_RESULT_AVAILABLE_ : Float;
	@:native("R11F_G11F_B10F")
	static final R11F_G11F_B10F_ : Float;
	@:native("R16F")
	static final R16F_ : Float;
	@:native("R16I")
	static final R16I_ : Float;
	@:native("R16UI")
	static final R16UI_ : Float;
	@:native("R32F")
	static final R32F_ : Float;
	@:native("R32I")
	static final R32I_ : Float;
	@:native("R32UI")
	static final R32UI_ : Float;
	@:native("R8")
	static final R8_ : Float;
	@:native("R8I")
	static final R8I_ : Float;
	@:native("R8UI")
	static final R8UI_ : Float;
	@:native("R8_SNORM")
	static final R8_SNORM_ : Float;
	@:native("RASTERIZER_DISCARD")
	static final RASTERIZER_DISCARD_ : Float;
	@:native("READ_BUFFER")
	static final READ_BUFFER_ : Float;
	@:native("READ_FRAMEBUFFER")
	static final READ_FRAMEBUFFER_ : Float;
	@:native("READ_FRAMEBUFFER_BINDING")
	static final READ_FRAMEBUFFER_BINDING_ : Float;
	@:native("RED")
	static final RED_ : Float;
	@:native("RED_INTEGER")
	static final RED_INTEGER_ : Float;
	@:native("RENDERBUFFER_SAMPLES")
	static final RENDERBUFFER_SAMPLES_ : Float;
	@:native("RG")
	static final RG_ : Float;
	@:native("RG16F")
	static final RG16F_ : Float;
	@:native("RG16I")
	static final RG16I_ : Float;
	@:native("RG16UI")
	static final RG16UI_ : Float;
	@:native("RG32F")
	static final RG32F_ : Float;
	@:native("RG32I")
	static final RG32I_ : Float;
	@:native("RG32UI")
	static final RG32UI_ : Float;
	@:native("RG8")
	static final RG8_ : Float;
	@:native("RG8I")
	static final RG8I_ : Float;
	@:native("RG8UI")
	static final RG8UI_ : Float;
	@:native("RG8_SNORM")
	static final RG8_SNORM_ : Float;
	@:native("RGB10_A2")
	static final RGB10_A2_ : Float;
	@:native("RGB10_A2UI")
	static final RGB10_A2UI_ : Float;
	@:native("RGB16F")
	static final RGB16F_ : Float;
	@:native("RGB16I")
	static final RGB16I_ : Float;
	@:native("RGB16UI")
	static final RGB16UI_ : Float;
	@:native("RGB32F")
	static final RGB32F_ : Float;
	@:native("RGB32I")
	static final RGB32I_ : Float;
	@:native("RGB32UI")
	static final RGB32UI_ : Float;
	@:native("RGB8")
	static final RGB8_ : Float;
	@:native("RGB8I")
	static final RGB8I_ : Float;
	@:native("RGB8UI")
	static final RGB8UI_ : Float;
	@:native("RGB8_SNORM")
	static final RGB8_SNORM_ : Float;
	@:native("RGB9_E5")
	static final RGB9_E5_ : Float;
	@:native("RGBA16F")
	static final RGBA16F_ : Float;
	@:native("RGBA16I")
	static final RGBA16I_ : Float;
	@:native("RGBA16UI")
	static final RGBA16UI_ : Float;
	@:native("RGBA32F")
	static final RGBA32F_ : Float;
	@:native("RGBA32I")
	static final RGBA32I_ : Float;
	@:native("RGBA32UI")
	static final RGBA32UI_ : Float;
	@:native("RGBA8")
	static final RGBA8_ : Float;
	@:native("RGBA8I")
	static final RGBA8I_ : Float;
	@:native("RGBA8UI")
	static final RGBA8UI_ : Float;
	@:native("RGBA8_SNORM")
	static final RGBA8_SNORM_ : Float;
	@:native("RGBA_INTEGER")
	static final RGBA_INTEGER_ : Float;
	@:native("RGB_INTEGER")
	static final RGB_INTEGER_ : Float;
	@:native("RG_INTEGER")
	static final RG_INTEGER_ : Float;
	@:native("SAMPLER_2D_ARRAY")
	static final SAMPLER_2D_ARRAY_ : Float;
	@:native("SAMPLER_2D_ARRAY_SHADOW")
	static final SAMPLER_2D_ARRAY_SHADOW_ : Float;
	@:native("SAMPLER_2D_SHADOW")
	static final SAMPLER_2D_SHADOW_ : Float;
	@:native("SAMPLER_3D")
	static final SAMPLER_3D_ : Float;
	@:native("SAMPLER_BINDING")
	static final SAMPLER_BINDING_ : Float;
	@:native("SAMPLER_CUBE_SHADOW")
	static final SAMPLER_CUBE_SHADOW_ : Float;
	@:native("SEPARATE_ATTRIBS")
	static final SEPARATE_ATTRIBS_ : Float;
	@:native("SIGNALED")
	static final SIGNALED_ : Float;
	@:native("SIGNED_NORMALIZED")
	static final SIGNED_NORMALIZED_ : Float;
	@:native("SRGB")
	static final SRGB_ : Float;
	@:native("SRGB8")
	static final SRGB8_ : Float;
	@:native("SRGB8_ALPHA8")
	static final SRGB8_ALPHA8_ : Float;
	@:native("STATIC_COPY")
	static final STATIC_COPY_ : Float;
	@:native("STATIC_READ")
	static final STATIC_READ_ : Float;
	@:native("STENCIL")
	static final STENCIL_ : Float;
	@:native("STREAM_COPY")
	static final STREAM_COPY_ : Float;
	@:native("STREAM_READ")
	static final STREAM_READ_ : Float;
	@:native("SYNC_CONDITION")
	static final SYNC_CONDITION_ : Float;
	@:native("SYNC_FENCE")
	static final SYNC_FENCE_ : Float;
	@:native("SYNC_FLAGS")
	static final SYNC_FLAGS_ : Float;
	@:native("SYNC_FLUSH_COMMANDS_BIT")
	static final SYNC_FLUSH_COMMANDS_BIT_ : Float;
	@:native("SYNC_GPU_COMMANDS_COMPLETE")
	static final SYNC_GPU_COMMANDS_COMPLETE_ : Float;
	@:native("SYNC_STATUS")
	static final SYNC_STATUS_ : Float;
	@:native("TEXTURE_2D_ARRAY")
	static final TEXTURE_2D_ARRAY_ : Float;
	@:native("TEXTURE_3D")
	static final TEXTURE_3D_ : Float;
	@:native("TEXTURE_BASE_LEVEL")
	static final TEXTURE_BASE_LEVEL_ : Float;
	@:native("TEXTURE_BINDING_2D_ARRAY")
	static final TEXTURE_BINDING_2D_ARRAY_ : Float;
	@:native("TEXTURE_BINDING_3D")
	static final TEXTURE_BINDING_3D_ : Float;
	@:native("TEXTURE_COMPARE_FUNC")
	static final TEXTURE_COMPARE_FUNC_ : Float;
	@:native("TEXTURE_COMPARE_MODE")
	static final TEXTURE_COMPARE_MODE_ : Float;
	@:native("TEXTURE_IMMUTABLE_FORMAT")
	static final TEXTURE_IMMUTABLE_FORMAT_ : Float;
	@:native("TEXTURE_IMMUTABLE_LEVELS")
	static final TEXTURE_IMMUTABLE_LEVELS_ : Float;
	@:native("TEXTURE_MAX_LEVEL")
	static final TEXTURE_MAX_LEVEL_ : Float;
	@:native("TEXTURE_MAX_LOD")
	static final TEXTURE_MAX_LOD_ : Float;
	@:native("TEXTURE_MIN_LOD")
	static final TEXTURE_MIN_LOD_ : Float;
	@:native("TEXTURE_WRAP_R")
	static final TEXTURE_WRAP_R_ : Float;
	@:native("TIMEOUT_EXPIRED")
	static final TIMEOUT_EXPIRED_ : Float;
	@:native("TIMEOUT_IGNORED")
	static final TIMEOUT_IGNORED_ : Float;
	@:native("TRANSFORM_FEEDBACK")
	static final TRANSFORM_FEEDBACK_ : Float;
	@:native("TRANSFORM_FEEDBACK_ACTIVE")
	static final TRANSFORM_FEEDBACK_ACTIVE_ : Float;
	@:native("TRANSFORM_FEEDBACK_BINDING")
	static final TRANSFORM_FEEDBACK_BINDING_ : Float;
	@:native("TRANSFORM_FEEDBACK_BUFFER")
	static final TRANSFORM_FEEDBACK_BUFFER_ : Float;
	@:native("TRANSFORM_FEEDBACK_BUFFER_BINDING")
	static final TRANSFORM_FEEDBACK_BUFFER_BINDING_ : Float;
	@:native("TRANSFORM_FEEDBACK_BUFFER_MODE")
	static final TRANSFORM_FEEDBACK_BUFFER_MODE_ : Float;
	@:native("TRANSFORM_FEEDBACK_BUFFER_SIZE")
	static final TRANSFORM_FEEDBACK_BUFFER_SIZE_ : Float;
	@:native("TRANSFORM_FEEDBACK_BUFFER_START")
	static final TRANSFORM_FEEDBACK_BUFFER_START_ : Float;
	@:native("TRANSFORM_FEEDBACK_PAUSED")
	static final TRANSFORM_FEEDBACK_PAUSED_ : Float;
	@:native("TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN")
	static final TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN_ : Float;
	@:native("TRANSFORM_FEEDBACK_VARYINGS")
	static final TRANSFORM_FEEDBACK_VARYINGS_ : Float;
	@:native("UNIFORM_ARRAY_STRIDE")
	static final UNIFORM_ARRAY_STRIDE_ : Float;
	@:native("UNIFORM_BLOCK_ACTIVE_UNIFORMS")
	static final UNIFORM_BLOCK_ACTIVE_UNIFORMS_ : Float;
	@:native("UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES")
	static final UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES_ : Float;
	@:native("UNIFORM_BLOCK_BINDING")
	static final UNIFORM_BLOCK_BINDING_ : Float;
	@:native("UNIFORM_BLOCK_DATA_SIZE")
	static final UNIFORM_BLOCK_DATA_SIZE_ : Float;
	@:native("UNIFORM_BLOCK_INDEX")
	static final UNIFORM_BLOCK_INDEX_ : Float;
	@:native("UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER")
	static final UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER_ : Float;
	@:native("UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER")
	static final UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER_ : Float;
	@:native("UNIFORM_BUFFER")
	static final UNIFORM_BUFFER_ : Float;
	@:native("UNIFORM_BUFFER_BINDING")
	static final UNIFORM_BUFFER_BINDING_ : Float;
	@:native("UNIFORM_BUFFER_OFFSET_ALIGNMENT")
	static final UNIFORM_BUFFER_OFFSET_ALIGNMENT_ : Float;
	@:native("UNIFORM_BUFFER_SIZE")
	static final UNIFORM_BUFFER_SIZE_ : Float;
	@:native("UNIFORM_BUFFER_START")
	static final UNIFORM_BUFFER_START_ : Float;
	@:native("UNIFORM_IS_ROW_MAJOR")
	static final UNIFORM_IS_ROW_MAJOR_ : Float;
	@:native("UNIFORM_MATRIX_STRIDE")
	static final UNIFORM_MATRIX_STRIDE_ : Float;
	@:native("UNIFORM_OFFSET")
	static final UNIFORM_OFFSET_ : Float;
	@:native("UNIFORM_SIZE")
	static final UNIFORM_SIZE_ : Float;
	@:native("UNIFORM_TYPE")
	static final UNIFORM_TYPE_ : Float;
	@:native("UNPACK_IMAGE_HEIGHT")
	static final UNPACK_IMAGE_HEIGHT_ : Float;
	@:native("UNPACK_ROW_LENGTH")
	static final UNPACK_ROW_LENGTH_ : Float;
	@:native("UNPACK_SKIP_IMAGES")
	static final UNPACK_SKIP_IMAGES_ : Float;
	@:native("UNPACK_SKIP_PIXELS")
	static final UNPACK_SKIP_PIXELS_ : Float;
	@:native("UNPACK_SKIP_ROWS")
	static final UNPACK_SKIP_ROWS_ : Float;
	@:native("UNSIGNALED")
	static final UNSIGNALED_ : Float;
	@:native("UNSIGNED_INT_10F_11F_11F_REV")
	static final UNSIGNED_INT_10F_11F_11F_REV_ : Float;
	@:native("UNSIGNED_INT_24_8")
	static final UNSIGNED_INT_24_8_ : Float;
	@:native("UNSIGNED_INT_2_10_10_10_REV")
	static final UNSIGNED_INT_2_10_10_10_REV_ : Float;
	@:native("UNSIGNED_INT_5_9_9_9_REV")
	static final UNSIGNED_INT_5_9_9_9_REV_ : Float;
	@:native("UNSIGNED_INT_SAMPLER_2D")
	static final UNSIGNED_INT_SAMPLER_2D_ : Float;
	@:native("UNSIGNED_INT_SAMPLER_2D_ARRAY")
	static final UNSIGNED_INT_SAMPLER_2D_ARRAY_ : Float;
	@:native("UNSIGNED_INT_SAMPLER_3D")
	static final UNSIGNED_INT_SAMPLER_3D_ : Float;
	@:native("UNSIGNED_INT_SAMPLER_CUBE")
	static final UNSIGNED_INT_SAMPLER_CUBE_ : Float;
	@:native("UNSIGNED_INT_VEC2")
	static final UNSIGNED_INT_VEC2_ : Float;
	@:native("UNSIGNED_INT_VEC3")
	static final UNSIGNED_INT_VEC3_ : Float;
	@:native("UNSIGNED_INT_VEC4")
	static final UNSIGNED_INT_VEC4_ : Float;
	@:native("UNSIGNED_NORMALIZED")
	static final UNSIGNED_NORMALIZED_ : Float;
	@:native("VERTEX_ARRAY_BINDING")
	static final VERTEX_ARRAY_BINDING_ : Float;
	@:native("VERTEX_ATTRIB_ARRAY_DIVISOR")
	static final VERTEX_ATTRIB_ARRAY_DIVISOR_ : Float;
	@:native("VERTEX_ATTRIB_ARRAY_INTEGER")
	static final VERTEX_ATTRIB_ARRAY_INTEGER_ : Float;
	@:native("WAIT_FAILED")
	static final WAIT_FAILED_ : Float;
}