package vue.types.vue;

typedef CombinedVueInstanceTypedef<Instance:(Vue), Data, Methods, Computed, Props> = {
	@:native("$el")
	final DollarEl : js.html.DOMElement;
	@:native("$options")
	final DollarOptions : vue.ComponentOptions<Vue, vue.types.options.DefaultData<Vue>, vue.types.options.DefaultMethods<Vue>, vue.types.options.DefaultComputed, vue.types.options.PropsDefinition<haxe.DynamicAccess<Dynamic>>, haxe.DynamicAccess<Dynamic>>;
	@:native("$parent")
	final DollarParent : Vue;
	@:native("$root")
	final DollarRoot : Vue;
	@:native("$children")
	final DollarChildren : Array<Vue>;
	@:native("$refs")
	final DollarRefs : haxe.DynamicAccess<ts.AnyOf4<js.html.DOMElement, Array<js.html.DOMElement>, Vue, Array<Vue>>>;
	@:native("$slots")
	final DollarSlots : haxe.DynamicAccess<Null<Array<vue.VNode>>>;
	@:native("$scopedSlots")
	final DollarScopedSlots : haxe.DynamicAccess<Null<vue.types.vnode.NormalizedScopedSlot>>;
	@:native("$isServer")
	final DollarIsServer : Bool;
	@:native("$data")
	final DollarData : haxe.DynamicAccess<Dynamic>;
	@:native("$props")
	final DollarProps : haxe.DynamicAccess<Dynamic>;
	@:native("$ssrContext")
	final DollarSsrContext : Dynamic;
	@:native("$vnode")
	final DollarVnode : vue.VNode;
	@:native("$attrs")
	final DollarAttrs : haxe.DynamicAccess<String>;
	@:native("$listeners")
	final DollarListeners : haxe.DynamicAccess<ts.AnyOf2<haxe.Constraints.Function, Array<haxe.Constraints.Function>>>;
	@:native("$mount")
	function DollarMount(?elementOrSelector:ts.AnyOf2<String, js.html.DOMElement>, ?hydrating:Bool):Instance;
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
	@:overload(function<T>(expOrFn:() -> T, callback:(n:T, o:T) -> Void, ?options:vue.WatchOptions):() -> Void { })
	function DollarWatch(expOrFn:String, callback:(n:Dynamic, o:Dynamic) -> Void, ?options:vue.WatchOptions):() -> Void;
	@:native("$on")
	function DollarOn(event:ts.AnyOf2<String, Array<String>>, callback:haxe.Constraints.Function):Instance;
	@:native("$once")
	function DollarOnce(event:ts.AnyOf2<String, Array<String>>, callback:haxe.Constraints.Function):Instance;
	@:native("$off")
	function DollarOff(?event:ts.AnyOf2<String, Array<String>>, ?callback:haxe.Constraints.Function):Instance;
	@:native("$emit")
	function DollarEmit(event:String, args:haxe.extern.Rest<Dynamic>):Instance;
	@:native("$nextTick")
	@:overload(function():js.lib.Promise<ts.Undefined> { })
	function DollarNextTick(callback:() -> Void):Void;
	@:native("$createElement")
	@:overload(function(?tag:ts.AnyOf7<String, vue.VueConstructor<Vue>, vue.FunctionalComponentOptions<Dynamic, vue.types.options.PropsDefinition<Dynamic>>, vue.ComponentOptions<ts.Never, Dynamic, Dynamic, Dynamic, Dynamic, haxe.DynamicAccess<Dynamic>>, vue.types.options.AsyncComponentPromise<Dynamic, Dynamic, Dynamic, Dynamic>, vue.types.options.AsyncComponentFactory<Dynamic, Dynamic, Dynamic, Dynamic>, () -> vue.Component<Dynamic, Dynamic, Dynamic, Dynamic>>, ?data:vue.VNodeData, ?children:vue.VNodeChildren):vue.VNode { })
	dynamic function DollarCreateElement(?tag:ts.AnyOf7<String, vue.VueConstructor<Vue>, vue.FunctionalComponentOptions<Dynamic, vue.types.options.PropsDefinition<Dynamic>>, vue.ComponentOptions<ts.Never, Dynamic, Dynamic, Dynamic, Dynamic, haxe.DynamicAccess<Dynamic>>, vue.types.options.AsyncComponentPromise<Dynamic, Dynamic, Dynamic, Dynamic>, vue.types.options.AsyncComponentFactory<Dynamic, Dynamic, Dynamic, Dynamic>, () -> vue.Component<Dynamic, Dynamic, Dynamic, Dynamic>>, ?children:vue.VNodeChildren):vue.VNode;
};