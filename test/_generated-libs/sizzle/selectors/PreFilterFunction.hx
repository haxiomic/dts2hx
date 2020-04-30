package sizzle.selectors;
extern typedef PreFilterFunction = {
	@:selfCall
	function call(match:ts.lib.RegExpMatchArray):std.Array<String>;
};