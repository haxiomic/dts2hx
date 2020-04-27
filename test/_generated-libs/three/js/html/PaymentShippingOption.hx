package js.html;
extern interface PaymentShippingOption {
	var amount : PaymentCurrencyAmount;
	var id : String;
	var label : String;
	@:optional
	var selected : Bool;
}