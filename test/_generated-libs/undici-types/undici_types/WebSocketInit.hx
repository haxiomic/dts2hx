package undici_types;

typedef WebSocketInit = {
	@:optional
	var protocols : ts.AnyOf2<String, Array<String>>;
	@:optional
	var dispatcher : Dispatcher;
	@:optional
	var headers : HeadersInit;
};