package js.html;
@:native("CaretPosition") extern class CaretPosition {
	function new();
	final offset : Float;
	final offsetNode : INode;
	function getClientRect():Null<IDOMRect>;
	static var prototype : ICaretPosition;
}