package global.nodejs;
extern interface ConsoleConstructorOptions {
	var stdout : WritableStream;
	@:optional
	var stderr : Null<WritableStream>;
	@:optional
	var ignoreErrors : Null<Bool>;
	@:optional
	var colorMode : Null<haxe.extern.EitherType<Bool, String>>;
	@:optional
	var inspectOptions : Null<InspectOptions>;
}