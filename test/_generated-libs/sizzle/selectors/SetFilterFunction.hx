package sizzle.selectors;
typedef SetFilterFunction = {
	@:selfCall
	function call(elements:Array<ts.html.IElement>, argument:Float, not:Bool):Array<ts.html.IElement>;
};