package js.html;
@:native("MSStream") extern class MSStream {
	function new();
	final type : String;
	function msClose():Void;
	function msDetachStream():Any;
	static var prototype : IMSStream;
}