package ts.html;
@:native("CaretPosition") extern class CaretPosition {
	function new();
	final offset : Float;
	final offsetNode : Node;
	function getClientRect():Null<DOMRect>;
	static var prototype : CaretPosition;
}