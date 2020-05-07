package ts.html;
typedef IDOMPoint = {
	var w : Float;
	var x : Float;
	var y : Float;
	var z : Float;
	function matrixTransform(?matrix:DOMMatrixInit):DOMPoint;
	function toJSON():Dynamic;
};