package js.html;
@:native("DOMQuad") extern class DOMQuad {
	function new(?p1:DOMPointInit, ?p2:DOMPointInit, ?p3:DOMPointInit, ?p4:DOMPointInit);
	final p1 : IDOMPoint;
	final p2 : IDOMPoint;
	final p3 : IDOMPoint;
	final p4 : IDOMPoint;
	function getBounds():IDOMRect;
	function toJSON():Any;
	static var prototype : IDOMQuad;
	static function fromQuad(?other:DOMQuadInit):IDOMQuad;
	static function fromRect(?other:DOMRectInit):IDOMQuad;
}