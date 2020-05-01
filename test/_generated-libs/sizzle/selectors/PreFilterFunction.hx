package sizzle.selectors;
typedef PreFilterFunction = {
	@:selfCall
	function call(match:ts.lib.RegExpMatchArray):std.Array<String>;
};