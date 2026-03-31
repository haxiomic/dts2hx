package vue.types.options;

typedef PropValidator<T> = ts.AnyOf5<{
	function new(args:haxe.extern.Rest<String>):haxe.Constraints.Function;
}, vue.PropOptions<T>, () -> T, {
	function new(args:haxe.extern.Rest<ts.Never>):Dynamic;
}, Array<Prop<T>>>;