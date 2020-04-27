package node.fs;
/**
	Asynchronously copies src to dest. By default, dest is overwritten if it already exists.
	No arguments other than a possible exception are given to the callback function.
	Node.js makes no guarantees about the atomicity of the copy operation.
	If an error occurs after the destination file has been opened for writing, Node.js will attempt
	to remove the destination.
	
	
	
	Asynchronously copies src to dest. By default, dest is overwritten if it already exists.
	No arguments other than a possible exception are given to the callback function.
	Node.js makes no guarantees about the atomicity of the copy operation.
	If an error occurs after the destination file has been opened for writing, Node.js will attempt
	to remove the destination.
**/
@:jsRequire("fs", "copyFile") @valueModuleOnly extern class CopyFile {
	/**
		Asynchronously copies src to dest. By default, dest is overwritten if it already exists.
		No arguments other than a possible exception are given to the callback function.
		Node.js makes no guarantees about the atomicity of the copy operation.
		If an error occurs after the destination file has been opened for writing, Node.js will attempt
		to remove the destination.
	**/
	static function __promisify__(src:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, dst:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, ?flags:Float):js.lib.Promise<Void>;
}