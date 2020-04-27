package js.html;
extern interface PaymentItem {
	var amount : PaymentCurrencyAmount;
	var label : String;
	@:optional
	var pending : Bool;
}