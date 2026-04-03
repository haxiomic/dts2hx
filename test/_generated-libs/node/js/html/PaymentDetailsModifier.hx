package js.html;

typedef PaymentDetailsModifier = {
	@:optional
	var additionalDisplayItems : Array<PaymentItem>;
	@:optional
	var data : Dynamic;
	var supportedMethods : String;
	@:optional
	var total : PaymentItem;
};