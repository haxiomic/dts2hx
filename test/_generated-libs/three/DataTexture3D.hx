package three;
@:jsRequire("three", "DataTexture3D") extern class DataTexture3D extends Texture {
	function new(data:haxe.extern.EitherType<ts.lib.IInt8Array, haxe.extern.EitherType<ts.lib.IUint8Array, haxe.extern.EitherType<ts.lib.IUint8ClampedArray, haxe.extern.EitherType<ts.lib.IInt16Array, haxe.extern.EitherType<ts.lib.IUint16Array, haxe.extern.EitherType<ts.lib.IInt32Array, haxe.extern.EitherType<ts.lib.IUint32Array, haxe.extern.EitherType<ts.lib.IFloat32Array, ts.lib.IFloat64Array>>>>>>>>, width:Float, height:Float, depth:Float);
}