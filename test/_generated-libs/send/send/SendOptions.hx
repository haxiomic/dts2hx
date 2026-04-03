package send;

typedef SendOptions = {
	/**
		Enable or disable accepting ranged requests, defaults to true.
		Disabling this will not send Accept-Ranges and ignore the contents of the Range request header.
	**/
	@:optional
	var acceptRanges : Bool;
	/**
		Enable or disable setting Cache-Control response header, defaults to true.
		Disabling this will ignore the maxAge option.
	**/
	@:optional
	var cacheControl : Bool;
	/**
		Set how "dotfiles" are treated when encountered.
		A dotfile is a file or directory that begins with a dot (".").
		Note this check is done on the path itself without checking if the path actually exists on the disk.
		If root is specified, only the dotfiles above the root are checked (i.e. the root itself can be within a dotfile when when set to "deny").
		'allow' No special treatment for dotfiles.
		'deny' Send a 403 for any request for a dotfile.
		'ignore' Pretend like the dotfile does not exist and 404.
		The default value is similar to 'ignore', with the exception that this default will not ignore the files within a directory that begins with a dot, for backward-compatibility.
	**/
	@:optional
	var dotfiles : String;
	/**
		Byte offset at which the stream ends, defaults to the length of the file minus 1.
		The end is inclusive in the stream, meaning end: 3 will include the 4th byte in the stream.
	**/
	@:optional
	var end : Float;
	/**
		Enable or disable etag generation, defaults to true.
	**/
	@:optional
	var etag : Bool;
	/**
		If a given file doesn't exist, try appending one of the given extensions, in the given order.
		By default, this is disabled (set to false).
		An example value that will serve extension-less HTML files: ['html', 'htm'].
		This is skipped if the requested file already has an extension.
	**/
	@:optional
	var extensions : ts.AnyOf3<String, Bool, Array<String>>;
	/**
		Enable or disable the immutable directive in the Cache-Control response header, defaults to false.
		If set to true, the maxAge option should also be specified to enable caching.
		The immutable directive will prevent supported clients from making conditional requests during the life of the maxAge option to check if the file has changed.
	**/
	@:optional
	var immutable : Bool;
	/**
		By default send supports "index.html" files, to disable this set false or to supply a new index pass a string or an array in preferred order.
	**/
	@:optional
	var index : ts.AnyOf3<String, Bool, Array<String>>;
	/**
		Enable or disable Last-Modified header, defaults to true.
		Uses the file system's last modified value.
	**/
	@:optional
	var lastModified : Bool;
	/**
		Provide a max-age in milliseconds for http caching, defaults to 0.
		This can also be a string accepted by the ms module.
	**/
	@:optional
	var maxAge : ts.AnyOf2<String, Float>;
	/**
		Serve files relative to path.
	**/
	@:optional
	var root : String;
	/**
		Byte offset at which the stream starts, defaults to 0.
		The start is inclusive, meaning start: 2 will include the 3rd byte in the stream.
	**/
	@:optional
	var start : Float;
};