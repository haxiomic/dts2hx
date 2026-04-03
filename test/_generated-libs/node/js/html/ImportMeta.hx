package js.html;

/**
	The type of `import.meta`.
	
	If you need to declare that a given property exists on `import.meta`,
	this type may be augmented via interface merging.
**/
typedef ImportMeta = {
	/**
		The absolute `file:` URL of the module.
	**/
	var url : String;
	/**
		Provides a module-relative resolution function scoped to each module, returning
		the URL string.
		
		Second `parent` parameter is only used when the `--experimental-import-meta-resolve`
		command flag enabled.
	**/
	@:overload(function(specifier:String, ?parent:ts.AnyOf2<String, node.url.URL>):String { })
	function resolve(specifier:String):String;
	/**
		The directory name of the current module. This is the same as the `path.dirname()` of the `import.meta.filename`.
		**Caveat:** only present on `file:` modules.
	**/
	var dirname : String;
	/**
		The full absolute path and filename of the current module, with symlinks resolved.
		This is the same as the `url.fileURLToPath()` of the `import.meta.url`.
		**Caveat:** only local modules support this property. Modules not using the `file:` protocol will not provide it.
	**/
	var filename : String;
};