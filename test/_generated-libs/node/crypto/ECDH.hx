package node.crypto;
@:jsRequire("crypto", "ECDH") extern class ECDH {
	@:overload(function(encoding:String, ?format:String):String { })
	function generateKeys():global.IBuffer;
	@:overload(function(other_public_key:String, input_encoding:String):global.IBuffer { })
	@:overload(function(other_public_key:ts.AnyOf11<global.IBuffer, ts.lib.IUint8Array, ts.lib.IUint8ClampedArray, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IDataView>, output_encoding:String):String { })
	@:overload(function(other_public_key:String, input_encoding:String, output_encoding:String):String { })
	function computeSecret(other_public_key:ts.AnyOf11<global.IBuffer, ts.lib.IUint8Array, ts.lib.IUint8ClampedArray, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IDataView>):global.IBuffer;
	@:overload(function(encoding:String):String { })
	function getPrivateKey():global.IBuffer;
	@:overload(function(encoding:String, ?format:String):String { })
	function getPublicKey():global.IBuffer;
	@:overload(function(private_key:String, encoding:String):Void { })
	function setPrivateKey(private_key:ts.AnyOf11<global.IBuffer, ts.lib.IUint8Array, ts.lib.IUint8ClampedArray, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IDataView>):Void;
	static function convertKey(key:ts.AnyOf12<String, global.IBuffer, ts.lib.IUint8Array, ts.lib.IUint8ClampedArray, ts.lib.IUint16Array, ts.lib.IUint32Array, ts.lib.IInt8Array, ts.lib.IInt16Array, ts.lib.IInt32Array, ts.lib.IFloat32Array, ts.lib.IFloat64Array, ts.lib.IDataView>, curve:String, ?inputEncoding:String, ?outputEncoding:String, ?format:String):ts.AnyOf2<String, global.IBuffer>;
}