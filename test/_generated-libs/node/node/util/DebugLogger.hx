package node.util;

typedef DebugLogger = {
	@:selfCall
	function call(msg:String, param:haxe.extern.Rest<Any>):Void;
	var enabled : Bool;
};