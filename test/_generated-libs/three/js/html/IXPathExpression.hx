package js.html;
/**
	This interface is a compiled XPath expression that can be evaluated on a document or specific node to return information its DOM tree.
**/
extern typedef IXPathExpression = {
	function evaluate(contextNode:INode, ?type:Float, ?result:IXPathResult):IXPathResult;
};