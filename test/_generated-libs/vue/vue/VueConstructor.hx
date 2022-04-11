package vue;

typedef VueConstructor<V> = {
	@:overload(function<Data, Methods, Computed, Props>(?options:vue.types.options.ThisTypedComponentOptionsWithRecordProps<V, Data, Methods, Computed, Props>):vue.types.vue.ExtendedVue<V, Data, Methods, Computed, Props> { })
	@:overload(function<PropNames>(definition:FunctionalComponentOptions<{ }, Array<PropNames>>):vue.types.vue.ExtendedVue<V, { }, { }, { }, { }> { })
	@:overload(function<Props>(definition:FunctionalComponentOptions<Props, { }>):vue.types.vue.ExtendedVue<V, { }, { }, { }, Props> { })
	@:overload(function(?options:ComponentOptions<V, vue.types.options.DefaultData<V>, vue.types.options.DefaultMethods<V>, vue.types.options.DefaultComputed, vue.types.options.PropsDefinition<haxe.DynamicAccess<Dynamic>>, haxe.DynamicAccess<Dynamic>>):vue.types.vue.ExtendedVue<V, { }, { }, { }, { }> { })
	function extend<Data, Methods, Computed, PropNames>(?options:vue.types.options.ThisTypedComponentOptionsWithArrayProps<V, Data, Methods, Computed, PropNames>):vue.types.vue.ExtendedVue<V, Data, Methods, Computed, { }>;
	@:overload(function():js.lib.Promise<ts.Undefined> { })
	function nextTick<T>(callback:() -> Void, ?context:T):Void;
	@:overload(function<T>(array:Array<T>, key:Float, value:T):T { })
	function set<T>(object:Dynamic, key:ts.AnyOf2<String, Float>, value:T):T;
	@:overload(function<T>(array:Array<T>, key:Float):Void { })
	function delete(object:Dynamic, key:ts.AnyOf2<String, Float>):Void;
	function directive(id:String, ?definition:ts.AnyOf2<DirectiveOptions, DirectiveFunction>):DirectiveOptions;
	function filter(id:String, ?definition:haxe.Constraints.Function):haxe.Constraints.Function;
	@:overload(function<VC>(id:String, constructor:VC):VC { })
	@:overload(function<Data, Methods, Computed, Props>(id:String, definition:AsyncComponent<Data, Methods, Computed, Props>):vue.types.vue.ExtendedVue<V, Data, Methods, Computed, Props> { })
	@:overload(function<Data, Methods, Computed, PropNames>(id:String, ?definition:vue.types.options.ThisTypedComponentOptionsWithArrayProps<V, Data, Methods, Computed, PropNames>):vue.types.vue.ExtendedVue<V, Data, Methods, Computed, { }> { })
	@:overload(function<Data, Methods, Computed, Props>(id:String, ?definition:vue.types.options.ThisTypedComponentOptionsWithRecordProps<V, Data, Methods, Computed, Props>):vue.types.vue.ExtendedVue<V, Data, Methods, Computed, Props> { })
	@:overload(function<PropNames>(id:String, definition:FunctionalComponentOptions<{ }, Array<PropNames>>):vue.types.vue.ExtendedVue<V, { }, { }, { }, { }> { })
	@:overload(function<Props>(id:String, definition:FunctionalComponentOptions<Props, { }>):vue.types.vue.ExtendedVue<V, { }, { }, { }, Props> { })
	@:overload(function(id:String, ?definition:ComponentOptions<V, vue.types.options.DefaultData<V>, vue.types.options.DefaultMethods<V>, vue.types.options.DefaultComputed, vue.types.options.PropsDefinition<haxe.DynamicAccess<Dynamic>>, haxe.DynamicAccess<Dynamic>>):vue.types.vue.ExtendedVue<V, { }, { }, { }, { }> { })
	function component(id:String):VueConstructor<Vue>;
	@:overload(function(plugin:ts.AnyOf2<PluginObject<Dynamic>, PluginFunction<Dynamic>>, options:haxe.extern.Rest<Dynamic>):VueConstructor<V> { })
	function use<T>(plugin:ts.AnyOf2<PluginObject<T>, PluginFunction<T>>, ?options:T):VueConstructor<V>;
	function mixin(mixin:ts.AnyOf2<VueConstructor<Vue>, ComponentOptions<Vue, vue.types.options.DefaultData<Vue>, vue.types.options.DefaultMethods<Vue>, vue.types.options.DefaultComputed, vue.types.options.PropsDefinition<haxe.DynamicAccess<Dynamic>>, haxe.DynamicAccess<Dynamic>>>):VueConstructor<V>;
	function compile(template:String):{
		function render(createElement:Dynamic):VNode;
		var staticRenderFns : Array<() -> VNode>;
	};
	function observable<T>(obj:T):T;
	var config : vue.types.vue.VueConfiguration;
	var version : String;
};