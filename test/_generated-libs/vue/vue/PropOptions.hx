package vue;

typedef PropOptions<T> = {
	@:optional
	var type : PropType<T>;
	@:optional
	var required : Bool;
	@:optional
	@:native("default")
	var default_ : ts.AnyOf2<() -> Null<T>, T>;
	@:optional
	function validator(value:T):Bool;
};