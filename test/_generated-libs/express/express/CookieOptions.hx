package express;

typedef CookieOptions = {
	@:optional
	var maxAge : Float;
	@:optional
	var signed : Bool;
	@:optional
	var expires : js.lib.Date;
	@:optional
	var httpOnly : Bool;
	@:optional
	var path : String;
	@:optional
	var domain : String;
	@:optional
	var secure : Bool;
	@:optional
	dynamic function encode(val:String):String;
	@:optional
	var sameSite : ts.AnyOf2<Bool, String>;
};