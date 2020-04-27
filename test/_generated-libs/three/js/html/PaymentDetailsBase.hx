package js.html;
extern typedef PaymentDetailsBase = { @:optional
	var displayItems : std.Array<PaymentItem>; @:optional
	var modifiers : std.Array<PaymentDetailsModifier>; @:optional
	var shippingOptions : std.Array<PaymentShippingOption>; };