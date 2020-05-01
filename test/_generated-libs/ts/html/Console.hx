package ts.html;
/**
	Provides access to the browser's debugging console (e.g. the Web Console in Firefox). The specifics of how it works varies from browser to browser, but there is a de facto set of features that are typically provided.
**/
@:native("Console") extern class Console {
	function new();
	var memory : Dynamic;
	function assert(?condition:Bool, ?message:String, data:haxe.extern.Rest<Dynamic>):Void;
	function clear():Void;
	function count(?label:String):Void;
	function debug(?message:Dynamic, optionalParams:haxe.extern.Rest<Dynamic>):Void;
	function dir(?value:Dynamic, optionalParams:haxe.extern.Rest<Dynamic>):Void;
	function dirxml(value:Dynamic):Void;
	function error(?message:Dynamic, optionalParams:haxe.extern.Rest<Dynamic>):Void;
	function exception(?message:String, optionalParams:haxe.extern.Rest<Dynamic>):Void;
	function group(?groupTitle:String, optionalParams:haxe.extern.Rest<Dynamic>):Void;
	function groupCollapsed(?groupTitle:String, optionalParams:haxe.extern.Rest<Dynamic>):Void;
	function groupEnd():Void;
	function info(?message:Dynamic, optionalParams:haxe.extern.Rest<Dynamic>):Void;
	function log(?message:Dynamic, optionalParams:haxe.extern.Rest<Dynamic>):Void;
	function markTimeline(?label:String):Void;
	function profile(?reportName:String):Void;
	function profileEnd(?reportName:String):Void;
	function table(tabularData:haxe.extern.Rest<Dynamic>):Void;
	function time(?label:String):Void;
	function timeEnd(?label:String):Void;
	function timeStamp(?label:String):Void;
	function timeline(?label:String):Void;
	function timelineEnd(?label:String):Void;
	function trace(?message:Dynamic, optionalParams:haxe.extern.Rest<Dynamic>):Void;
	function warn(?message:Dynamic, optionalParams:haxe.extern.Rest<Dynamic>):Void;
	static var prototype : IConsole;
}