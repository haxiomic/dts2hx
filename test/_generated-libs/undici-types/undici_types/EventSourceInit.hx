package undici_types;

typedef EventSourceInit = {
	@:optional
	var withCredentials : Bool;
	@:optional
	var dispatcher : Dispatcher;
};