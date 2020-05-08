package ts.html;
@:native("DOMPoint") extern class DOMPoint {
	function new(?x:Float, ?y:Float, ?z:Float, ?w:Float);
	var w : Float;
	var x : Float;
	var y : Float;
	var z : Float;
	function matrixTransform(?matrix:DOMMatrixInit):DOMPoint;
	function toJSON():Dynamic;
	static var prototype : DOMPoint;
	static function fromPoint(?other:DOMPointInit):DOMPoint;
}