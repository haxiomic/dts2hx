package ts.html;
/**
	Events providing information related to modification of the clipboard, that is cut, copy, and paste events.
**/
@:native("ClipboardEvent") extern class ClipboardEvent {
	function new(type:String, ?eventInitDict:ClipboardEventInit);
	final clipboardData : Null<IDataTransfer>;
	static var prototype : IClipboardEvent;
}