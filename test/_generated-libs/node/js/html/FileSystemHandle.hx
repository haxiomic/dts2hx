package js.html;

/**
	The **`FileSystemHandle`** interface of the File System API is an object which represents a file or directory entry.
	Available only in secure contexts.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/FileSystemHandle)
**/
@:native("FileSystemHandle") extern class FileSystemHandle {
	function new();
	/**
		The **`kind`** read-only property of the `'file'` if the associated entry is a file or `'directory'`.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/FileSystemHandle/kind)
	**/
	final kind : FileSystemHandleKind;
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
	static var prototype : FileSystemHandle;
}