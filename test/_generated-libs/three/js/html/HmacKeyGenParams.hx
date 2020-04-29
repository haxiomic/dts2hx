package js.html;
extern typedef HmacKeyGenParams = {
	var hash : haxe.extern.EitherType<String, Algorithm>;
	@:optional
	var length : Float;
	var name : String;
};