package js.html;

/**
	The **`CSSUnitValue`** interface of the CSS Typed Object Model API represents values that contain a single unit type.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSUnitValue)
**/
@:native("CSSUnitValue") extern class CSSUnitValue {
	function new(value:Float, unit:String);
	/**
		The **`CSSUnitValue.unit`** read-only property of the CSSUnitValue interface returns a string indicating the type of unit.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSUnitValue/unit)
	**/
	final unit : String;
	/**
		The **`CSSUnitValue.value`** property of the A double.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSUnitValue/value)
	**/
	var value : Float;
	/**
		The **`add()`** method of the `CSSNumericValue`.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSNumericValue/add)
	**/
	function add(values:haxe.extern.Rest<CSSNumberish>):CSSNumericValue;
	/**
		The **`div()`** method of the supplied value.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSNumericValue/div)
	**/
	function div(values:haxe.extern.Rest<CSSNumberish>):CSSNumericValue;
	/**
		The **`equals()`** method of the value are strictly equal.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSNumericValue/equals)
	**/
	function equals(value:haxe.extern.Rest<CSSNumberish>):Bool;
	/**
		The **`max()`** method of the passed.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSNumericValue/max)
	**/
	function max(values:haxe.extern.Rest<CSSNumberish>):CSSNumericValue;
	/**
		The **`min()`** method of the values passed.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSNumericValue/min)
	**/
	function min(values:haxe.extern.Rest<CSSNumberish>):CSSNumericValue;
	/**
		The **`mul()`** method of the the supplied value.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSNumericValue/mul)
	**/
	function mul(values:haxe.extern.Rest<CSSNumberish>):CSSNumericValue;
	/**
		The **`sub()`** method of the `CSSNumericValue`.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSNumericValue/sub)
	**/
	function sub(values:haxe.extern.Rest<CSSNumberish>):CSSNumericValue;
	/**
		The **`to()`** method of the another.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSNumericValue/to)
	**/
	function to(unit:String):CSSUnitValue;
	/**
		The **`toSum()`** method of the ```js-nolint toSum(units) ``` - `units` - : The units to convert to.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSNumericValue/toSum)
	**/
	function toSum(units:haxe.extern.Rest<String>):CSSMathSum;
	/**
		The **`type()`** method of the `CSSNumericValue`, one of `angle`, `flex`, `frequency`, `length`, `resolution`, `percent`, `percentHint`, or `time`.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/CSSNumericValue/type)
	**/
	function type():CSSNumericType;
	function toString():String;
	static var prototype : CSSUnitValue;
}