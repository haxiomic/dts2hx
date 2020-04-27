package js.html;
extern typedef HmacKeyGenParams = Algorithm & { var hash : haxe.extern.EitherType<String, Algorithm>; @:optional
	var length : Float; };