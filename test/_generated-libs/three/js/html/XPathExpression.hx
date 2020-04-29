package js.html;
/**
	This interface is a compiled XPath expression that can be evaluated on a document or specific node to return information its DOM tree.
**/
@:native("XPathExpression") extern class XPathExpression {
	function new();
	function evaluate(contextNode:INode, ?type:Float, ?result:IXPathResult):IXPathResult;
	static var prototype : IXPathExpression;
}