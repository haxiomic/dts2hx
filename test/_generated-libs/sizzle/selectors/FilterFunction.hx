package sizzle.selectors;
typedef FilterFunction = {
	@:selfCall
	function call(element:String, matches:haxe.extern.Rest<String>):Bool;
};