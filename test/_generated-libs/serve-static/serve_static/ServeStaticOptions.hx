package serve_static;

typedef ServeStaticOptions = {
	/**
		Enable or disable setting Cache-Control response header, defaults to true. 
		Disabling this will ignore the immutable and maxAge options.
	**/
	@:optional
	var cacheControl : Bool;
	/**
		Set how "dotfiles" are treated when encountered. A dotfile is a file or directory that begins with a dot (".").
		Note this check is done on the path itself without checking if the path actually exists on the disk.
		If root is specified, only the dotfiles above the root are checked (i.e. the root itself can be within a dotfile when when set to "deny").
		The default value is 'ignore'.
		'allow' No special treatment for dotfiles
		'deny' Send a 403 for any request for a dotfile
		'ignore' Pretend like the dotfile does not exist and call next()
	**/
	@:optional
	var dotfiles : String;
	/**
		Enable or disable etag generation, defaults to true.
	**/
	@:optional
	var etag : Bool;
	/**
		Set file extension fallbacks. When set, if a file is not found, the given extensions will be added to the file name and search for.
		The first that exists will be served. Example: ['html', 'htm'].
		The default value is false.
	**/
	@:optional
	var extensions : Array<String>;
	/**
		Let client errors fall-through as unhandled requests, otherwise forward a client error.
		The default value is false.
	**/
	@:optional
	var fallthrough : Bool;
	/**
		Enable or disable the immutable directive in the Cache-Control response header.
		If enabled, the maxAge option should also be specified to enable caching. The immutable directive will prevent supported clients from making conditional requests during the life of the maxAge option to check if the file has changed.
	**/
	@:optional
	var immutable : Bool;
	/**
		By default this module will send "index.html" files in response to a request on a directory.
		To disable this set false or to supply a new index pass a string or an array in preferred order.
	**/
	@:optional
	var index : ts.AnyOf3<String, Bool, Array<String>>;
	/**
		Enable or disable Last-Modified header, defaults to true. Uses the file system's last modified value.
	**/
	@:optional
	var lastModified : Bool;
	/**
		Provide a max-age in milliseconds for http caching, defaults to 0. This can also be a string accepted by the ms module.
	**/
	@:optional
	var maxAge : ts.AnyOf2<String, Float>;
	/**
		Redirect to trailing "/" when the pathname is a dir. Defaults to true.
	**/
	@:optional
	var redirect : Bool;
	/**
		Function to set custom headers on response. Alterations to the headers need to occur synchronously.
		The function is called as fn(res, path, stat), where the arguments are:
		res the response object
		path the file path that is being sent
		stat the stat object of the file that is being sent
	**/
	@:optional
	dynamic function setHeaders(res:express_serve_static_core.Response<Dynamic>, path:String, stat:Dynamic):Dynamic;
};