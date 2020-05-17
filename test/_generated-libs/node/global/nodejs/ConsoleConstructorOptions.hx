package global.nodejs;

typedef ConsoleConstructorOptions = {
	var stdout : WritableStream;
	@:optional
	var stderr : WritableStream;
	@:optional
	var ignoreErrors : Bool;
	@:optional
	var colorMode : ts.AnyOf2<Bool, String>;
	@:optional
	var inspectOptions : InspectOptions;
};