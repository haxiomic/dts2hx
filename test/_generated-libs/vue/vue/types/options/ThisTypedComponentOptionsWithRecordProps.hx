package vue.types.options;

/**
	This type should be used when an object mapped to `PropOptions` is used for a component's `props` value.
**/
@:forward
abstract ThisTypedComponentOptionsWithRecordProps<V:(Vue), Data, Methods, Computed, Props>(ThisTypedComponentOptionsWithRecordPropsTypedef<V:(Vue), Data, Methods, Computed, Props>) from ThisTypedComponentOptionsWithRecordPropsTypedef<V:(Vue), Data, Methods, Computed, Props> to ThisTypedComponentOptionsWithRecordPropsTypedef<V:(Vue), Data, Methods, Computed, Props> {
	@:optional
	public var extends_(get, set):ts.AnyOf2<vue.VueConstructor<Vue>, vue.ComponentOptions<Vue, DefaultData<Vue>, DefaultMethods<Vue>, DefaultComputed, PropsDefinition<haxe.DynamicAccess<Dynamic>>, haxe.DynamicAccess<Dynamic>>>;
	inline function get_extends_():ts.AnyOf2<vue.VueConstructor<Vue>, vue.ComponentOptions<Vue, DefaultData<Vue>, DefaultMethods<Vue>, DefaultComputed, PropsDefinition<haxe.DynamicAccess<Dynamic>>, haxe.DynamicAccess<Dynamic>>> return js.Syntax.field(cast this, 'extends');
	inline function set_extends_(v:ts.AnyOf2<vue.VueConstructor<Vue>, vue.ComponentOptions<Vue, DefaultData<Vue>, DefaultMethods<Vue>, DefaultComputed, PropsDefinition<haxe.DynamicAccess<Dynamic>>, haxe.DynamicAccess<Dynamic>>>):ts.AnyOf2<vue.VueConstructor<Vue>, vue.ComponentOptions<Vue, DefaultData<Vue>, DefaultMethods<Vue>, DefaultComputed, PropsDefinition<haxe.DynamicAccess<Dynamic>>, haxe.DynamicAccess<Dynamic>>> { js.Syntax.code("{0}[{1}] = {2}", this, 'extends', v); return v; }
}
