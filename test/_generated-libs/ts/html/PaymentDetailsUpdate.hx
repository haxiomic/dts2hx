package ts.html;
typedef PaymentDetailsUpdate = {
	@:optional
	var error : String;
	@:optional
	var total : PaymentItem;
	@:optional
	var displayItems : Array<PaymentItem>;
	@:optional
	var modifiers : Array<PaymentDetailsModifier>;
	@:optional
	var shippingOptions : Array<PaymentShippingOption>;
};