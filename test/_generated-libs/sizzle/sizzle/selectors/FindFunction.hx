package sizzle.selectors;

typedef FindFunction = (match:ts.lib.RegExpMatchArray, context:ts.AnyOf2<js.html.Document, js.html.DOMElement>, isXML:Bool) -> ts.AnyOf2<Void, Array<js.html.DOMElement>>;