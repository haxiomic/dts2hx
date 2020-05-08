package ts.html;
typedef IDOMQuad = {
	final p1 : DOMPoint;
	final p2 : DOMPoint;
	final p3 : DOMPoint;
	final p4 : DOMPoint;
	function getBounds():DOMRect;
	function toJSON():Dynamic;
};