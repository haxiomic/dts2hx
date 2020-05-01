package ts.lib;
typedef ITypeError = {
	var name : String;
	var message : String;
	@:optional
	var stack : String;
};