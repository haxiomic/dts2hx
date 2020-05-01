package three;
/**
	Interface for all loaders
	CompressedTextureLoader don't extends Loader class, but have load method
**/
extern typedef AnyLoader = {
	function load(url:String, ?onLoad:(result:Dynamic) -> Void, ?onProgress:(event:ts.html.IProgressEvent<ts.html.IEventTarget>) -> Void, ?onError:(event:ts.html.IErrorEvent) -> Void):Dynamic;
};