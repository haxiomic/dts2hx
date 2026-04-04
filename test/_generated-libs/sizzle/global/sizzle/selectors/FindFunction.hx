package global.sizzle.selectors;

typedef FindFunction = (match:js.lib.RegExpMatchArray, context:ts.AnyOf2<js.html.DOMElement, js.html.Document>, isXML:Bool) -> Array<js.html.DOMElement>;