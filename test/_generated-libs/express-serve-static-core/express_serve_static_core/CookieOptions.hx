package express_serve_static_core;

/**
	Options passed down into `res.cookie`
**/
typedef CookieOptions = {
	/**
		Convenient option for setting the expiry time relative to the current time in **milliseconds**.
	**/
	@:optional
	var maxAge : Float;
	/**
		Indicates if the cookie should be signed.
	**/
	@:optional
	var signed : Bool;
	/**
		Expiry date of the cookie in GMT. If not specified (undefined), creates a session cookie.
	**/
	@:optional
	var expires : js.lib.Date;
	/**
		Flags the cookie to be accessible only by the web server.
	**/
	@:optional
	var httpOnly : Bool;
	/**
		Path for the cookie. Defaults to “/”.
	**/
	@:optional
	var path : String;
	/**
		Domain name for the cookie. Defaults to the domain name of the app.
	**/
	@:optional
	var domain : String;
	/**
		Marks the cookie to be used with HTTPS only.
	**/
	@:optional
	var secure : Bool;
	/**
		A synchronous function used for cookie value encoding. Defaults to encodeURIComponent.
	**/
	@:optional
	dynamic function encode(val:String):String;
	/**
		Value of the “SameSite” Set-Cookie attribute.
	**/
	@:optional
	var sameSite : ts.AnyOf2<Bool, String>;
	/**
		Value of the “Priority” Set-Cookie attribute.
	**/
	@:optional
	var priority : String;
	/**
		Marks the cookie to use partioned storage.
	**/
	@:optional
	var partitioned : Bool;
};