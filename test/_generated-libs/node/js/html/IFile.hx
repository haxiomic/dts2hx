package js.html;

/**
	The **`File`** interface provides information about files and allows JavaScript in a web page to access their content.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/File)
	
	`File` class is a global reference for `import { File } from 'node:node:buffer'`
	https://nodejs.org/api/buffer.html#class-file
**/
typedef IFile = {
	/**
		The **`lastModified`** read-only property of the File interface provides the last modified date of the file as the number of milliseconds since the Unix epoch (January 1, 1970 at midnight).
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/File/lastModified)
	**/
	final lastModified : Float;
	/**
		The **`name`** read-only property of the File interface returns the name of the file represented by a File object.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/File/name)
	**/
	final name : String;
	/**
		The **`webkitRelativePath`** read-only property of the File interface contains a string which specifies the file's path relative to the directory selected by the user in an input element with its `webkitdirectory` attribute set.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/File/webkitRelativePath)
	**/
	final webkitRelativePath : String;
	/**
		The **`size`** read-only property of the Blob interface returns the size of the Blob or File in bytes.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Blob/size)
	**/
	final size : Float;
	/**
		The **`type`** read-only property of the Blob interface returns the MIME type of the file.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Blob/type)
	**/
	final type : String;
	/**
		The **`arrayBuffer()`** method of the Blob interface returns a Promise that resolves with the contents of the blob as binary data contained in an ArrayBuffer.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Blob/arrayBuffer)
	**/
	function arrayBuffer():js.lib.Promise<js.lib.ArrayBuffer>;
	/**
		The **`bytes()`** method of the Blob interface returns a Promise that resolves with a Uint8Array containing the contents of the blob as an array of bytes.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Blob/bytes)
	**/
	function bytes():js.lib.Promise<js.lib.Uint8Array_<js.lib.ArrayBuffer>>;
	/**
		The **`slice()`** method of the Blob interface creates and returns a new `Blob` object which contains data from a subset of the blob on which it's called.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Blob/slice)
	**/
	function slice(?start:Float, ?end:Float, ?contentType:String):js.html.Blob;
	/**
		The **`stream()`** method of the Blob interface returns a ReadableStream which upon reading returns the data contained within the `Blob`.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Blob/stream)
	**/
	function stream():ReadableStream<js.lib.Uint8Array_<js.lib.ArrayBuffer>>;
	/**
		The **`text()`** method of the string containing the contents of the blob, interpreted as UTF-8.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/Blob/text)
	**/
	function text():js.lib.Promise<String>;
};