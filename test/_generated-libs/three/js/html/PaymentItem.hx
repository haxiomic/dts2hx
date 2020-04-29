package js.html;
extern typedef PaymentItem = {
	var amount : PaymentCurrencyAmount;
	var label : String;
	@:optional
	var pending : Bool;
};