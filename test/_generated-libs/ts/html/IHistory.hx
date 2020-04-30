package ts.html;
/**
	Allows manipulation of the browser session history, that is the pages visited in the tab or frame that the current page is loaded in.
**/
extern typedef IHistory = {
	final length : Float;
	var scrollRestoration : String;
	final state : Any;
	function back():Void;
	function forward():Void;
	function go(?delta:Float):Void;
	function pushState(data:Any, title:String, ?url:String):Void;
	function replaceState(data:Any, title:String, ?url:String):Void;
};