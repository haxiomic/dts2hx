package ts.html;
/**
	One drag data item. During a drag operation, each drag event has a dataTransfer property which contains a list of drag data items. Each item in the list is a DataTransferItem object.
**/
@:native("DataTransferItem") extern class DataTransferItem {
	function new();
	/**
		Returns the drag data item kind, one of: "string", "file".
	**/
	final kind : String;
	/**
		Returns the drag data item type string.
	**/
	final type : String;
	/**
		Returns a File object, if the drag data item kind is File.
	**/
	function getAsFile():Null<IFile>;
	/**
		Invokes the callback with the string data as the argument, if the drag data item kind is Plain Unicode string.
	**/
	function getAsString(callback:Null<FunctionStringCallback>):Void;
	function webkitGetAsEntry():Any;
	static var prototype : IDataTransferItem;
}