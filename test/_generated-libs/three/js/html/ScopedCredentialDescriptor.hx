package js.html;
extern typedef ScopedCredentialDescriptor = {
	var id : Null<haxe.extern.EitherType<js.lib.IInt8Array, haxe.extern.EitherType<js.lib.IUint8Array, haxe.extern.EitherType<js.lib.IUint8ClampedArray, haxe.extern.EitherType<js.lib.IInt16Array, haxe.extern.EitherType<js.lib.IUint16Array, haxe.extern.EitherType<js.lib.IInt32Array, haxe.extern.EitherType<js.lib.IUint32Array, haxe.extern.EitherType<js.lib.IFloat32Array, haxe.extern.EitherType<js.lib.IFloat64Array, haxe.extern.EitherType<js.lib.IArrayBuffer, js.lib.IDataView>>>>>>>>>>>;
	@:optional
	var transports : std.Array<String>;
	var type : String;
};