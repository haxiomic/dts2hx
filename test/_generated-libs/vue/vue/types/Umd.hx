package vue.types;

@:jsRequire("vue/types/umd") extern class Umd extends vue.Vue {
	@:native("$mount")
	function DollarMount(?elementOrSelector:ts.AnyOf2<String, js.html.DOMElement>, ?hydrating:Bool):vue.types.Umd;
	@:native("$watch")
	@:overload(function<T>(expOrFn:() -> T, callback:(n:T, o:T) -> Void, ?options:vue.WatchOptions):() -> Void { })
	function DollarWatch(expOrFn:String, callback:(n:Dynamic, o:Dynamic) -> Void, ?options:vue.WatchOptions):() -> Void;
	@:native("$on")
	function DollarOn(event:ts.AnyOf2<String, Array<String>>, callback:haxe.Constraints.Function):vue.types.Umd;
	@:native("$once")
	function DollarOnce(event:ts.AnyOf2<String, Array<String>>, callback:haxe.Constraints.Function):vue.types.Umd;
	@:native("$off")
	function DollarOff(?event:ts.AnyOf2<String, Array<String>>, ?callback:haxe.Constraints.Function):vue.types.Umd;
	@:native("$emit")
	function DollarEmit(event:String, args:haxe.extern.Rest<Dynamic>):vue.types.Umd;
	@:native("$nextTick")
	@:overload(function():js.lib.Promise<Void> { })
	function DollarNextTick(callback:() -> Void):Void;
}