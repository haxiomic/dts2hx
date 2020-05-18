package js.lib;

typedef IError = {
	var name : String;
	var message : String;
	@:optional
	var stack : String;
};