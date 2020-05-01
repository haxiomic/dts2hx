package three;
@:jsRequire("three", "DataTexture") extern class DataTexture extends Texture {
	function new(data:ts.AnyOf9<ts.lib.IInt8Array, ts.lib.IUint8Array, ts.lib.IUint8ClampedArray, ts.lib.IInt16Array, ts.lib.IUint16Array, ts.lib.IInt32Array, ts.lib.IUint32Array, ts.lib.IFloat32Array, ts.lib.IFloat64Array>, width:Float, height:Float, ?format:PixelFormat, ?type:TextureDataType, ?mapping:Mapping, ?wrapS:Wrapping, ?wrapT:Wrapping, ?magFilter:TextureFilter, ?minFilter:TextureFilter, ?anisotropy:Float, ?encoding:TextureEncoding);
}