package sizzle.selectors;
typedef SetFilterFunction = {
	@:selfCall
	function call(elements:Array<ts.html.Element>, argument:Float, not:Bool):Array<ts.html.Element>;
};