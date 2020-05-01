package ts.lib;
typedef ISyntaxError = {
	var name : String;
	var message : String;
	@:optional
	var stack : String;
};