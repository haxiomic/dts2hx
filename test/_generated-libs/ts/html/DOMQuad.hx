package ts.html;
@:native("DOMQuad") extern class DOMQuad {
	function new(?p1:DOMPointInit, ?p2:DOMPointInit, ?p3:DOMPointInit, ?p4:DOMPointInit);
	final p1 : DOMPoint;
	final p2 : DOMPoint;
	final p3 : DOMPoint;
	final p4 : DOMPoint;
	function getBounds():DOMRect;
	function toJSON():Dynamic;
	static var prototype : DOMQuad;
	static function fromQuad(?other:DOMQuadInit):DOMQuad;
	static function fromRect(?other:DOMRectInit):DOMQuad;
}