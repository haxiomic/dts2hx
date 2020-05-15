package sizzle.selectors;
typedef SetFilterFunction = {
	@:selfCall
	function call(elements:Array<js.html.DOMElement>, argument:Float, not:Bool):Array<js.html.DOMElement>;
};