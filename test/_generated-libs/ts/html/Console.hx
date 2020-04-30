package ts.html;
/**
	Provides access to the browser's debugging console (e.g. the Web Console in Firefox). The specifics of how it works varies from browser to browser, but there is a de facto set of features that are typically provided.
**/
@:native("Console") extern class Console {
	function new();
	var memory : Any;
	function assert(?condition:Bool, ?message:String, data:haxe.extern.Rest<Any>):Void;
	function clear():Void;
	function count(?label:String):Void;
	function debug(?message:Any, optionalParams:haxe.extern.Rest<Any>):Void;
	function dir(?value:Any, optionalParams:haxe.extern.Rest<Any>):Void;
	function dirxml(value:Any):Void;
	function error(?message:Any, optionalParams:haxe.extern.Rest<Any>):Void;
	function exception(?message:String, optionalParams:haxe.extern.Rest<Any>):Void;
	function group(?groupTitle:String, optionalParams:haxe.extern.Rest<Any>):Void;
	function groupCollapsed(?groupTitle:String, optionalParams:haxe.extern.Rest<Any>):Void;
	function groupEnd():Void;
	function info(?message:Any, optionalParams:haxe.extern.Rest<Any>):Void;
	function log(?message:Any, optionalParams:haxe.extern.Rest<Any>):Void;
	function markTimeline(?label:String):Void;
	function profile(?reportName:String):Void;
	function profileEnd(?reportName:String):Void;
	function table(tabularData:haxe.extern.Rest<Any>):Void;
	function time(?label:String):Void;
	function timeEnd(?label:String):Void;
	function timeStamp(?label:String):Void;
	function timeline(?label:String):Void;
	function timelineEnd(?label:String):Void;
	function trace(?message:Any, optionalParams:haxe.extern.Rest<Any>):Void;
	function warn(?message:Any, optionalParams:haxe.extern.Rest<Any>):Void;
	static var prototype : IConsole;
}