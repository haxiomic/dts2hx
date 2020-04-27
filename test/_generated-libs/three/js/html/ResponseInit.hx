package js.html;
extern interface ResponseInit {
	@:optional
	var headers : haxe.extern.EitherType<js.lib.Headers, haxe.extern.EitherType<std.Array<std.Array<String>>, Any>>;
	@:optional
	var status : Float;
	@:optional
	var statusText : String;
}