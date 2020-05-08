package ts.html;
typedef ResponseInit = {
	@:optional
	var headers : ts.AnyOf3<Headers, Array<Array<String>>, { }>;
	@:optional
	var status : Float;
	@:optional
	var statusText : String;
};