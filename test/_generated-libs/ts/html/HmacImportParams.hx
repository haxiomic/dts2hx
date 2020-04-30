package ts.html;
extern typedef HmacImportParams = {
	var hash : haxe.extern.EitherType<String, Algorithm>;
	@:optional
	var length : Float;
	var name : String;
};