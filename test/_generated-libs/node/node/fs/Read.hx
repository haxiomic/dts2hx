package node.fs;

/**
	Asynchronously reads data from the file referenced by the supplied file descriptor.
**/
@:jsRequire("fs", "read") @valueModuleOnly extern class Read {
	/**
		Asynchronously reads data from the file referenced by the supplied file descriptor.
	**/
	@:selfCall
	static function call<TBuffer>(fd:Float, buffer:TBuffer, offset:Float, length:Float, position:Null<Float>, callback:(err:global.nodejs.ErrnoException, bytesRead:Float, buffer:TBuffer) -> Void):Void;
}