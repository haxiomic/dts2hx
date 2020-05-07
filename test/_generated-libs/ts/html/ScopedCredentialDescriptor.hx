package ts.html;
typedef ScopedCredentialDescriptor = {
	var id : Null<ts.AnyOf11<ts.lib.ArrayBuffer, ts.lib.Float32Array, ts.lib.Float64Array, ts.lib.Uint8Array, ts.lib.Int8Array, ts.lib.Int16Array, ts.lib.Int32Array, ts.lib.Uint16Array, ts.lib.Uint32Array, ts.lib.Uint8ClampedArray, ts.lib.DataView>>;
	@:optional
	var transports : Array<Transport>;
	var type : String;
};