package vue;

typedef ComputedOptions<T> = {
	@:optional
	function get():T;
	@:optional
	function set(value:T):Void;
	@:optional
	var cache : Bool;
};