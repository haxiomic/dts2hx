package ts.html;
@:native("DOMPoint") extern class DOMPoint {
	function new(?x:Float, ?y:Float, ?z:Float, ?w:Float);
	var w : Float;
	var x : Float;
	var y : Float;
	var z : Float;
	function matrixTransform(?matrix:DOMMatrixInit):IDOMPoint;
	function toJSON():Dynamic;
	static var prototype : IDOMPoint;
	static function fromPoint(?other:DOMPointInit):IDOMPoint;
}