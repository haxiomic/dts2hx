package vue;

@:forward
abstract ComponentOptions<V:(Vue), Data, Methods, Computed, PropsDef, Props>(ComponentOptionsTypedef<V:(Vue), Data, Methods, Computed, PropsDef, Props>) from ComponentOptionsTypedef<V:(Vue), Data, Methods, Computed, PropsDef, Props> to ComponentOptionsTypedef<V:(Vue), Data, Methods, Computed, PropsDef, Props> {
	@:optional
	public var extends_(get, set):ts.AnyOf2<VueConstructor<Vue>, ComponentOptions<Vue, vue.types.options.DefaultData<Vue>, vue.types.options.DefaultMethods<Vue>, vue.types.options.DefaultComputed, vue.types.options.PropsDefinition<haxe.DynamicAccess<Dynamic>>, haxe.DynamicAccess<Dynamic>>>;
	inline function get_extends_():ts.AnyOf2<VueConstructor<Vue>, ComponentOptions<Vue, vue.types.options.DefaultData<Vue>, vue.types.options.DefaultMethods<Vue>, vue.types.options.DefaultComputed, vue.types.options.PropsDefinition<haxe.DynamicAccess<Dynamic>>, haxe.DynamicAccess<Dynamic>>> return js.Syntax.field(cast this, 'extends');
	inline function set_extends_(v:ts.AnyOf2<VueConstructor<Vue>, ComponentOptions<Vue, vue.types.options.DefaultData<Vue>, vue.types.options.DefaultMethods<Vue>, vue.types.options.DefaultComputed, vue.types.options.PropsDefinition<haxe.DynamicAccess<Dynamic>>, haxe.DynamicAccess<Dynamic>>>):ts.AnyOf2<VueConstructor<Vue>, ComponentOptions<Vue, vue.types.options.DefaultData<Vue>, vue.types.options.DefaultMethods<Vue>, vue.types.options.DefaultComputed, vue.types.options.PropsDefinition<haxe.DynamicAccess<Dynamic>>, haxe.DynamicAccess<Dynamic>>> { js.Syntax.code("{0}[{1}] = {2}", this, 'extends', v); return v; }
}
