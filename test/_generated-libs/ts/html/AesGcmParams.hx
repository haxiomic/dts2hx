package ts.html;
typedef AesGcmParams = {
	@:optional
	var additionalData : ts.AnyOf11<ts.lib.ArrayBuffer, ts.lib.Float32Array, ts.lib.Float64Array, ts.lib.Uint8Array, ts.lib.Int8Array, ts.lib.Int16Array, ts.lib.Int32Array, ts.lib.Uint16Array, ts.lib.Uint32Array, ts.lib.Uint8ClampedArray, ts.lib.DataView>;
	var iv : ts.AnyOf11<ts.lib.ArrayBuffer, ts.lib.Float32Array, ts.lib.Float64Array, ts.lib.Uint8Array, ts.lib.Int8Array, ts.lib.Int16Array, ts.lib.Int32Array, ts.lib.Uint16Array, ts.lib.Uint32Array, ts.lib.Uint8ClampedArray, ts.lib.DataView>;
	@:optional
	var tagLength : Float;
	var name : String;
};