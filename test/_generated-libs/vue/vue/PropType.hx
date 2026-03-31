package vue;

typedef PropType<T> = ts.AnyOf4<{
	function new(args:haxe.extern.Rest<String>):haxe.Constraints.Function;
}, () -> T, {
	function new(args:haxe.extern.Rest<ts.Never>):Dynamic;
}, Array<vue.types.options.Prop<T>>>;