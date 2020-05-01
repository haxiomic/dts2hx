package ts.html;
typedef ICaretPosition = {
	final offset : Float;
	final offsetNode : INode;
	function getClientRect():Null<IDOMRect>;
};