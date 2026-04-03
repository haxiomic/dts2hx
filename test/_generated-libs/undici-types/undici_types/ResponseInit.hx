package undici_types;

typedef ResponseInit = {
	@:optional
	final status : Float;
	@:optional
	final statusText : String;
	@:optional
	final headers : HeadersInit;
};