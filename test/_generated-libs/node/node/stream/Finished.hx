package node.stream;
@:jsRequire("stream", "finished") @valueModuleOnly extern class Finished {
	static function __promisify__(stream:haxe.extern.EitherType<global.nodejs.WritableStream, haxe.extern.EitherType<global.nodejs.ReadableStream, global.nodejs.ReadWriteStream>>):js.lib.Promise<Void>;
}