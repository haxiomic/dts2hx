package undici_types.diagnosticschannel;

typedef Request = {
	@:optional
	var origin : ts.AnyOf2<String, node.url.URL>;
	var completed : Bool;
	@:optional
	var method : undici_types.dispatcher.HttpMethod;
	var path : String;
	var headers : Dynamic;
};