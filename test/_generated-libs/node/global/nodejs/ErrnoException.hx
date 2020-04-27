package global.nodejs;
extern interface ErrnoException extends js.lib.Error {
	@:optional
	var errno : Float;
	@:optional
	var code : String;
	@:optional
	var path : String;
	@:optional
	var syscall : String;
	@:optional
	var stack : String;
}