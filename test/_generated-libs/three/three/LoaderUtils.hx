package three;
@:jsRequire("three", "LoaderUtils") extern class LoaderUtils {
	static function decodeText(array:haxe.extern.EitherType<js.lib.IInt8Array, haxe.extern.EitherType<js.lib.IUint8Array, haxe.extern.EitherType<js.lib.IUint8ClampedArray, haxe.extern.EitherType<js.lib.IInt16Array, haxe.extern.EitherType<js.lib.IUint16Array, haxe.extern.EitherType<js.lib.IInt32Array, haxe.extern.EitherType<js.lib.IUint32Array, haxe.extern.EitherType<js.lib.IFloat32Array, js.lib.IFloat64Array>>>>>>>>):String;
	static function extractUrlBase(url:String):String;
}