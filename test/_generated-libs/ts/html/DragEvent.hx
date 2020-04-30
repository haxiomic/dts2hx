package ts.html;
/**
	A DOM event that represents a drag and drop interaction. The user initiates a drag by placing a pointer device (such as a mouse) on the touch surface and then dragging the pointer to a new location (such as another DOM element). Applications are free to interpret a drag and drop interaction in an application-specific way.
**/
@:native("DragEvent") extern class DragEvent {
	function new(type:String, ?eventInitDict:DragEventInit);
	/**
		Returns the DataTransfer object for the event.
	**/
	final dataTransfer : Null<IDataTransfer>;
	static var prototype : IDragEvent;
}