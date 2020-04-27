package js.html;
extern typedef PaymentMethodData = { @:optional
	var data : Any; var supportedMethods : haxe.extern.EitherType<String, std.Array<String>>; };