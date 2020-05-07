package ts.html;
typedef Pbkdf2Params = {
	var hash : AlgorithmIdentifier;
	var iterations : Float;
	var salt : ts.AnyOf11<ts.lib.ArrayBuffer, ts.lib.Float32Array, ts.lib.Float64Array, ts.lib.Uint8Array, ts.lib.Int8Array, ts.lib.Int16Array, ts.lib.Int32Array, ts.lib.Uint16Array, ts.lib.Uint32Array, ts.lib.Uint8ClampedArray, ts.lib.DataView>;
	var name : String;
};