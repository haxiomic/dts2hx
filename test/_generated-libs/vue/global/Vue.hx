package global;

@:native("Vue") extern class Vue extends vue.Vue {
	@:native("$watch")
	@:overload(function<T>(expOrFn:() -> T, callback:(n:T, o:T) -> Void, ?options:vue.WatchOptions):() -> Void { })
	function DollarWatch(expOrFn:String, callback:(n:Dynamic, o:Dynamic) -> Void, ?options:vue.WatchOptions):() -> Void;
	@:native("$nextTick")
	@:overload(function():js.lib.Promise<ts.Undefined> { })
	function DollarNextTick(callback:() -> Void):Void;
	static var prototype : Vue;
}