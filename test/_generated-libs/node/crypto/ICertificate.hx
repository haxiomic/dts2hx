package node.crypto;
typedef ICertificate = {
	function exportChallenge(spkac:ts.AnyOf12<String, global.Buffer, ts.lib.Uint8Array, ts.lib.Uint8ClampedArray, ts.lib.Uint16Array, ts.lib.Uint32Array, ts.lib.Int8Array, ts.lib.Int16Array, ts.lib.Int32Array, ts.lib.Float32Array, ts.lib.Float64Array, ts.lib.DataView>):global.Buffer;
	function exportPublicKey(spkac:ts.AnyOf12<String, global.Buffer, ts.lib.Uint8Array, ts.lib.Uint8ClampedArray, ts.lib.Uint16Array, ts.lib.Uint32Array, ts.lib.Int8Array, ts.lib.Int16Array, ts.lib.Int32Array, ts.lib.Float32Array, ts.lib.Float64Array, ts.lib.DataView>):global.Buffer;
	function verifySpkac(spkac:Binary):Bool;
};