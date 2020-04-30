package sizzle.selectors;
extern typedef FilterFunction = {
	@:selfCall
	function call(element:String, matches:std.Array<String>):Bool;
};