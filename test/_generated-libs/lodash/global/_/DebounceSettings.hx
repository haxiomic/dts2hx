package global._;

typedef DebounceSettings = {
	@:optional
	var leading : Bool;
	@:optional
	var maxWait : Float;
	@:optional
	var trailing : Bool;
};