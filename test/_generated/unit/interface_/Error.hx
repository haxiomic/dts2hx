package unit.interface_;
extern interface Error {
	var name : String;
	var message : String;
	@:optional
	var stack : Null<String>;
}