package sizzle;

typedef SizzleStatic = {
	@:overload(function(selector:String, ?context:ts.AnyOf3<js.html.Document, js.html.DOMElement, js.html.DocumentFragment>):Array<js.html.DOMElement> { })
	@:selfCall
	function call<TArrayLike>(selector:String, context:ts.AnyOf3<js.html.Document, js.html.DOMElement, js.html.DocumentFragment>, results:TArrayLike):TArrayLike;
	var selectors : sizzle.Selectors;
	function compile(selector:String):js.lib.Function;
	function matchSelector(element:js.html.DOMElement, selector:String):Bool;
	function matches(selector:String, elements:Array<js.html.DOMElement>):Array<js.html.DOMElement>;
};