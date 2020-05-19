package vue;

typedef IVue = {
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
	function DollarOn(event:ts.AnyOf2<String, Array<String>>, callback:js.lib.Function):Vue;
	@:native("$once")
	function DollarOnce(event:ts.AnyOf2<String, Array<String>>, callback:js.lib.Function):Vue;
	@:native("$off")
	function DollarOff(?event:ts.AnyOf2<String, Array<String>>, ?callback:js.lib.Function):Vue;
	@:native("$emit")
	function DollarEmit(event:String, args:haxe.extern.Rest<Dynamic>):Vue;
	@:native("$nextTick")
	@:overload(function():js.lib.Promise<Void> { })
	function DollarNextTick(callback:() -> Void):Void;
	@:native("$createElement")
	@:overload(function(?tag:ts.AnyOf7<String, VueConstructor<Vue>, FunctionalComponentOptions<Dynamic, vue.types.options.PropsDefinition<Dynamic>>, ComponentOptions<Any, Dynamic, Dynamic, Dynamic, Dynamic, { }>, vue.types.options.AsyncComponentPromise<Dynamic, Dynamic, Dynamic, Dynamic>, vue.types.options.AsyncComponentFactory<Dynamic, Dynamic, Dynamic, Dynamic>, () -> Component<vue.types.options.DefaultData<Any>, vue.types.options.DefaultMethods<Any>, vue.types.options.DefaultComputed, { }>>, ?data:VNodeData, ?children:VNodeChildren):VNode { })
	dynamic function DollarCreateElement(?tag:ts.AnyOf7<String, VueConstructor<Vue>, FunctionalComponentOptions<Dynamic, vue.types.options.PropsDefinition<Dynamic>>, ComponentOptions<Any, Dynamic, Dynamic, Dynamic, Dynamic, { }>, vue.types.options.AsyncComponentPromise<Dynamic, Dynamic, Dynamic, Dynamic>, vue.types.options.AsyncComponentFactory<Dynamic, Dynamic, Dynamic, Dynamic>, () -> Component<vue.types.options.DefaultData<Any>, vue.types.options.DefaultMethods<Any>, vue.types.options.DefaultComputed, { }>>, ?children:VNodeChildren):VNode;
};