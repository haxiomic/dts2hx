package ts.html;
extern typedef RequestInit = {
	/**
		A BodyInit object or null to set request's body.
	**/
	@:optional
	var body : haxe.extern.EitherType<String, haxe.extern.EitherType<ts.lib.IArrayBuffer, haxe.extern.EitherType<ts.lib.ArrayBufferView, haxe.extern.EitherType<IBlob, haxe.extern.EitherType<ts.lib.IFormData, haxe.extern.EitherType<ts.lib.IURLSearchParams, IReadableStream<ts.lib.IUint8Array>>>>>>>;
	/**
		A string indicating how the request will interact with the browser's cache to set request's cache.
	**/
	@:optional
	var cache : String;
	/**
		A string indicating whether credentials will be sent with the request always, never, or only when sent to a same-origin URL. Sets request's credentials.
	**/
	@:optional
	var credentials : String;
	/**
		A Headers object, an object literal, or an array of two-item arrays to set request's headers.
	**/
	@:optional
	var headers : haxe.extern.EitherType<ts.lib.IHeaders, haxe.extern.EitherType<std.Array<std.Array<String>>, Any>>;
	/**
		A cryptographic hash of the resource to be fetched by request. Sets request's integrity.
	**/
	@:optional
	var integrity : String;
	/**
		A boolean to set request's keepalive.
	**/
	@:optional
	var keepalive : Bool;
	/**
		A string to set request's method.
	**/
	@:optional
	var method : String;
	/**
		A string to indicate whether the request will use CORS, or will be restricted to same-origin URLs. Sets request's mode.
	**/
	@:optional
	var mode : String;
	/**
		A string indicating whether request follows redirects, results in an error upon encountering a redirect, or returns the redirect (in an opaque fashion). Sets request's redirect.
	**/
	@:optional
	var redirect : String;
	/**
		A string whose value is a same-origin URL, "about:client", or the empty string, to set request's referrer.
	**/
	@:optional
	var referrer : String;
	/**
		A referrer policy to set request's referrerPolicy.
	**/
	@:optional
	var referrerPolicy : String;
	/**
		An AbortSignal to set request's signal.
	**/
	@:optional
	var signal : IAbortSignal;
	/**
		Can only be null. Used to disassociate request from any Window.
	**/
	@:optional
	var window : Any;
};