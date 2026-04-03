package undici_types.dispatcher;

typedef PipelineHandlerData = {
	var statusCode : Float;
	var headers : haxe.DynamicAccess<Null<ts.AnyOf2<String, Array<String>>>>;
	var opaque : Any;
	var body : undici_types.BodyReadable;
	var context : Dynamic;
};