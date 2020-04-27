package js.html;
/**
	Basic cryptography features available in the current context. It allows access to a cryptographically strong random number generator and to cryptographic primitives.
**/
@:native("Crypto") @tsInterface extern class Crypto {
	function new();
	final subtle : SubtleCrypto;
	function getRandomValues<T:(Null<haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, js.lib.DataView>>>>>>>>>>)>(array:T):T;
	static var prototype : Crypto;
}