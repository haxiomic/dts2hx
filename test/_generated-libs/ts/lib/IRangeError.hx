package ts.lib;
typedef IRangeError = {
	var name : String;
	var message : String;
	@:optional
	var stack : String;
};