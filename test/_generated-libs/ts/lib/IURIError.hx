package ts.lib;
typedef IURIError = {
	var name : String;
	var message : String;
	@:optional
	var stack : String;
};