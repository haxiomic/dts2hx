package ts.html;
typedef HmacKeyGenParams = {
	var hash : ts.AnyOf2<String, Algorithm>;
	@:optional
	var length : Float;
	var name : String;
};