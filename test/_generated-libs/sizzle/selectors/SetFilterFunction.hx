package sizzle.selectors;
extern typedef SetFilterFunction = {
	@:selfCall
	function call(elements:std.Array<ts.html.IElement>, argument:Float, not:Bool):std.Array<ts.html.IElement>;
};