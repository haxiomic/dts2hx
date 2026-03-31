package node.fs;

/**
	Asynchronously writes `buffer` to the file referenced by the supplied file descriptor.
	
	Asynchronously writes `string` to the file referenced by the supplied file descriptor.
**/
@:jsRequire("fs", "write") @valueModuleOnly extern class Write {
	/**
		Asynchronously writes `buffer` to the file referenced by the supplied file descriptor.
	**/
	@:overload(function<TBuffer>(fd:Float, buffer:TBuffer, offset:Null<Float>, length:Null<Float>, callback:(err:global.nodejs.ErrnoException, written:Float, buffer:TBuffer) -> Void):Void { })
	@:overload(function<TBuffer>(fd:Float, buffer:TBuffer, offset:Null<Float>, callback:(err:global.nodejs.ErrnoException, written:Float, buffer:TBuffer) -> Void):Void { })
	@:overload(function<TBuffer>(fd:Float, buffer:TBuffer, callback:(err:global.nodejs.ErrnoException, written:Float, buffer:TBuffer) -> Void):Void { })
	@:overload(function(fd:Float, string:Dynamic, position:Null<Float>, encoding:Null<String>, callback:(err:global.nodejs.ErrnoException, written:Float, str:String) -> Void):Void { })
	@:overload(function(fd:Float, string:Dynamic, position:Null<Float>, callback:(err:global.nodejs.ErrnoException, written:Float, str:String) -> Void):Void { })
	@:overload(function(fd:Float, string:Dynamic, callback:(err:global.nodejs.ErrnoException, written:Float, str:String) -> Void):Void { })
	@:selfCall
	static function call<TBuffer>(fd:Float, buffer:TBuffer, offset:Null<Float>, length:Null<Float>, position:Null<Float>, callback:(err:global.nodejs.ErrnoException, written:Float, buffer:TBuffer) -> Void):Void;
}