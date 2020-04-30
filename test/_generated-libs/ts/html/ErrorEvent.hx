package ts.html;
/**
	Events providing information related to errors in scripts or in files.
**/
@:native("ErrorEvent") extern class ErrorEvent {
	function new(type:String, ?eventInitDict:ErrorEventInit);
	final colno : Float;
	final error : Any;
	final filename : String;
	final lineno : Float;
	final message : String;
	static var prototype : IErrorEvent;
}