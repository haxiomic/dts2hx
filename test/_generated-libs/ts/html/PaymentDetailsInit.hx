package ts.html;
typedef PaymentDetailsInit = {
	@:optional
	var id : String;
	var total : PaymentItem;
	@:optional
	var displayItems : std.Array<PaymentItem>;
	@:optional
	var modifiers : std.Array<PaymentDetailsModifier>;
	@:optional
	var shippingOptions : std.Array<PaymentShippingOption>;
};