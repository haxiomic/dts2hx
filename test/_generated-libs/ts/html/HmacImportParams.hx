package ts.html;
extern typedef HmacImportParams = {
	var hash : ts.AnyOf2<String, Algorithm>;
	@:optional
	var length : Float;
	var name : String;
};