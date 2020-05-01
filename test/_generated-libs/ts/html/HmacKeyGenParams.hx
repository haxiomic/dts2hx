package ts.html;
extern typedef HmacKeyGenParams = {
	var hash : ts.AnyOf2<String, Algorithm>;
	@:optional
	var length : Float;
	var name : String;
};