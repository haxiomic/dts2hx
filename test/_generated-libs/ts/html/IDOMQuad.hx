package ts.html;
typedef IDOMQuad = {
	final p1 : IDOMPoint;
	final p2 : IDOMPoint;
	final p3 : IDOMPoint;
	final p4 : IDOMPoint;
	function getBounds():IDOMRect;
	function toJSON():Dynamic;
};