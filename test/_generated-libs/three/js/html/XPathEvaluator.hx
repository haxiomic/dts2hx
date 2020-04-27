package js.html;
/**
	The XPathEvaluator interface allows to compile and evaluate XPath expressions.
**/
@:native("XPathEvaluator") @tsInterface extern class XPathEvaluator {
	function new();
	function createExpression(expression:String, ?resolver:haxe.extern.EitherType<(prefix:Null<String>) -> Null<String>, { function lookupNamespaceURI(prefix:Null<String>):Null<String>; }>):XPathExpression;
	function createNSResolver(nodeResolver:Node):haxe.extern.EitherType<(prefix:Null<String>) -> Null<String>, { function lookupNamespaceURI(prefix:Null<String>):Null<String>; }>;
	function evaluate(expression:String, contextNode:Node, ?resolver:haxe.extern.EitherType<(prefix:Null<String>) -> Null<String>, { function lookupNamespaceURI(prefix:Null<String>):Null<String>; }>, ?type:Float, ?result:XPathResult):XPathResult;
	static var prototype : XPathEvaluator;
}