package js.lib;
/**
	A list of DataTransferItem objects representing items being dragged. During a drag operation, each DragEvent has a dataTransfer property and that property is a DataTransferItemList.
**/
extern typedef IDataTransferItemList = {
	/**
		Returns the number of items in the drag data store.
	**/
	final length : Float;
	/**
		Adds a new entry for the given data to the drag data store. If the data is plain text then a type string has to be provided also.
	**/
	@:overload(function(data:js.html.IFile):Null<js.html.IDataTransferItem> { })
	function add(data:String, type:String):Null<js.html.IDataTransferItem>;
	/**
		Removes all the entries in the drag data store.
	**/
	function clear():Void;
	function item(index:Float):js.html.IDataTransferItem;
	/**
		Removes the indexth entry in the drag data store.
	**/
	function remove(index:Float):Void;
};