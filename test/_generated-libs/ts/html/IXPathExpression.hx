package ts.html;
/**
	This interface is a compiled XPath expression that can be evaluated on a document or specific node to return information its DOM tree.
**/
typedef IXPathExpression = {
	function evaluate(contextNode:Node, ?type:Float, ?result:XPathResult):XPathResult;
};