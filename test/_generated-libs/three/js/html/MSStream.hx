package js.html;
@:native("MSStream") @tsInterface extern class MSStream {
	function new();
	final type : String;
	function msClose():Void;
	function msDetachStream():Any;
	static var prototype : MSStream;
}