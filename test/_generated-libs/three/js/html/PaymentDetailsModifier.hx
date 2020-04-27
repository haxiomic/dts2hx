package js.html;
extern interface PaymentDetailsModifier {
	@:optional
	var additionalDisplayItems : std.Array<PaymentItem>;
	@:optional
	var data : Any;
	var supportedMethods : haxe.extern.EitherType<String, std.Array<String>>;
	@:optional
	var total : PaymentItem;
}