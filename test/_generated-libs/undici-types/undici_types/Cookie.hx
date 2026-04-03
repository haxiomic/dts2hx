package undici_types;

typedef Cookie = {
	var name : String;
	var value : String;
	@:optional
	var expires : ts.AnyOf2<Float, js.lib.Date>;
	@:optional
	var maxAge : Float;
	@:optional
	var domain : String;
	@:optional
	var path : String;
	@:optional
	var secure : Bool;
	@:optional
	var httpOnly : Bool;
	@:optional
	var sameSite : String;
	@:optional
	var unparsed : Array<String>;
};