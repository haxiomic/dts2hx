package ts.html;
typedef ConstrainDOMStringParameters = {
	@:optional
	var exact : ts.AnyOf2<String, std.Array<String>>;
	@:optional
	var ideal : ts.AnyOf2<String, std.Array<String>>;
};