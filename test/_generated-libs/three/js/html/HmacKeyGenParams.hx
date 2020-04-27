package js.html;
extern interface HmacKeyGenParams extends Algorithm {
	var hash : haxe.extern.EitherType<String, Algorithm>;
	@:optional
	var length : Float;
}