package lodash;

typedef TruncateOptions = {
	@:optional
	var length : Float;
	@:optional
	var omission : String;
	@:optional
	var separator : ts.AnyOf2<String, js.lib.RegExp>;
};