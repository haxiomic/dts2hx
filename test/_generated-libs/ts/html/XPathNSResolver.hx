package ts.html;
typedef XPathNSResolver = ts.AnyOf2<(prefix:Null<String>) -> Null<String>, {
	function lookupNamespaceURI(prefix:Null<String>):Null<String>;
}>;