package js.html;

typedef CookieChangeEventInit = {
	@:optional
	var changed : CookieList;
	@:optional
	var deleted : CookieList;
	@:optional
	var bubbles : Bool;
	@:optional
	var cancelable : Bool;
	@:optional
	var composed : Bool;
};