package js.html;
/**
	The XPathEvaluator interface allows to compile and evaluate XPath expressions.
**/
extern typedef IXPathEvaluator = {
	function createExpression(expression:String, ?resolver:haxe.extern.EitherType<(prefix:Null<String>) -> Null<String>, { function lookupNamespaceURI(prefix:Null<String>):Null<String>; }>):IXPathExpression;
	function createNSResolver(nodeResolver:INode):haxe.extern.EitherType<(prefix:Null<String>) -> Null<String>, {
		function lookupNamespaceURI(prefix:Null<String>):Null<String>;
	}>;
	function evaluate(expression:String, contextNode:INode, ?resolver:haxe.extern.EitherType<(prefix:Null<String>) -> Null<String>, { function lookupNamespaceURI(prefix:Null<String>):Null<String>; }>, ?type:Float, ?result:IXPathResult):IXPathResult;
};