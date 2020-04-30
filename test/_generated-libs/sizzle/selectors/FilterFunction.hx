package sizzle.selectors;
extern typedef FilterFunction = {
	@:selfCall
	function call(element:String, matches:haxe.extern.Rest<String>):Bool;
};