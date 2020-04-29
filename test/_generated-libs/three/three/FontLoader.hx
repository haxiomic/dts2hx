package three;
@:jsRequire("three", "FontLoader") extern class FontLoader {
	function new(?manager:LoadingManager);
	var manager : LoadingManager;
	function load(url:String, ?onLoad:(responseFont:Font) -> Void, ?onProgress:(event:js.html.IProgressEvent<js.html.IEventTarget>) -> Void, ?onError:(event:js.html.IErrorEvent) -> Void):Void;
	function parse(json:Any):Font;
}