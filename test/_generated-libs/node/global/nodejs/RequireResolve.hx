package global.nodejs;

typedef RequireResolve = {
	/**
		Use the internal `require()` machinery to look up the location of a module,
		but rather than loading the module, just return the resolved filename.
		
		If the module can not be found, a `MODULE_NOT_FOUND` error is thrown.
	**/
	@:selfCall
	function call(id:String, ?options:RequireResolveOptions):String;
	/**
		Returns an array containing the paths searched during resolution of `request` or
		`null` if the `request` string references a core module, for example `http` or
		`fs`.
	**/
	function paths(request:String):Null<Array<String>>;
};