package js.html;

typedef PaymentShippingOption = {
	var amount : PaymentCurrencyAmount;
	var id : String;
	var label : String;
	@:optional
	var selected : Bool;
};