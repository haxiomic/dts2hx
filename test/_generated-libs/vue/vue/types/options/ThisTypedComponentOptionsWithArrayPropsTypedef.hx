package vue.types.options;

typedef ThisTypedComponentOptionsWithArrayPropsTypedef<V:(Vue), Data, Methods, Computed, PropNames:(String)> = {
	@:optional
	var data : ts.AnyOf2<() -> Data, Data>;
	@:optional
	var props : Array<PropNames>;
	@:optional
	var propsData : Dynamic;
	@:optional
	var computed : { };
	@:optional
	var methods : Methods;
	@:optional
	var watch : haxe.DynamicAccess<ts.AnyOf3<String, vue.WatchOptionsWithHandler<Dynamic>, vue.WatchHandler<Dynamic>>>;
	@:optional
	var el : ts.AnyOf2<String, js.html.DOMElement>;
	@:optional
	var template : String;
	@:optional
	function render(createElement:vue.CreateElement, hack:vue.RenderContext<{ }>):vue.VNode;
	@:optional
	function renderError(createElement:vue.CreateElement, err:js.lib.Error):vue.VNode;
	@:optional
	var staticRenderFns : Array<(createElement:vue.CreateElement) -> vue.VNode>;
	@:optional
	function beforeCreate():Void;
	@:optional
	function created():Void;
	@:optional
	function beforeDestroy():Void;
	@:optional
	function destroyed():Void;
	@:optional
	function beforeMount():Void;
	@:optional
	function mounted():Void;
	@:optional
	function beforeUpdate():Void;
	@:optional
	function updated():Void;
	@:optional
	function activated():Void;
	@:optional
	function deactivated():Void;
	@:optional
	function errorCaptured(err:js.lib.Error, vm:Vue, info:String):Bool;
	@:optional
	function serverPrefetch():js.lib.Promise<ts.Undefined>;
	@:optional
	var directives : haxe.DynamicAccess<ts.AnyOf2<vue.DirectiveFunction, vue.DirectiveOptions>>;
	@:optional
	var components : haxe.DynamicAccess<ts.AnyOf5<vue.VueConstructor<Vue>, vue.FunctionalComponentOptions<Dynamic, PropsDefinition<Dynamic>>, vue.ComponentOptions<ts.Never, Dynamic, Dynamic, Dynamic, Dynamic, haxe.DynamicAccess<Dynamic>>, AsyncComponentPromise<Dynamic, Dynamic, Dynamic, Dynamic>, AsyncComponentFactory<Dynamic, Dynamic, Dynamic, Dynamic>>>;
	@:optional
	var transitions : haxe.DynamicAccess<Dynamic>;
	@:optional
	var filters : haxe.DynamicAccess<haxe.Constraints.Function>;
	@:optional
	var provide : ts.AnyOf2<Dynamic, () -> Dynamic>;
	@:optional
	var inject : InjectOptions;
	@:optional
	var model : {
		@:optional
		var prop : String;
		@:optional
		var event : String;
	};
	@:optional
	var parent : Vue;
	@:optional
	var mixins : Array<ts.AnyOf2<vue.VueConstructor<Vue>, vue.ComponentOptions<Vue, DefaultData<Vue>, DefaultMethods<Vue>, DefaultComputed, PropsDefinition<haxe.DynamicAccess<Dynamic>>, haxe.DynamicAccess<Dynamic>>>>;
	@:optional
	var name : String;
	@:optional
	@:native("extends")
	var extends_ : ts.AnyOf2<vue.VueConstructor<Vue>, vue.ComponentOptions<Vue, DefaultData<Vue>, DefaultMethods<Vue>, DefaultComputed, PropsDefinition<haxe.DynamicAccess<Dynamic>>, haxe.DynamicAccess<Dynamic>>>;
	@:optional
	var delimiters : ts.Tuple2<String, String>;
	@:optional
	var comments : Bool;
	@:optional
	var inheritAttrs : Bool;
};