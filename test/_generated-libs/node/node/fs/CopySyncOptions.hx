package node.fs;

typedef CopySyncOptions = {
	/**
		Function to filter copied files/directories. Return
		`true` to copy the item, `false` to ignore it.
	**/
	@:optional
	dynamic function filter(source:String, destination:String):Bool;
	/**
		Dereference symlinks
	**/
	@:optional
	var dereference : Bool;
	/**
		When `force` is `false`, and the destination
		exists, throw an error.
	**/
	@:optional
	var errorOnExist : Bool;
	/**
		Overwrite existing file or directory. _The copy
		operation will ignore errors if you set this to false and the destination
		exists. Use the `errorOnExist` option to change this behavior.
	**/
	@:optional
	var force : Bool;
	/**
		Modifiers for copy operation. See `mode` flag of
		{@link
		copyFileSync()
		}
	**/
	@:optional
	var mode : Float;
	/**
		When `true` timestamps from `src` will
		be preserved.
	**/
	@:optional
	var preserveTimestamps : Bool;
	/**
		Copy directories recursively.
	**/
	@:optional
	var recursive : Bool;
	/**
		When true, path resolution for symlinks will be skipped
	**/
	@:optional
	var verbatimSymlinks : Bool;
};