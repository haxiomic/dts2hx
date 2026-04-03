package js.html;

/**
	The **`CSSMathMax`** interface of the CSS Typed Object Model API represents the CSS max function.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSMathMax)
**/
@:forward
abstract ICSSMathMax(ICSSMathMaxTypedef) from ICSSMathMaxTypedef to ICSSMathMaxTypedef {
	/**
		The **`CSSMathValue.operator`** read-only property of the CSSMathValue interface indicates the operator that the current subtype represents.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSMathValue/operator)
	**/
	public var operator_(get, set):CSSMathOperator;
	inline function get_operator_():CSSMathOperator return js.Syntax.field(cast this, 'operator');
	inline function set_operator_(v:CSSMathOperator):CSSMathOperator { js.Syntax.code("{0}[{1}] = {2}", this, 'operator', v); return v; }
}
