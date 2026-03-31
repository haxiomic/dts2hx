package global.nodejs;

typedef ConsoleConstructor = {
	@:overload(function(options:ConsoleConstructorOptions):js.html.Console { })
	function new(stdout:WritableStream, ?stderr:WritableStream, ?ignoreErrors:Bool);
	var prototype : js.html.Console;
};