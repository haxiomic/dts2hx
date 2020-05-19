package vue;

typedef PropOptions<T> = {
	@:optional
	var type : ts.AnyOf3<{ }, () -> T, Array<vue.types.options.Prop<T>>>;
	@:optional
	var required : Bool;
	@:optional
	@:native("default")
	var default_ : ts.AnyOf2<T, () -> Null<T>>;
	@:optional
	function validator(value:T):Bool;
};