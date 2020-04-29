package three;
/**
	Interface for all loaders
	CompressedTextureLoader don't extends Loader class, but have load method
**/
extern typedef AnyLoader = {
	function load(url:String, ?onLoad:(result:Any) -> Void, ?onProgress:(event:js.html.IProgressEvent<js.html.IEventTarget>) -> Void, ?onError:(event:js.html.IErrorEvent) -> Void):Any;
};