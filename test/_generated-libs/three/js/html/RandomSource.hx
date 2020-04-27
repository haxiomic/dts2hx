package js.html;
@:native("RandomSource") @tsInterface extern class RandomSource {
	function new();
	function getRandomValues<T:(haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Int32Array, js.lib.Uint32Array>>>>>>)>(array:T):T;
	static var prototype : RandomSource;
}