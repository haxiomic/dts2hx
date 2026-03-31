package vue.types.options;

typedef Prop<T> = ts.AnyOf3<() -> T, {
	function new(args:haxe.extern.Rest<ts.Never>):Dynamic;
}, {
	function new(args:haxe.extern.Rest<String>):haxe.Constraints.Function;
}>;