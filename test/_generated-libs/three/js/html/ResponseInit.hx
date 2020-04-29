package js.html;
extern typedef ResponseInit = {
	@:optional
	var headers : haxe.extern.EitherType<js.lib.IHeaders, haxe.extern.EitherType<std.Array<std.Array<String>>, Any>>;
	@:optional
	var status : Float;
	@:optional
	var statusText : String;
};