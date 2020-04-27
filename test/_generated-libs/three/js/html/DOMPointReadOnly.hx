package js.html;
@:native("DOMPointReadOnly") @tsInterface extern class DOMPointReadOnly {
	function new(?x:Float, ?y:Float, ?z:Float, ?w:Float);
	final w : Float;
	final x : Float;
	final y : Float;
	final z : Float;
	function matrixTransform(?matrix:DOMMatrixInit):DOMPoint;
	function toJSON():Any;
	static var prototype : DOMPointReadOnly;
	static function fromPoint(?other:DOMPointInit):DOMPointReadOnly;
}