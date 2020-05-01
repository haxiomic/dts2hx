package ts.lib;
typedef IEvalError = {
	var name : String;
	var message : String;
	@:optional
	var stack : String;
};