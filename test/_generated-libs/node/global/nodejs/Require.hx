package global.nodejs;

typedef Require = {
	/**
		Used to import modules, `JSON`, and local files.
	**/
	@:selfCall
	function call(id:String):Dynamic;
	/**
		Modules are cached in this object when they are required. By deleting a key
		value from this object, the next `require` will reload the module.
		This does not apply to
		[native addons](https://nodejs.org/docs/latest-v20.x/api/addons.html),
		for which reloading will result in an error.
	**/
	var cache : Dict<Module>;
	/**
		Instruct `require` on how to handle certain file extensions.
	**/
	var extensions : RequireExtensions;
	/**
		The `Module` object representing the entry script loaded when the Node.js
		process launched, or `undefined` if the entry point of the program is not a
		CommonJS module.
	**/
	var main : Null<Module>;
	var resolve : RequireResolve;
};