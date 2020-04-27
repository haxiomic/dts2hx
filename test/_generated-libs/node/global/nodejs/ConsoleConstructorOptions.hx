package global.nodejs;
extern interface ConsoleConstructorOptions {
	var stdout : WritableStream;
	@:optional
	var stderr : WritableStream;
	@:optional
	var ignoreErrors : Bool;
	@:optional
	var colorMode : haxe.extern.EitherType<Bool, String>;
	@:optional
	var inspectOptions : InspectOptions;
}