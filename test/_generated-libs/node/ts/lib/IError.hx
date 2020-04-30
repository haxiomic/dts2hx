package ts.lib;
extern typedef IError = {
	var name : String;
	var message : String;
	@:optional
	var stack : String;
};