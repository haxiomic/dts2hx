package three;
@:jsRequire("three", "FontLoader") extern class FontLoader {
	function new(?manager:LoadingManager);
	var manager : LoadingManager;
	function load(url:String, ?onLoad:(responseFont:Font) -> Void, ?onProgress:(event:ts.html.IProgressEvent<ts.html.IEventTarget>) -> Void, ?onError:(event:ts.html.IErrorEvent) -> Void):Void;
	function parse(json:Dynamic):Font;
}