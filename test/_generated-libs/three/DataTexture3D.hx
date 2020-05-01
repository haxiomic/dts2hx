package three;
@:jsRequire("three", "DataTexture3D") extern class DataTexture3D extends Texture {
	function new(data:ts.AnyOf9<ts.lib.IInt8Array, ts.lib.IUint8Array, ts.lib.IUint8ClampedArray, ts.lib.IInt16Array, ts.lib.IUint16Array, ts.lib.IInt32Array, ts.lib.IUint32Array, ts.lib.IFloat32Array, ts.lib.IFloat64Array>, width:Float, height:Float, depth:Float);
}