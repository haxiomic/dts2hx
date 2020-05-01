package ts.html;
@:native("MSStream") extern class MSStream {
	function new();
	final type : String;
	function msClose():Void;
	function msDetachStream():Dynamic;
	static var prototype : IMSStream;
}