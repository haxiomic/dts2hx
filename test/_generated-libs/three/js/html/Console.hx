package js.html;
/**
	Provides access to the browser's debugging console (e.g. the Web Console in Firefox). The specifics of how it works varies from browser to browser, but there is a de facto set of features that are typically provided.
**/
@:native("Console") extern class Console {
	function new();
	var memory : Any;
	function assert(?condition:Bool, ?message:String, data:std.Array<Any>):Void;
	function clear():Void;
	function count(?label:String):Void;
	function debug(?message:Any, optionalParams:std.Array<Any>):Void;
	function dir(?value:Any, optionalParams:std.Array<Any>):Void;
	function dirxml(value:Any):Void;
	function error(?message:Any, optionalParams:std.Array<Any>):Void;
	function exception(?message:String, optionalParams:std.Array<Any>):Void;
	function group(?groupTitle:String, optionalParams:std.Array<Any>):Void;
	function groupCollapsed(?groupTitle:String, optionalParams:std.Array<Any>):Void;
	function groupEnd():Void;
	function info(?message:Any, optionalParams:std.Array<Any>):Void;
	function log(?message:Any, optionalParams:std.Array<Any>):Void;
	function markTimeline(?label:String):Void;
	function profile(?reportName:String):Void;
	function profileEnd(?reportName:String):Void;
	function table(tabularData:std.Array<Any>):Void;
	function time(?label:String):Void;
	function timeEnd(?label:String):Void;
	function timeStamp(?label:String):Void;
	function timeline(?label:String):Void;
	function timelineEnd(?label:String):Void;
	function trace(?message:Any, optionalParams:std.Array<Any>):Void;
	function warn(?message:Any, optionalParams:std.Array<Any>):Void;
	static var prototype : IConsole;
}