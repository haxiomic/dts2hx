package js.html;
extern interface ConstrainDOMStringParameters {
	@:optional
	var exact : haxe.extern.EitherType<String, std.Array<String>>;
	@:optional
	var ideal : haxe.extern.EitherType<String, std.Array<String>>;
}