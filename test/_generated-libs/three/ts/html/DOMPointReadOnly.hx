package ts.html;
@:native("DOMPointReadOnly") extern class DOMPointReadOnly {
	function new(?x:Float, ?y:Float, ?z:Float, ?w:Float);
	final w : Float;
	final x : Float;
	final y : Float;
	final z : Float;
	function matrixTransform(?matrix:DOMMatrixInit):IDOMPoint;
	function toJSON():Any;
	static var prototype : IDOMPointReadOnly;
	static function fromPoint(?other:DOMPointInit):IDOMPointReadOnly;
}