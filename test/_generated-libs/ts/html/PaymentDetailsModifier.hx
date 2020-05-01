package ts.html;
extern typedef PaymentDetailsModifier = {
	@:optional
	var additionalDisplayItems : std.Array<PaymentItem>;
	@:optional
	var data : Any;
	var supportedMethods : ts.AnyOf2<String, std.Array<String>>;
	@:optional
	var total : PaymentItem;
};