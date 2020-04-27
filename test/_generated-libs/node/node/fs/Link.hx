package node.fs;
/**
	Asynchronous link(2) - Create a new link (also known as a hard link) to an existing file.
**/
@:jsRequire("fs", "link") extern class Link {
	/**
		Asynchronous link(2) - Create a new link (also known as a hard link) to an existing file.
	**/
	static function link(existingPath:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>, newPath:haxe.extern.EitherType<String, haxe.extern.EitherType<global.Buffer, node.url.URL>>):js.lib.Promise<Void>;
}