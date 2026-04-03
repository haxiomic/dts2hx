package undici_types.dispatcher;

typedef ResponseData = {
	var statusCode : Float;
	var headers : haxe.DynamicAccess<Null<ts.AnyOf2<String, Array<String>>>>;
	var body : Dynamic;
	var trailers : haxe.DynamicAccess<String>;
	var opaque : Any;
	var context : Dynamic;
};