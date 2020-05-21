package vue;

@:jsRequire("vue", "default") extern class Vue {
	@:overload(function<Data, Methods, Computed, Props>(?options:vue.types.options.ThisTypedComponentOptionsWithRecordProps<Vue, Data, Methods, Computed, Props>):vue.types.vue.CombinedVueInstance<Vue, Data, Methods, Computed, { }> { })
	@:overload(function(?options:ComponentOptions<Vue, vue.types.options.DefaultData<Vue>, vue.types.options.DefaultMethods<Vue>, vue.types.options.DefaultComputed, vue.types.options.PropsDefinition<{ }>, { }>):vue.types.vue.CombinedVueInstance<Vue, Dynamic, Dynamic, Dynamic, { }> { })
	function new<Data, Methods, Computed, PropNames>(?options:vue.types.options.ThisTypedComponentOptionsWithArrayProps<Vue, Data, Methods, Computed, PropNames>);
	@:native("$el")
	final DollarEl : js.html.DOMElement;
	@:native("$options")
	final DollarOptions : ComponentOptions<Vue, vue.types.options.DefaultData<Vue>, vue.types.options.DefaultMethods<Vue>, vue.types.options.DefaultComputed, vue.types.options.PropsDefinition<{ }>, { }>;
	@:native("$parent")
	final DollarParent : Vue;
	@:native("$root")
	final DollarRoot : Vue;
	@:native("$children")
	final DollarChildren : Array<Vue>;
	@:native("$refs")
	final DollarRefs : { };
	@:native("$slots")
	final DollarSlots : { };
	@:native("$scopedSlots")
	final DollarScopedSlots : { };
	@:native("$isServer")
	final DollarIsServer : Bool;
	@:native("$data")
	final DollarData : { };
	@:native("$props")
	final DollarProps : { };
	@:native("$ssrContext")
	final DollarSsrContext : Dynamic;
	@:native("$vnode")
	final DollarVnode : VNode;
	@:native("$attrs")
	final DollarAttrs : { };
	@:native("$listeners")
	final DollarListeners : { };
	@:native("$mount")
	function DollarMount(?elementOrSelector:ts.AnyOf2<String, js.html.DOMElement>, ?hydrating:Bool):Vue;
	@:native("$forceUpdate")
	function DollarForceUpdate():Void;
	@:native("$destroy")
	function DollarDestroy():Void;
	@:native("$set")
	@:overload(function<T>(array:Array<T>, key:Float, value:T):T { })
	dynamic function DollarSet<T>(object:Dynamic, key:ts.AnyOf2<String, Float>, value:T):T;
	@:native("$delete")
	@:overload(function<T>(array:Array<T>, key:Float):Void { })
	dynamic function DollarDelete(object:Dynamic, key:ts.AnyOf2<String, Float>):Void;
	@:native("$watch")
	@:overload(function<T>(expOrFn:() -> T, callback:(n:T, o:T) -> Void, ?options:WatchOptions):() -> Void { })
	function DollarWatch(expOrFn:String, callback:(n:Dynamic, o:Dynamic) -> Void, ?options:WatchOptions):() -> Void;
	@:native("$on")
	function DollarOn(event:ts.AnyOf2<String, Array<String>>, callback:haxe.Constraints.Function):Vue;
	@:native("$once")
	function DollarOnce(event:ts.AnyOf2<String, Array<String>>, callback:haxe.Constraints.Function):Vue;
	@:native("$off")
	function DollarOff(?event:ts.AnyOf2<String, Array<String>>, ?callback:haxe.Constraints.Function):Vue;
	@:native("$emit")
	function DollarEmit(event:String, args:haxe.extern.Rest<Dynamic>):Vue;
	@:native("$nextTick")
	@:overload(function():js.lib.Promise<Void> { })
	function DollarNextTick(callback:() -> Void):Void;
	@:native("$createElement")
	@:overload(function(?tag:ts.AnyOf7<String, VueConstructor<Vue>, FunctionalComponentOptions<Dynamic, vue.types.options.PropsDefinition<Dynamic>>, ComponentOptions<Any, Dynamic, Dynamic, Dynamic, Dynamic, { }>, vue.types.options.AsyncComponentPromise<Dynamic, Dynamic, Dynamic, Dynamic>, vue.types.options.AsyncComponentFactory<Dynamic, Dynamic, Dynamic, Dynamic>, () -> Component<vue.types.options.DefaultData<Any>, vue.types.options.DefaultMethods<Any>, vue.types.options.DefaultComputed, { }>>, ?data:VNodeData, ?children:VNodeChildren):VNode { })
	dynamic function DollarCreateElement(?tag:ts.AnyOf7<String, VueConstructor<Vue>, FunctionalComponentOptions<Dynamic, vue.types.options.PropsDefinition<Dynamic>>, ComponentOptions<Any, Dynamic, Dynamic, Dynamic, Dynamic, { }>, vue.types.options.AsyncComponentPromise<Dynamic, Dynamic, Dynamic, Dynamic>, vue.types.options.AsyncComponentFactory<Dynamic, Dynamic, Dynamic, Dynamic>, () -> Component<vue.types.options.DefaultData<Any>, vue.types.options.DefaultMethods<Any>, vue.types.options.DefaultComputed, { }>>, ?children:VNodeChildren):VNode;
	@:overload(function<Data, Methods, Computed, Props>(?options:vue.types.options.ThisTypedComponentOptionsWithRecordProps<Vue, Data, Methods, Computed, Props>):vue.types.vue.ExtendedVue<Vue, Data, Methods, Computed, Props> { })
	@:overload(function<PropNames>(definition:FunctionalComponentOptions<{ }, Array<PropNames>>):vue.types.vue.ExtendedVue<Vue, { }, { }, { }, { }> { })
	@:overload(function<Props>(definition:FunctionalComponentOptions<Props, Props>):vue.types.vue.ExtendedVue<Vue, { }, { }, { }, Props> { })
	@:overload(function(?options:ComponentOptions<Vue, vue.types.options.DefaultData<Vue>, vue.types.options.DefaultMethods<Vue>, vue.types.options.DefaultComputed, vue.types.options.PropsDefinition<{ }>, { }>):vue.types.vue.ExtendedVue<Vue, { }, { }, { }, { }> { })
	static function extend<Data, Methods, Computed, PropNames>(?options:vue.types.options.ThisTypedComponentOptionsWithArrayProps<Vue, Data, Methods, Computed, PropNames>):vue.types.vue.ExtendedVue<Vue, Data, Methods, Computed, { }>;
	@:overload(function():js.lib.Promise<Void> { })
	static function nextTick<T>(callback:() -> Void, ?context:T):Void;
	@:overload(function<T>(array:Array<T>, key:Float, value:T):T { })
	static function set<T>(object:Dynamic, key:ts.AnyOf2<String, Float>, value:T):T;
	@:overload(function<T>(array:Array<T>, key:Float):Void { })
	static function delete(object:Dynamic, key:ts.AnyOf2<String, Float>):Void;
	static function directive(id:String, ?definition:ts.AnyOf2<DirectiveOptions, DirectiveFunction>):DirectiveOptions;
	static function filter(id:String, ?definition:haxe.Constraints.Function):haxe.Constraints.Function;
	@:overload(function<VC>(id:String, constructor:VC):VC { })
	@:overload(function<Data, Methods, Computed, Props>(id:String, definition:AsyncComponent<Data, Methods, Computed, Props>):vue.types.vue.ExtendedVue<Vue, Data, Methods, Computed, Props> { })
	@:overload(function<Data, Methods, Computed, PropNames>(id:String, ?definition:vue.types.options.ThisTypedComponentOptionsWithArrayProps<Vue, Data, Methods, Computed, PropNames>):vue.types.vue.ExtendedVue<Vue, Data, Methods, Computed, { }> { })
	@:overload(function<Data, Methods, Computed, Props>(id:String, ?definition:vue.types.options.ThisTypedComponentOptionsWithRecordProps<Vue, Data, Methods, Computed, Props>):vue.types.vue.ExtendedVue<Vue, Data, Methods, Computed, Props> { })
	@:overload(function<PropNames>(id:String, definition:FunctionalComponentOptions<{ }, Array<PropNames>>):vue.types.vue.ExtendedVue<Vue, { }, { }, { }, { }> { })
	@:overload(function<Props>(id:String, definition:FunctionalComponentOptions<Props, Props>):vue.types.vue.ExtendedVue<Vue, { }, { }, { }, Props> { })
	@:overload(function(id:String, ?definition:ComponentOptions<Vue, vue.types.options.DefaultData<Vue>, vue.types.options.DefaultMethods<Vue>, vue.types.options.DefaultComputed, vue.types.options.PropsDefinition<{ }>, { }>):vue.types.vue.ExtendedVue<Vue, { }, { }, { }, { }> { })
	static function component(id:String):VueConstructor<Vue>;
	@:overload(function(plugin:ts.AnyOf2<PluginObject<Dynamic>, PluginFunction<Dynamic>>, options:haxe.extern.Rest<Dynamic>):VueConstructor<Vue> { })
	static function use<T>(plugin:ts.AnyOf2<PluginObject<T>, PluginFunction<T>>, ?options:T):VueConstructor<Vue>;
	static function mixin(mixin:ts.AnyOf2<VueConstructor<Vue>, ComponentOptions<Vue, vue.types.options.DefaultData<Vue>, vue.types.options.DefaultMethods<Vue>, vue.types.options.DefaultComputed, vue.types.options.PropsDefinition<{ }>, { }>>):VueConstructor<Vue>;
	static function compile(template:String):{
		function render(createElement:Dynamic):VNode;
		var staticRenderFns : Array<() -> VNode>;
	};
	static function observable<T>(obj:T):T;
	static var config : vue.types.vue.VueConfiguration;
	static var version : String;
}