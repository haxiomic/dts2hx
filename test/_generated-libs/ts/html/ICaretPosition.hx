package ts.html;
extern typedef ICaretPosition = {
	final offset : Float;
	final offsetNode : INode;
	function getClientRect():Null<IDOMRect>;
};