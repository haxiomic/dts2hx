package ts.lib;
typedef IReferenceError = {
	var name : String;
	var message : String;
	@:optional
	var stack : String;
};