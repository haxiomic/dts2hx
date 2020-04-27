package js.lib;
/**
	A list of DataTransferItem objects representing items being dragged. During a drag operation, each DragEvent has a dataTransfer property and that property is a DataTransferItemList.
**/
@:native("DataTransferItemList") @tsInterface extern class DataTransferItemList {
	function new();
	/**
		Returns the number of items in the drag data store.
	**/
	final length : Float;
	/**
		Adds a new entry for the given data to the drag data store. If the data is plain text then a type string has to be provided also.
	**/
	@:overload(function(data:js.html.File):Null<js.html.DataTransferItem> { })
	function add(data:String, type:String):Null<js.html.DataTransferItem>;
	/**
		Removes all the entries in the drag data store.
	**/
	function clear():Void;
	function item(index:Float):js.html.DataTransferItem;
	/**
		Removes the indexth entry in the drag data store.
	**/
	function remove(index:Float):Void;
	static var prototype : DataTransferItemList;
}