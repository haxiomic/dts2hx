package ts.html;
/**
	Used to hold the data that is being dragged during a drag and drop operation. It may hold one or more data items, each of one or more data types. For more information about drag and drop, see HTML Drag and Drop API.
**/
@:native("DataTransfer") extern class DataTransfer {
	function new();
	/**
		Returns the kind of operation that is currently selected. If the kind of operation isn't one of those that is allowed by the effectAllowed attribute, then the operation will fail.
		
		Can be set, to change the selected operation.
		
		The possible values are "none", "copy", "link", and "move".
	**/
	var dropEffect : String;
	/**
		Returns the kinds of operations that are to be allowed.
		
		Can be set (during the dragstart event), to change the allowed operations.
		
		The possible values are "none", "copy", "copyLink", "copyMove", "link", "linkMove", "move", "all", and "uninitialized",
	**/
	var effectAllowed : String;
	/**
		Returns a FileList of the files being dragged, if any.
	**/
	final files : FileList;
	/**
		Returns a DataTransferItemList object, with the drag data.
	**/
	final items : DataTransferItemList;
	/**
		Returns a frozen array listing the formats that were set in the dragstart event. In addition, if any files are being dragged, then one of the types will be the string "Files".
	**/
	final types : ts.lib.ReadonlyArray<String>;
	/**
		Removes the data of the specified formats. Removes all data if the argument is omitted.
	**/
	function clearData(?format:String):Void;
	/**
		Returns the specified data. If there is no such data, returns the empty string.
	**/
	function getData(format:String):String;
	/**
		Adds the specified data.
	**/
	function setData(format:String, data:String):Void;
	/**
		Uses the given element to update the drag feedback, replacing any previously specified feedback.
	**/
	function setDragImage(image:Element, x:Float, y:Float):Void;
	static var prototype : DataTransfer;
}