package vue;

typedef ComponentOptions<V, Data, Methods, Computed, PropsDef, Props> = {
	@:optional
	var data : Data;
	@:optional
	var props : PropsDef;
	@:optional
	var propsData : Dynamic;
	@:optional
	var computed : { };
	@:optional
	var methods : Methods;
	@:optional
	var watch : haxe.DynamicAccess<ts.AnyOf3<String, WatchOptionsWithHandler<Dynamic>, WatchHandler<Dynamic>>>;
	@:optional
	var el : ts.AnyOf2<String, js.html.DOMElement>;
	@:optional
	var template : String;
	@:optional
	function render(createElement:CreateElement, hack:RenderContext<Props>):VNode;
	@:optional
	function renderError(createElement:CreateElement, err:js.lib.Error):VNode;
	@:optional
	var staticRenderFns : Array<(createElement:CreateElement) -> VNode>;
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
	function errorCaptured(err:js.lib.Error, vm:Vue, info:String):ts.AnyOf2<Bool, ts.Undefined>;
	@:optional
	function serverPrefetch():js.lib.Promise<ts.Undefined>;
	@:optional
	var directives : haxe.DynamicAccess<ts.AnyOf2<DirectiveOptions, DirectiveFunction>>;
	@:optional
	var components : haxe.DynamicAccess<ts.AnyOf5<VueConstructor<Vue>, FunctionalComponentOptions<Dynamic, vue.types.options.PropsDefinition<Dynamic>>, ComponentOptions<Any, Dynamic, Dynamic, Dynamic, Dynamic, haxe.DynamicAccess<Dynamic>>, vue.types.options.AsyncComponentPromise<Dynamic, Dynamic, Dynamic, Dynamic>, vue.types.options.AsyncComponentFactory<Dynamic, Dynamic, Dynamic, Dynamic>>>;
	@:optional
	var transitions : haxe.DynamicAccess<Dynamic>;
	@:optional
	var filters : haxe.DynamicAccess<haxe.Constraints.Function>;
	@:optional
	var provide : ts.AnyOf2<Dynamic, () -> Dynamic>;
	@:optional
	var inject : vue.types.options.InjectOptions;
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
	var mixins : Array<ts.AnyOf2<VueConstructor<Vue>, ComponentOptions<Vue, vue.types.options.DefaultData<Vue>, vue.types.options.DefaultMethods<Vue>, vue.types.options.DefaultComputed, vue.types.options.PropsDefinition<haxe.DynamicAccess<Dynamic>>, haxe.DynamicAccess<Dynamic>>>>;
	@:optional
	var name : String;
	@:optional
	@:native("extends")
	var extends_ : ts.AnyOf2<VueConstructor<Vue>, ComponentOptions<Vue, vue.types.options.DefaultData<Vue>, vue.types.options.DefaultMethods<Vue>, vue.types.options.DefaultComputed, vue.types.options.PropsDefinition<haxe.DynamicAccess<Dynamic>>, haxe.DynamicAccess<Dynamic>>>;
	@:optional
	var delimiters : ts.Tuple2<String, String>;
	@:optional
	var comments : Bool;
	@:optional
	var inheritAttrs : Bool;
};