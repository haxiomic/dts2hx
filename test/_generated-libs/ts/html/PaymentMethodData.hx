package ts.html;
extern typedef PaymentMethodData = {
	@:optional
	var data : Any;
	var supportedMethods : ts.AnyOf2<String, std.Array<String>>;
};