package node.stream;

@:jsRequire("stream", "finished") @valueModuleOnly extern class Finished {
	@:selfCall
	static function call(stream:ts.AnyOf3<global.nodejs.WritableStream, global.nodejs.ReadableStream, global.nodejs.ReadWriteStream>, callback:ts.AnyOf2<() -> Void, (err:global.nodejs.ErrnoException) -> Void>):() -> Void;
}