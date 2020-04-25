package global.nodejs;
extern interface WritableStream extends EventEmitter {
	var writable : Bool;
	@:overload(function(str:String, ?encoding:String, ?cb:(err:Null<js.lib.Error>) -> Void):Bool { })
	function write(buffer:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, js.lib.Uint8Array>>, ?cb:(err:Null<js.lib.Error>) -> Void):Bool;
	@:overload(function(data:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, js.lib.Uint8Array>>, ?cb:() -> Void):Void { })
	@:overload(function(str:String, ?encoding:String, ?cb:() -> Void):Void { })
	function end(?cb:() -> Void):Void;
}