package js.html;
extern interface Pbkdf2Params extends Algorithm {
	var hash : haxe.extern.EitherType<String, Algorithm>;
	var iterations : Float;
	var salt : haxe.extern.EitherType<js.lib.Int8Array, haxe.extern.EitherType<js.lib.Uint8Array, haxe.extern.EitherType<js.lib.Uint8ClampedArray, haxe.extern.EitherType<js.lib.Int16Array, haxe.extern.EitherType<js.lib.Uint16Array, haxe.extern.EitherType<js.lib.Int32Array, haxe.extern.EitherType<js.lib.Uint32Array, haxe.extern.EitherType<js.lib.Float32Array, haxe.extern.EitherType<js.lib.Float64Array, haxe.extern.EitherType<js.lib.ArrayBuffer, js.lib.DataView>>>>>>>>>>;
}