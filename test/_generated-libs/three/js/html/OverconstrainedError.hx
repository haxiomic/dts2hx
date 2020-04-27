package js.html;
@:native("OverconstrainedError") @tsInterface extern class OverconstrainedError {
	function new();
	var constraint : String;
	var name : String;
	var message : String;
	@:optional
	var stack : String;
	static var prototype : OverconstrainedError;
}