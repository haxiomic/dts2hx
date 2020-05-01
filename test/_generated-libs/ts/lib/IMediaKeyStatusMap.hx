package ts.lib;
/**
	This EncryptedMediaExtensions API interface is a read-only map of media key statuses by key IDs.
**/
extern typedef IMediaKeyStatusMap = {
	final size : Float;
	function get(keyId:ts.AnyOf2<IArrayBuffer, ArrayBufferView>):Any;
	function has(keyId:ts.AnyOf2<IArrayBuffer, ArrayBufferView>):Bool;
	function forEach(callbackfn:(value:String, key:ts.AnyOf2<IArrayBuffer, ArrayBufferView>, parent:IMediaKeyStatusMap) -> Void, ?thisArg:Any):Void;
	function entries():IterableIterator<ts.Tuple2<ts.AnyOf2<IArrayBuffer, ArrayBufferView>, String>>;
	function keys():IterableIterator<ts.AnyOf2<IArrayBuffer, ArrayBufferView>>;
	function values():IterableIterator<String>;
};