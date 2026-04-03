package global.console;

typedef ConsoleConstructorOptions = {
	var stdout : global.nodejs.WritableStream;
	@:optional
	var stderr : global.nodejs.WritableStream;
	/**
		Ignore errors when writing to the underlying streams.
	**/
	@:optional
	var ignoreErrors : Bool;
	/**
		Set color support for this `Console` instance. Setting to true enables coloring while inspecting
		values. Setting to `false` disables coloring while inspecting values. Setting to `'auto'` makes color
		support depend on the value of the `isTTY` property and the value returned by `getColorDepth()` on the
		respective stream. This option can not be used, if `inspectOptions.colors` is set as well.
	**/
	@:optional
	var colorMode : ts.AnyOf2<Bool, String>;
	/**
		Specifies options that are passed along to
		[`util.inspect()`](https://nodejs.org/docs/latest-v20.x/api/util.html#utilinspectobject-options).
	**/
	@:optional
	var inspectOptions : node.util.InspectOptions;
	/**
		Set group indentation.
	**/
	@:optional
	var groupIndentation : Float;
};