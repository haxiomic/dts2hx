package js.html;

/**
	The **`CSSMathInvert`** interface of the CSS Typed Object Model API represents a CSS calc used as `calc(1 / <value>)`.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSMathInvert)
**/
@:forward
abstract ICSSMathInvert(ICSSMathInvertTypedef) from ICSSMathInvertTypedef to ICSSMathInvertTypedef {
	/**
		The **`CSSMathValue.operator`** read-only property of the CSSMathValue interface indicates the operator that the current subtype represents.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSMathValue/operator)
	**/
	public var operator_(get, set):CSSMathOperator;
	inline function get_operator_():CSSMathOperator return js.Syntax.field(cast this, 'operator');
	inline function set_operator_(v:CSSMathOperator):CSSMathOperator { js.Syntax.code("{0}[{1}] = {2}", this, 'operator', v); return v; }
}
