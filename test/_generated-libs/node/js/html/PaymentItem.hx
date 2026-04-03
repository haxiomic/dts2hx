package js.html;

typedef PaymentItem = {
	var amount : PaymentCurrencyAmount;
	var label : String;
	@:optional
	var pending : Bool;
};