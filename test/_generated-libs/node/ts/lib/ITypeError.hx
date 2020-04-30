package ts.lib;
extern typedef ITypeError = {
	var name : String;
	var message : String;
	@:optional
	var stack : String;
};