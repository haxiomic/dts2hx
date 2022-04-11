package vue.types.options;

typedef InjectOptions = ts.AnyOf2<haxe.DynamicAccess<ts.AnyOf3<String, js.lib.Symbol, {
	@:optional
	var from : InjectKey;
	@:optional
	@:native("default")
	var default_ : Dynamic;
}>>, Array<String>>;