package ts.lib;
/**
	An object of this type is returned by the files property of the HTML <input> element; this lets you access the list of files selected with the <input type="file"> element. It's also used for a list of files dropped into web content when using the drag and drop API; see the DataTransfer object for details on this usage.
**/
extern typedef IFileList = {
	final length : Float;
	function item(index:Float):Null<ts.html.IFile>;
};