package js.html;
extern interface PropertyIndexedKeyframes {
	@:optional
	var composite : haxe.extern.EitherType<String, std.Array<String>>;
	@:optional
	var easing : haxe.extern.EitherType<String, std.Array<String>>;
	@:optional
	var offset : haxe.extern.EitherType<Float, std.Array<Null<Float>>>;
}