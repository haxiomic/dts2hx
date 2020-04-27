package three;
/**
	Interface for all loaders
	CompressedTextureLoader don't extends Loader class, but have load method
**/
extern interface AnyLoader {
	function load(url:String, ?onLoad:(result:Any) -> Void, ?onProgress:(event:js.html.ProgressEvent<js.html.EventTarget>) -> Void, ?onError:(event:js.html.ErrorEvent) -> Void):Any;
}