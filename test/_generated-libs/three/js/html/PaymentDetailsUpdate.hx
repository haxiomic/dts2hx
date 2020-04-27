package js.html;
extern interface PaymentDetailsUpdate extends PaymentDetailsBase {
	@:optional
	var error : String;
	@:optional
	var total : PaymentItem;
}