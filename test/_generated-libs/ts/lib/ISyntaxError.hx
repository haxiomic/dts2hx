package ts.lib;
extern typedef ISyntaxError = {
	var name : String;
	var message : String;
	@:optional
	var stack : String;
};