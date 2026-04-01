package three;

@:jsRequire("three", "FontLoader") extern class FontLoader {
	function new(?manager:LoadingManager);
	var manager : LoadingManager;
	function load(url:String, ?onLoad:(responseFont:Font) -> Void, ?onProgress:(event:js.html.ProgressEvent_<js.html.EventTarget>) -> Void, ?onError:(event:js.html.ErrorEvent) -> Void):Void;
	function parse(json:Dynamic):Font;
	static var prototype : FontLoader;
}