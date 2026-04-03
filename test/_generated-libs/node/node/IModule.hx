package node;

typedef IModule = {
	/**
		The module objects required for the first time by this one.
	**/
	var children : Array<global.nodejs.Module>;
	/**
		The `module.exports` object is created by the `Module` system. Sometimes this is
		not acceptable; many want their module to be an instance of some class. To do
		this, assign the desired export object to `module.exports`.
	**/
	var exports : Dynamic;
	/**
		The fully resolved filename of the module.
	**/
	var filename : String;
	/**
		The identifier for the module. Typically this is the fully resolved
		filename.
	**/
	var id : String;
	/**
		`true` if the module is running during the Node.js preload
		phase.
	**/
	var isPreloading : Bool;
	/**
		Whether or not the module is done loading, or is in the process of
		loading.
	**/
	var loaded : Bool;
	/**
		The module that first required this one, or `null` if the current module is the
		entry point of the current process, or `undefined` if the module was loaded by
		something that is not a CommonJS module (e.g. REPL or `import`).
	**/
	var parent : Null<global.nodejs.Module>;
	/**
		The directory name of the module. This is usually the same as the
		`path.dirname()` of the `module.id`.
	**/
	var path : String;
	/**
		The search paths for the module.
	**/
	var paths : Array<String>;
	/**
		The `module.require()` method provides a way to load a module as if
		`require()` was called from the original module.
	**/
	function require(id:String):Dynamic;
};