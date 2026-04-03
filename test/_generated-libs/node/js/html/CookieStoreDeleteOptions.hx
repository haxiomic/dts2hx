package js.html;

typedef CookieStoreDeleteOptions = {
	@:optional
	var domain : String;
	var name : String;
	@:optional
	var partitioned : Bool;
	@:optional
	var path : String;
};