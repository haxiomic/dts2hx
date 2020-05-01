package ts.html;
typedef AesCbcParams = {
	var iv : ts.AnyOf11<ts.lib.IArrayBuffer, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IUint8Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IUint8ClampedArray, ts.lib.IDataView>;
	var name : String;
};