package js.html;

typedef PaymentMethodChangeEventInit = {
	@:optional
	var methodDetails : Dynamic;
	@:optional
	var methodName : String;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};