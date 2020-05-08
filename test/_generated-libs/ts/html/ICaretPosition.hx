package ts.html;
typedef ICaretPosition = {
	final offset : Float;
	final offsetNode : Node;
	function getClientRect():Null<DOMRect>;
};