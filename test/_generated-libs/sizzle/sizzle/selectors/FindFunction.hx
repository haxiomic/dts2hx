package sizzle.selectors;

typedef FindFunction = (match:js.lib.RegExpMatchArray, context:ts.AnyOf2<js.html.Document, js.html.DOMElement>, isXML:Bool) -> Array<js.html.DOMElement>;