package js.html;
extern typedef PaymentDetailsUpdate = {
	@:optional
	var error : String;
	@:optional
	var total : PaymentItem;
	@:optional
	var displayItems : std.Array<PaymentItem>;
	@:optional
	var modifiers : std.Array<PaymentDetailsModifier>;
	@:optional
	var shippingOptions : std.Array<PaymentShippingOption>;
};