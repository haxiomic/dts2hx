package undici_types.dispatcher;

typedef StreamFactoryData = {
	var statusCode : Float;
	var headers : haxe.DynamicAccess<Null<ts.AnyOf2<String, Array<String>>>>;
	var opaque : Any;
	var context : Dynamic;
};