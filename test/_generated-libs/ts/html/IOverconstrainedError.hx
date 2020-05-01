package ts.html;
typedef IOverconstrainedError = {
	var constraint : String;
	var name : String;
	var message : String;
	@:optional
	var stack : String;
};