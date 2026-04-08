package ;

@:forward
abstract IVue(IVueTypedef) from IVueTypedef to IVueTypedef {
	public var DollarEl(get, set):js.html.DOMElement;
	inline function get_DollarEl():js.html.DOMElement return js.Syntax.field(cast this, '$el');
	inline function set_DollarEl(v:js.html.DOMElement):js.html.DOMElement { js.Syntax.code("{0}[{1}] = {2}", this, '$el', v); return v; }
	public var DollarOptions(get, set):vue.ComponentOptions<Vue, vue.types.options.DefaultData<Vue>, vue.types.options.DefaultMethods<Vue>, vue.types.options.DefaultComputed, vue.types.options.PropsDefinition<haxe.DynamicAccess<Dynamic>>, haxe.DynamicAccess<Dynamic>>;
	inline function get_DollarOptions():vue.ComponentOptions<Vue, vue.types.options.DefaultData<Vue>, vue.types.options.DefaultMethods<Vue>, vue.types.options.DefaultComputed, vue.types.options.PropsDefinition<haxe.DynamicAccess<Dynamic>>, haxe.DynamicAccess<Dynamic>> return js.Syntax.field(cast this, '$options');
	inline function set_DollarOptions(v:vue.ComponentOptions<Vue, vue.types.options.DefaultData<Vue>, vue.types.options.DefaultMethods<Vue>, vue.types.options.DefaultComputed, vue.types.options.PropsDefinition<haxe.DynamicAccess<Dynamic>>, haxe.DynamicAccess<Dynamic>>):vue.ComponentOptions<Vue, vue.types.options.DefaultData<Vue>, vue.types.options.DefaultMethods<Vue>, vue.types.options.DefaultComputed, vue.types.options.PropsDefinition<haxe.DynamicAccess<Dynamic>>, haxe.DynamicAccess<Dynamic>> { js.Syntax.code("{0}[{1}] = {2}", this, '$options', v); return v; }
	public var DollarParent(get, set):Vue;
	inline function get_DollarParent():Vue return js.Syntax.field(cast this, '$parent');
	inline function set_DollarParent(v:Vue):Vue { js.Syntax.code("{0}[{1}] = {2}", this, '$parent', v); return v; }
	public var DollarRoot(get, set):Vue;
	inline function get_DollarRoot():Vue return js.Syntax.field(cast this, '$root');
	inline function set_DollarRoot(v:Vue):Vue { js.Syntax.code("{0}[{1}] = {2}", this, '$root', v); return v; }
	public var DollarChildren(get, set):Array<Vue>;
	inline function get_DollarChildren():Array<Vue> return js.Syntax.field(cast this, '$children');
	inline function set_DollarChildren(v:Array<Vue>):Array<Vue> { js.Syntax.code("{0}[{1}] = {2}", this, '$children', v); return v; }
	public var DollarRefs(get, set):haxe.DynamicAccess<ts.AnyOf4<js.html.DOMElement, Array<js.html.DOMElement>, Vue, Array<Vue>>>;
	inline function get_DollarRefs():haxe.DynamicAccess<ts.AnyOf4<js.html.DOMElement, Array<js.html.DOMElement>, Vue, Array<Vue>>> return js.Syntax.field(cast this, '$refs');
	inline function set_DollarRefs(v:haxe.DynamicAccess<ts.AnyOf4<js.html.DOMElement, Array<js.html.DOMElement>, Vue, Array<Vue>>>):haxe.DynamicAccess<ts.AnyOf4<js.html.DOMElement, Array<js.html.DOMElement>, Vue, Array<Vue>>> { js.Syntax.code("{0}[{1}] = {2}", this, '$refs', v); return v; }
	public var DollarSlots(get, set):haxe.DynamicAccess<Null<Array<vue.VNode>>>;
	inline function get_DollarSlots():haxe.DynamicAccess<Null<Array<vue.VNode>>> return js.Syntax.field(cast this, '$slots');
	inline function set_DollarSlots(v:haxe.DynamicAccess<Null<Array<vue.VNode>>>):haxe.DynamicAccess<Null<Array<vue.VNode>>> { js.Syntax.code("{0}[{1}] = {2}", this, '$slots', v); return v; }
	public var DollarScopedSlots(get, set):haxe.DynamicAccess<Null<vue.types.vnode.NormalizedScopedSlot>>;
	inline function get_DollarScopedSlots():haxe.DynamicAccess<Null<vue.types.vnode.NormalizedScopedSlot>> return js.Syntax.field(cast this, '$scopedSlots');
	inline function set_DollarScopedSlots(v:haxe.DynamicAccess<Null<vue.types.vnode.NormalizedScopedSlot>>):haxe.DynamicAccess<Null<vue.types.vnode.NormalizedScopedSlot>> { js.Syntax.code("{0}[{1}] = {2}", this, '$scopedSlots', v); return v; }
	public var DollarIsServer(get, set):Bool;
	inline function get_DollarIsServer():Bool return js.Syntax.field(cast this, '$isServer');
	inline function set_DollarIsServer(v:Bool):Bool { js.Syntax.code("{0}[{1}] = {2}", this, '$isServer', v); return v; }
	public var DollarData(get, set):haxe.DynamicAccess<Dynamic>;
	inline function get_DollarData():haxe.DynamicAccess<Dynamic> return js.Syntax.field(cast this, '$data');
	inline function set_DollarData(v:haxe.DynamicAccess<Dynamic>):haxe.DynamicAccess<Dynamic> { js.Syntax.code("{0}[{1}] = {2}", this, '$data', v); return v; }
	public var DollarProps(get, set):haxe.DynamicAccess<Dynamic>;
	inline function get_DollarProps():haxe.DynamicAccess<Dynamic> return js.Syntax.field(cast this, '$props');
	inline function set_DollarProps(v:haxe.DynamicAccess<Dynamic>):haxe.DynamicAccess<Dynamic> { js.Syntax.code("{0}[{1}] = {2}", this, '$props', v); return v; }
	public var DollarSsrContext(get, set):Dynamic;
	inline function get_DollarSsrContext():Dynamic return js.Syntax.field(cast this, '$ssrContext');
	inline function set_DollarSsrContext(v:Dynamic):Dynamic { js.Syntax.code("{0}[{1}] = {2}", this, '$ssrContext', v); return v; }
	public var DollarVnode(get, set):vue.VNode;
	inline function get_DollarVnode():vue.VNode return js.Syntax.field(cast this, '$vnode');
	inline function set_DollarVnode(v:vue.VNode):vue.VNode { js.Syntax.code("{0}[{1}] = {2}", this, '$vnode', v); return v; }
	public var DollarAttrs(get, set):haxe.DynamicAccess<String>;
	inline function get_DollarAttrs():haxe.DynamicAccess<String> return js.Syntax.field(cast this, '$attrs');
	inline function set_DollarAttrs(v:haxe.DynamicAccess<String>):haxe.DynamicAccess<String> { js.Syntax.code("{0}[{1}] = {2}", this, '$attrs', v); return v; }
	public var DollarListeners(get, set):haxe.DynamicAccess<ts.AnyOf2<haxe.Constraints.Function, Array<haxe.Constraints.Function>>>;
	inline function get_DollarListeners():haxe.DynamicAccess<ts.AnyOf2<haxe.Constraints.Function, Array<haxe.Constraints.Function>>> return js.Syntax.field(cast this, '$listeners');
	inline function set_DollarListeners(v:haxe.DynamicAccess<ts.AnyOf2<haxe.Constraints.Function, Array<haxe.Constraints.Function>>>):haxe.DynamicAccess<ts.AnyOf2<haxe.Constraints.Function, Array<haxe.Constraints.Function>>> { js.Syntax.code("{0}[{1}] = {2}", this, '$listeners', v); return v; }
	public var DollarMount(get, set):(Null<ts.AnyOf2<String, js.html.DOMElement>>, Null<Bool>) -> Vue;
	inline function get_DollarMount():(Null<ts.AnyOf2<String, js.html.DOMElement>>, Null<Bool>) -> Vue return js.Syntax.field(cast this, '$mount');
	inline function set_DollarMount(v:(Null<ts.AnyOf2<String, js.html.DOMElement>>, Null<Bool>) -> Vue):(Null<ts.AnyOf2<String, js.html.DOMElement>>, Null<Bool>) -> Vue { js.Syntax.code("{0}[{1}] = {2}", this, '$mount', v); return v; }
	public var DollarForceUpdate(get, set):() -> Void;
	inline function get_DollarForceUpdate():() -> Void return js.Syntax.field(cast this, '$forceUpdate');
	inline function set_DollarForceUpdate(v:() -> Void):() -> Void { js.Syntax.code("{0}[{1}] = {2}", this, '$forceUpdate', v); return v; }
	public var DollarDestroy(get, set):() -> Void;
	inline function get_DollarDestroy():() -> Void return js.Syntax.field(cast this, '$destroy');
	inline function set_DollarDestroy(v:() -> Void):() -> Void { js.Syntax.code("{0}[{1}] = {2}", this, '$destroy', v); return v; }
	/**
		Access the native `$set` field. This field has type parameters
		that cannot be expressed in a property type, so use js.Syntax.field:
		```haxe
		js.Syntax.field(obj, '$set');
		```
	**/
	public var DollarDelete(get, set):(Dynamic, ts.AnyOf2<String, Float>) -> Void;
	inline function get_DollarDelete():(Dynamic, ts.AnyOf2<String, Float>) -> Void return js.Syntax.field(cast this, '$delete');
	inline function set_DollarDelete(v:(Dynamic, ts.AnyOf2<String, Float>) -> Void):(Dynamic, ts.AnyOf2<String, Float>) -> Void { js.Syntax.code("{0}[{1}] = {2}", this, '$delete', v); return v; }
	public var DollarWatch(get, set):(String, (Dynamic, Dynamic) -> Void, Null<vue.WatchOptions>) -> (() -> Void);
	inline function get_DollarWatch():(String, (Dynamic, Dynamic) -> Void, Null<vue.WatchOptions>) -> (() -> Void) return js.Syntax.field(cast this, '$watch');
	inline function set_DollarWatch(v:(String, (Dynamic, Dynamic) -> Void, Null<vue.WatchOptions>) -> (() -> Void)):(String, (Dynamic, Dynamic) -> Void, Null<vue.WatchOptions>) -> (() -> Void) { js.Syntax.code("{0}[{1}] = {2}", this, '$watch', v); return v; }
	public var DollarOn(get, set):(ts.AnyOf2<String, Array<String>>, haxe.Constraints.Function) -> Vue;
	inline function get_DollarOn():(ts.AnyOf2<String, Array<String>>, haxe.Constraints.Function) -> Vue return js.Syntax.field(cast this, '$on');
	inline function set_DollarOn(v:(ts.AnyOf2<String, Array<String>>, haxe.Constraints.Function) -> Vue):(ts.AnyOf2<String, Array<String>>, haxe.Constraints.Function) -> Vue { js.Syntax.code("{0}[{1}] = {2}", this, '$on', v); return v; }
	public var DollarOnce(get, set):(ts.AnyOf2<String, Array<String>>, haxe.Constraints.Function) -> Vue;
	inline function get_DollarOnce():(ts.AnyOf2<String, Array<String>>, haxe.Constraints.Function) -> Vue return js.Syntax.field(cast this, '$once');
	inline function set_DollarOnce(v:(ts.AnyOf2<String, Array<String>>, haxe.Constraints.Function) -> Vue):(ts.AnyOf2<String, Array<String>>, haxe.Constraints.Function) -> Vue { js.Syntax.code("{0}[{1}] = {2}", this, '$once', v); return v; }
	public var DollarOff(get, set):(Null<ts.AnyOf2<String, Array<String>>>, Null<haxe.Constraints.Function>) -> Vue;
	inline function get_DollarOff():(Null<ts.AnyOf2<String, Array<String>>>, Null<haxe.Constraints.Function>) -> Vue return js.Syntax.field(cast this, '$off');
	inline function set_DollarOff(v:(Null<ts.AnyOf2<String, Array<String>>>, Null<haxe.Constraints.Function>) -> Vue):(Null<ts.AnyOf2<String, Array<String>>>, Null<haxe.Constraints.Function>) -> Vue { js.Syntax.code("{0}[{1}] = {2}", this, '$off', v); return v; }
	public var DollarEmit(get, set):(String, haxe.extern.Rest<Dynamic>) -> Vue;
	inline function get_DollarEmit():(String, haxe.extern.Rest<Dynamic>) -> Vue return js.Syntax.field(cast this, '$emit');
	inline function set_DollarEmit(v:(String, haxe.extern.Rest<Dynamic>) -> Vue):(String, haxe.extern.Rest<Dynamic>) -> Vue { js.Syntax.code("{0}[{1}] = {2}", this, '$emit', v); return v; }
	public var DollarNextTick(get, set):(() -> Void) -> Void;
	inline function get_DollarNextTick():(() -> Void) -> Void return js.Syntax.field(cast this, '$nextTick');
	inline function set_DollarNextTick(v:(() -> Void) -> Void):(() -> Void) -> Void { js.Syntax.code("{0}[{1}] = {2}", this, '$nextTick', v); return v; }
	public var DollarCreateElement(get, set):(Null<ts.AnyOf7<String, vue.VueConstructor<Vue>, vue.FunctionalComponentOptions<Dynamic, vue.types.options.PropsDefinition<Dynamic>>, vue.ComponentOptions<ts.Never, Dynamic, Dynamic, Dynamic, Dynamic, haxe.DynamicAccess<Dynamic>>, vue.types.options.AsyncComponentPromise<Dynamic, Dynamic, Dynamic, Dynamic>, vue.types.options.AsyncComponentFactory<Dynamic, Dynamic, Dynamic, Dynamic>, () -> vue.Component<Dynamic, Dynamic, Dynamic, Dynamic>>>, Null<vue.VNodeChildren>) -> vue.VNode;
	inline function get_DollarCreateElement():(Null<ts.AnyOf7<String, vue.VueConstructor<Vue>, vue.FunctionalComponentOptions<Dynamic, vue.types.options.PropsDefinition<Dynamic>>, vue.ComponentOptions<ts.Never, Dynamic, Dynamic, Dynamic, Dynamic, haxe.DynamicAccess<Dynamic>>, vue.types.options.AsyncComponentPromise<Dynamic, Dynamic, Dynamic, Dynamic>, vue.types.options.AsyncComponentFactory<Dynamic, Dynamic, Dynamic, Dynamic>, () -> vue.Component<Dynamic, Dynamic, Dynamic, Dynamic>>>, Null<vue.VNodeChildren>) -> vue.VNode return js.Syntax.field(cast this, '$createElement');
	inline function set_DollarCreateElement(v:(Null<ts.AnyOf7<String, vue.VueConstructor<Vue>, vue.FunctionalComponentOptions<Dynamic, vue.types.options.PropsDefinition<Dynamic>>, vue.ComponentOptions<ts.Never, Dynamic, Dynamic, Dynamic, Dynamic, haxe.DynamicAccess<Dynamic>>, vue.types.options.AsyncComponentPromise<Dynamic, Dynamic, Dynamic, Dynamic>, vue.types.options.AsyncComponentFactory<Dynamic, Dynamic, Dynamic, Dynamic>, () -> vue.Component<Dynamic, Dynamic, Dynamic, Dynamic>>>, Null<vue.VNodeChildren>) -> vue.VNode):(Null<ts.AnyOf7<String, vue.VueConstructor<Vue>, vue.FunctionalComponentOptions<Dynamic, vue.types.options.PropsDefinition<Dynamic>>, vue.ComponentOptions<ts.Never, Dynamic, Dynamic, Dynamic, Dynamic, haxe.DynamicAccess<Dynamic>>, vue.types.options.AsyncComponentPromise<Dynamic, Dynamic, Dynamic, Dynamic>, vue.types.options.AsyncComponentFactory<Dynamic, Dynamic, Dynamic, Dynamic>, () -> vue.Component<Dynamic, Dynamic, Dynamic, Dynamic>>>, Null<vue.VNodeChildren>) -> vue.VNode { js.Syntax.code("{0}[{1}] = {2}", this, '$createElement', v); return v; }
}
