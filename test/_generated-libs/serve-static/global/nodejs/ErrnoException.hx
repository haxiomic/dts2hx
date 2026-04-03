package global.nodejs;

typedef ErrnoException = {
	@:optional
	var errno : Float;
	@:optional
	var code : String;
	@:optional
	var path : String;
	@:optional
	var syscall : String;
	var name : String;
	var message : String;
	@:optional
	var stack : String;
};