package js.html;
/**
	Basic cryptography features available in the current context. It allows access to a cryptographically strong random number generator and to cryptographic primitives.
**/
@:native("Crypto") extern class Crypto {
	function new();
	final subtle : ISubtleCrypto;
	function getRandomValues<T:(Null<haxe.extern.EitherType<js.lib.IInt8Array, haxe.extern.EitherType<js.lib.IUint8Array, haxe.extern.EitherType<js.lib.IUint8ClampedArray, haxe.extern.EitherType<js.lib.IInt16Array, haxe.extern.EitherType<js.lib.IUint16Array, haxe.extern.EitherType<js.lib.IInt32Array, haxe.extern.EitherType<js.lib.IUint32Array, haxe.extern.EitherType<js.lib.IFloat32Array, haxe.extern.EitherType<js.lib.IFloat64Array, js.lib.IDataView>>>>>>>>>>)>(array:T):T;
	static var prototype : ICrypto;
}