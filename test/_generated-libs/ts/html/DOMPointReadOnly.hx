package ts.html;
@:native("DOMPointReadOnly") extern class DOMPointReadOnly {
	function new(?x:Float, ?y:Float, ?z:Float, ?w:Float);
	final w : Float;
	final x : Float;
	final y : Float;
	final z : Float;
	function matrixTransform(?matrix:DOMMatrixInit):DOMPoint;
	function toJSON():Dynamic;
	static var prototype : DOMPointReadOnly;
	static function fromPoint(?other:DOMPointInit):DOMPointReadOnly;
}