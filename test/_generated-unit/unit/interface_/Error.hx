package unit.interface_;

typedef Error = {
	var name : String;
	var message : String;
	@:optional
	var stack : String;
};