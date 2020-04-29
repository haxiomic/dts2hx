package js.html;
@:native("RandomSource") extern class RandomSource {
	function new();
	function getRandomValues<T:(haxe.extern.EitherType<js.lib.IInt8Array, haxe.extern.EitherType<js.lib.IUint8Array, haxe.extern.EitherType<js.lib.IUint8ClampedArray, haxe.extern.EitherType<js.lib.IInt16Array, haxe.extern.EitherType<js.lib.IUint16Array, haxe.extern.EitherType<js.lib.IInt32Array, js.lib.IUint32Array>>>>>>)>(array:T):T;
	static var prototype : IRandomSource;
}