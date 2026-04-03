package js.html;

typedef CookieInit = {
	@:optional
	var domain : String;
	@:optional
	var expires : Float;
	var name : String;
	@:optional
	var partitioned : Bool;
	@:optional
	var path : String;
	@:optional
	var sameSite : CookieSameSite;
	var value : String;
};