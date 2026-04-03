package global.nodejs;

typedef EmitWarningOptions = {
	/**
		When `warning` is a `string`, `type` is the name to use for the _type_ of warning being emitted.
	**/
	@:optional
	var type : String;
	/**
		A unique identifier for the warning instance being emitted.
	**/
	@:optional
	var code : String;
	/**
		When `warning` is a `string`, `ctor` is an optional function used to limit the generated stack trace.
	**/
	@:optional
	var ctor : haxe.Constraints.Function;
	/**
		Additional text to include with the error.
	**/
	@:optional
	var detail : String;
};