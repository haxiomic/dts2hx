package js.html;
@:native("CaretPosition") @tsInterface extern class CaretPosition {
	function new();
	final offset : Float;
	final offsetNode : Node;
	function getClientRect():Null<DOMRect>;
	static var prototype : CaretPosition;
}