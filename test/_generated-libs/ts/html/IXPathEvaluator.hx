package ts.html;
/**
	The XPathEvaluator interface allows to compile and evaluate XPath expressions.
**/
typedef IXPathEvaluator = {
	function createExpression(expression:String, ?resolver:ts.AnyOf2<(prefix:Null<String>) -> Null<String>, { function lookupNamespaceURI(prefix:Null<String>):Null<String>; }>):IXPathExpression;
	function createNSResolver(nodeResolver:INode):ts.AnyOf2<(prefix:Null<String>) -> Null<String>, {
		function lookupNamespaceURI(prefix:Null<String>):Null<String>;
	}>;
	function evaluate(expression:String, contextNode:INode, ?resolver:ts.AnyOf2<(prefix:Null<String>) -> Null<String>, { function lookupNamespaceURI(prefix:Null<String>):Null<String>; }>, ?type:Float, ?result:IXPathResult):IXPathResult;
};