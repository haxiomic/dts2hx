package js.html;
extern interface CloseEventInit extends EventInit {
	@:optional
	var code : Float;
	@:optional
	var reason : String;
	@:optional
	var wasClean : Bool;
}