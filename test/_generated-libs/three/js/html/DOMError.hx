package js.html;
/**
	An error object that contains an error name.
**/
@:native("DOMError") @tsInterface extern class DOMError {
	function new();
	final name : String;
	function toString():String;
	static var prototype : DOMError;
}