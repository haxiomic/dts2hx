package global.nodejs;

typedef ConsoleConstructor = {
	@:overload(function(options:ConsoleConstructorOptions):js.lib.Console { })
	function new(stdout:WritableStream, ?stderr:WritableStream, ?ignoreErrors:Bool);
	var prototype : js.lib.Console;
};