package js.html;

/**
	The **`FileSystemWritableFileStream`** interface of the File System API is a WritableStream object with additional convenience methods, which operates on a single file on disk.
	Available only in secure contexts.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/FileSystemWritableFileStream)
**/
@:native("FileSystemWritableFileStream") extern class FileSystemWritableFileStream {
	function new();
	/**
		The **`seek()`** method of the FileSystemWritableFileStream interface updates the current file cursor offset to the position (in bytes) specified when calling the method.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/FileSystemWritableFileStream/seek)
	**/
	function seek(position:Float):js.lib.Promise<ts.Undefined>;
	/**
		The **`truncate()`** method of the FileSystemWritableFileStream interface resizes the file associated with the stream to the specified size in bytes.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/FileSystemWritableFileStream/truncate)
	**/
	function truncate(size:Float):js.lib.Promise<ts.Undefined>;
	/**
		The **`write()`** method of the FileSystemWritableFileStream interface writes content into the file the method is called on, at the current file cursor offset.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/FileSystemWritableFileStream/write)
	**/
	function write(data:FileSystemWriteChunkType):js.lib.Promise<ts.Undefined>;
	/**
		The **`locked`** read-only property of the WritableStream interface returns a boolean indicating whether the `WritableStream` is locked to a writer.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WritableStream/locked)
	**/
	final locked : Bool;
	/**
		The **`abort()`** method of the WritableStream interface aborts the stream, signaling that the producer can no longer successfully write to the stream and it is to be immediately moved to an error state, with any queued writes discarded.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WritableStream/abort)
	**/
	function abort(?reason:Dynamic):js.lib.Promise<ts.Undefined>;
	/**
		The **`close()`** method of the WritableStream interface closes the associated stream.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WritableStream/close)
	**/
	function close():js.lib.Promise<ts.Undefined>;
	/**
		The **`getWriter()`** method of the WritableStream interface returns a new instance of WritableStreamDefaultWriter and locks the stream to that instance.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WritableStream/getWriter)
	**/
	function getWriter():WritableStreamDefaultWriter<Dynamic>;
	static var prototype : FileSystemWritableFileStream;
}