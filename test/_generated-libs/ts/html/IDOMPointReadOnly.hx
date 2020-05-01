package ts.html;
extern typedef IDOMPointReadOnly = {
	final w : Float;
	final x : Float;
	final y : Float;
	final z : Float;
	function matrixTransform(?matrix:DOMMatrixInit):IDOMPoint;
	function toJSON():Dynamic;
};