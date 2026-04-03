package undici_types;

@:jsRequire("undici-types", "Request") extern class Request extends BodyMixin {
	function new(input:RequestInfo, ?init:RequestInit);
	final cache : RequestCache;
	final credentials : RequestCredentials;
	final destination : RequestDestination;
	final headers : Headers;
	final integrity : String;
	final method : String;
	final mode : RequestMode;
	final redirect : RequestRedirect;
	final referrer : String;
	final referrerPolicy : ReferrerPolicy;
	final url : String;
	final keepalive : Bool;
	final signal : js.html.AbortSignal;
	final duplex : String;
	function clone():Request;
	static var prototype : Request;
}