package ts.html;
extern typedef Pbkdf2Params = {
	var hash : haxe.extern.EitherType<String, Algorithm>;
	var iterations : Float;
	var salt : haxe.extern.EitherType<ts.lib.IArrayBuffer, haxe.extern.EitherType<ts.lib.IFloat32Array, haxe.extern.EitherType<ts.lib.IFloat64Array, haxe.extern.EitherType<ts.lib.IUint8Array, haxe.extern.EitherType<ts.lib.IInt8Array, haxe.extern.EitherType<ts.lib.IInt16Array, haxe.extern.EitherType<ts.lib.IInt32Array, haxe.extern.EitherType<ts.lib.IUint16Array, haxe.extern.EitherType<ts.lib.IUint32Array, haxe.extern.EitherType<ts.lib.IUint8ClampedArray, ts.lib.IDataView>>>>>>>>>>;
	var name : String;
};