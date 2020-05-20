package global;

@:native("Vue") extern class Vue extends vue.Vue {
	@:native("$mount")
	function DollarMount(?elementOrSelector:ts.AnyOf2<String, js.html.DOMElement>, ?hydrating:Bool):Vue;
	@:native("$watch")
	@:overload(function<T>(expOrFn:() -> T, callback:(n:T, o:T) -> Void, ?options:vue.WatchOptions):() -> Void { })
	function DollarWatch(expOrFn:String, callback:(n:Dynamic, o:Dynamic) -> Void, ?options:vue.WatchOptions):() -> Void;
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
}