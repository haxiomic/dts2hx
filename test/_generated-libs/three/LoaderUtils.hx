package three;
@:jsRequire("three", "LoaderUtils") extern class LoaderUtils {
	static function decodeText(array:haxe.extern.EitherType<ts.lib.IInt8Array, haxe.extern.EitherType<ts.lib.IUint8Array, haxe.extern.EitherType<ts.lib.IUint8ClampedArray, haxe.extern.EitherType<ts.lib.IInt16Array, haxe.extern.EitherType<ts.lib.IUint16Array, haxe.extern.EitherType<ts.lib.IInt32Array, haxe.extern.EitherType<ts.lib.IUint32Array, haxe.extern.EitherType<ts.lib.IFloat32Array, ts.lib.IFloat64Array>>>>>>>>):String;
	static function extractUrlBase(url:String):String;
}