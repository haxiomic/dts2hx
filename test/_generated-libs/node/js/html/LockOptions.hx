package js.html;

typedef LockOptions = {
	@:optional
	var ifAvailable : Bool;
	@:optional
	var mode : LockMode;
	@:optional
	var signal : js.html.AbortSignal;
	@:optional
	var steal : Bool;
};