package three;
extern interface Event {
	var type : String;
	@:optional
	var target : Any;
}