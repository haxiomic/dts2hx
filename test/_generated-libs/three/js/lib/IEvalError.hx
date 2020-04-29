package js.lib;
extern typedef IEvalError = {
	var name : String;
	var message : String;
	@:optional
	var stack : String;
};