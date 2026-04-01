package lodash;

typedef TemplateOptions = {
	@:optional
	var sourceURL : String;
	/**
		The "escape" delimiter.
	**/
	@:optional
	var escape : js.lib.RegExp;
	/**
		The "evaluate" delimiter.
	**/
	@:optional
	var evaluate : js.lib.RegExp;
	/**
		An object to import into the template as local variables.
	**/
	@:optional
	var imports : Dictionary<Dynamic>;
	/**
		The "interpolate" delimiter.
	**/
	@:optional
	var interpolate : js.lib.RegExp;
	/**
		Used to reference the data object in the template text.
	**/
	@:optional
	var variable : String;
};