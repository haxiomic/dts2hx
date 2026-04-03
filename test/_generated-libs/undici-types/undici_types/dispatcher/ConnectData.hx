package undici_types.dispatcher;

typedef ConnectData = {
	var statusCode : Float;
	var headers : haxe.DynamicAccess<Null<ts.AnyOf2<String, Array<String>>>>;
	var socket : node.stream.stream.Duplex;
	var opaque : Any;
};