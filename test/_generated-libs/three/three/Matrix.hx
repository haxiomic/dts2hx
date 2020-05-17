package three;

/**
	( interface Matrix&lt;T&gt; )
**/
typedef Matrix = {
	/**
		Array with matrix values.
	**/
	var elements : Array<Float>;
	/**
		identity():T;
	**/
	function identity():Matrix;
	/**
		copy(m:T):T;
	**/
	function copy(m:Matrix):Matrix;
	/**
		multiplyScalar(s:number):T;
	**/
	function multiplyScalar(s:Float):Matrix;
	function determinant():Float;
	/**
		getInverse(matrix:T, throwOnInvertible?:boolean):T;
	**/
	function getInverse(matrix:Matrix, ?throwOnInvertible:Bool):Matrix;
	/**
		transpose():T;
	**/
	function transpose():Matrix;
	/**
		clone():T;
	**/
	function clone():Matrix;
};