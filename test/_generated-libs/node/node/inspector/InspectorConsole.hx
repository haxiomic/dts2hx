package node.inspector;

typedef InspectorConsole = {
	function debug(data:haxe.extern.Rest<Dynamic>):Void;
	function error(data:haxe.extern.Rest<Dynamic>):Void;
	function info(data:haxe.extern.Rest<Dynamic>):Void;
	function log(data:haxe.extern.Rest<Dynamic>):Void;
	function warn(data:haxe.extern.Rest<Dynamic>):Void;
	function dir(data:haxe.extern.Rest<Dynamic>):Void;
	function dirxml(data:haxe.extern.Rest<Dynamic>):Void;
	function table(data:haxe.extern.Rest<Dynamic>):Void;
	function trace(data:haxe.extern.Rest<Dynamic>):Void;
	function group(data:haxe.extern.Rest<Dynamic>):Void;
	function groupCollapsed(data:haxe.extern.Rest<Dynamic>):Void;
	function groupEnd(data:haxe.extern.Rest<Dynamic>):Void;
	function clear(data:haxe.extern.Rest<Dynamic>):Void;
	function count(?label:Dynamic):Void;
	function countReset(?label:Dynamic):Void;
	function assert(?value:Dynamic, data:haxe.extern.Rest<Dynamic>):Void;
	function profile(?label:Dynamic):Void;
	function profileEnd(?label:Dynamic):Void;
	function time(?label:Dynamic):Void;
	function timeLog(?label:Dynamic):Void;
	function timeStamp(?label:Dynamic):Void;
};