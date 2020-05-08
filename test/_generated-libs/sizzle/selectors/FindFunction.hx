package sizzle.selectors;
typedef FindFunction = {
	@:selfCall
	function call(match:ts.lib.RegExpMatchArray, context:ts.AnyOf2<ts.html.Document, ts.html.Element>, isXML:Bool):ts.AnyOf2<Void, Array<ts.html.Element>>;
};