package ts.html;
typedef PaymentDetailsModifier = {
	@:optional
	var additionalDisplayItems : Array<PaymentItem>;
	@:optional
	var data : Dynamic;
	var supportedMethods : ts.AnyOf2<String, Array<String>>;
	@:optional
	var total : PaymentItem;
};