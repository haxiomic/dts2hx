package global.nodejs;
extern interface ErrnoException extends js.lib.Error {
	@:optional
	var errno : Null<Float>;
	@:optional
	var code : Null<String>;
	@:optional
	var path : Null<String>;
	@:optional
	var syscall : Null<String>;
	@:optional
	var stack : Null<String>;
}