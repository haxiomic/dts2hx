package js.html;

/**
	The **`FileSystemFileHandle`** interface of the File System API represents a handle to a file system entry.
	Available only in secure contexts.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/FileSystemFileHandle)
**/
typedef IFileSystemFileHandle = {
	/**
		The **`kind`** read-only property of the `'file'` if the associated entry is a file or `'directory'`.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/FileSystemHandle/kind)
	**/
	final kind : String;
	/**
		The **`createWritable()`** method of the FileSystemFileHandle interface creates a FileSystemWritableFileStream that can be used to write to a file.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/FileSystemFileHandle/createWritable)
	**/
	function createWritable(?options:FileSystemCreateWritableOptions):js.lib.Promise<FileSystemWritableFileStream>;
	/**
		The **`getFile()`** method of the If the file on disk changes or is removed after this method is called, the returned ```js-nolint getFile() ``` None.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/FileSystemFileHandle/getFile)
	**/
	function getFile():js.lib.Promise<js.html.File>;
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
};