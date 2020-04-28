package unit.interface_;
extern typedef Error = {
	var name : String;
	var message : String;
	@:optional
	var stack : String;
};