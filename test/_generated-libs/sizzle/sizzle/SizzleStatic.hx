package sizzle;

typedef SizzleStatic = {
	@:overload(function(selector:String, ?context:ts.AnyOf3<js.html.DocumentFragment, js.html.DOMElement, js.html.Document>):Array<js.html.DOMElement> { })
	@:selfCall
	function call<TArrayLike:(js.lib.ArrayLike<js.html.DOMElement>)>(selector:String, context:ts.AnyOf3<js.html.DocumentFragment, js.html.DOMElement, js.html.Document>, results:TArrayLike):TArrayLike;
	var selectors : Selectors;
	function compile(selector:String):haxe.Constraints.Function;
	function matchSelector(element:js.html.DOMElement, selector:String):Bool;
	function matches(selector:String, elements:Array<js.html.DOMElement>):Array<js.html.DOMElement>;
};