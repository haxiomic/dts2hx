package ts.html;
@:native("DOMPoint") extern class DOMPoint {
	function new(?x:Float, ?y:Float, ?z:Float, ?w:Float);
	var w : Float;
	var x : Float;
	var y : Float;
	var z : Float;
	static var prototype : IDOMPoint;
	static function fromPoint(?other:DOMPointInit):IDOMPoint;
}