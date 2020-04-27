package js.html;
extern interface HmacImportParams extends Algorithm {
	var hash : haxe.extern.EitherType<String, Algorithm>;
	@:optional
	var length : Float;
}