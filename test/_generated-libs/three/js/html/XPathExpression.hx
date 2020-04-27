package js.html;
/**
	This interface is a compiled XPath expression that can be evaluated on a document or specific node to return information its DOM tree.
**/
@:native("XPathExpression") @tsInterface extern class XPathExpression {
	function new();
	function evaluate(contextNode:Node, ?type:Float, ?result:XPathResult):XPathResult;
	static var prototype : XPathExpression;
}