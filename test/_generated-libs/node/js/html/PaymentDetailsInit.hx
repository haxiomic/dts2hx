package js.html;

typedef PaymentDetailsInit = {
	@:optional
	var id : String;
	var total : PaymentItem;
	@:optional
	var displayItems : Array<PaymentItem>;
	@:optional
	var modifiers : Array<PaymentDetailsModifier>;
	@:optional
	var shippingOptions : Array<PaymentShippingOption>;
};