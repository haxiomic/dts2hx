package vue.types.options;

typedef PropValidator<T> = ts.AnyOf5<vue.PropOptions<T>, {
	function new(args:haxe.extern.Rest<String>):haxe.Constraints.Function;
}, () -> T, {
	function new(args:haxe.extern.Rest<ts.Never>):Dynamic;
}, Array<Prop<T>>>;