package js.html;

/**
	The **`FileSystemDirectoryHandle`** interface of the File System API provides a handle to a file system directory.
	Available only in secure contexts.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryHandle)
**/
@:native("FileSystemDirectoryHandle") extern class FileSystemDirectoryHandle {
	function new();
	/**
		The **`kind`** read-only property of the `'file'` if the associated entry is a file or `'directory'`.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/FileSystemHandle/kind)
	**/
	final kind : String;
	/**
		The **`getDirectoryHandle()`** method of the within the directory handle on which the method is called.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryHandle/getDirectoryHandle)
	**/
	function getDirectoryHandle(name:String, ?options:FileSystemGetDirectoryOptions):js.lib.Promise<FileSystemDirectoryHandle>;
	/**
		The **`getFileHandle()`** method of the directory the method is called.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryHandle/getFileHandle)
	**/
	function getFileHandle(name:String, ?options:FileSystemGetFileOptions):js.lib.Promise<FileSystemFileHandle>;
	/**
		The **`removeEntry()`** method of the directory handle contains a file or directory called the name specified.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryHandle/removeEntry)
	**/
	function removeEntry(name:String, ?options:FileSystemRemoveOptions):js.lib.Promise<ts.Undefined>;
	/**
		The **`resolve()`** method of the directory names from the parent handle to the specified child entry, with the name of the child entry as the last array item.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/FileSystemDirectoryHandle/resolve)
	**/
	function resolve(possibleDescendant:FileSystemHandle):js.lib.Promise<Null<Array<String>>>;
	/**
		The **`name`** read-only property of the handle.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/FileSystemHandle/name)
	**/
	final name : String;
	/**
		The **`isSameEntry()`** method of the ```js-nolint isSameEntry(fileSystemHandle) ``` - FileSystemHandle - : The `FileSystemHandle` to match against the handle on which the method is invoked.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/FileSystemHandle/isSameEntry)
	**/
	function isSameEntry(other:FileSystemHandle):js.lib.Promise<Bool>;
	static var prototype : FileSystemDirectoryHandle;
}