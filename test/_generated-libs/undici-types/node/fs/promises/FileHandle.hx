package node.fs.promises;

typedef FileHandle = {
	/**
		The numeric file descriptor managed by the {FileHandle} object.
	**/
	final fd : Float;
	/**
		Alias of `filehandle.writeFile()`.
		
		When operating on file handles, the mode cannot be changed from what it was set
		to with `fsPromises.open()`. Therefore, this is equivalent to `filehandle.writeFile()`.
	**/
	function appendFile(data:ts.AnyOf2<String, js.lib.Uint8Array_<js.lib.ArrayBufferLike>>, ?options:ts.AnyOf2<String, node.fs.ObjectEncodingOptions & node.events.eventemitter.Abortable>):js.lib.Promise<ts.Undefined>;
	/**
		Changes the ownership of the file. A wrapper for [`chown(2)`](http://man7.org/linux/man-pages/man2/chown.2.html).
	**/
	function chown(uid:Float, gid:Float):js.lib.Promise<ts.Undefined>;
	/**
		Modifies the permissions on the file. See [`chmod(2)`](http://man7.org/linux/man-pages/man2/chmod.2.html).
	**/
	function chmod(mode:node.fs.Mode):js.lib.Promise<ts.Undefined>;
	/**
		Unlike the 16 KiB default `highWaterMark` for a `stream.Readable`, the stream
		returned by this method has a default `highWaterMark` of 64 KiB.
		
		`options` can include `start` and `end` values to read a range of bytes from
		the file instead of the entire file. Both `start` and `end` are inclusive and
		start counting at 0, allowed values are in the
		\[0, [`Number.MAX_SAFE_INTEGER`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number/MAX_SAFE_INTEGER)\] range. If `start` is
		omitted or `undefined`, `filehandle.createReadStream()` reads sequentially from
		the current file position. The `encoding` can be any one of those accepted by `Buffer`.
		
		If the `FileHandle` points to a character device that only supports blocking
		reads (such as keyboard or sound card), read operations do not finish until data
		is available. This can prevent the process from exiting and the stream from
		closing naturally.
		
		By default, the stream will emit a `'close'` event after it has been
		destroyed.  Set the `emitClose` option to `false` to change this behavior.
		
		```js
		import { open } from 'node:fs/promises';
		
		const fd = await open('/dev/input/event0');
		// Create a stream from some character device.
		const stream = fd.createReadStream();
		setTimeout(() => {
		  stream.close(); // This may not close the stream.
		  // Artificially marking end-of-stream, as if the underlying resource had
		  // indicated end-of-file by itself, allows the stream to close.
		  // This does not cancel pending read operations, and if there is such an
		  // operation, the process may still not be able to exit successfully
		  // until it finishes.
		  stream.push(null);
		  stream.read(0);
		}, 100);
		```
		
		If `autoClose` is false, then the file descriptor won't be closed, even if
		there's an error. It is the application's responsibility to close it and make
		sure there's no file descriptor leak. If `autoClose` is set to true (default
		behavior), on `'error'` or `'end'` the file descriptor will be closed
		automatically.
		
		An example to read the last 10 bytes of a file which is 100 bytes long:
		
		```js
		import { open } from 'node:fs/promises';
		
		const fd = await open('sample.txt');
		fd.createReadStream({ start: 90, end: 99 });
		```
	**/
	function createReadStream(?options:CreateReadStreamOptions):node.fs.ReadStream;
	/**
		`options` may also include a `start` option to allow writing data at some
		position past the beginning of the file, allowed values are in the
		\[0, [`Number.MAX_SAFE_INTEGER`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number/MAX_SAFE_INTEGER)\] range. Modifying a file rather than
		replacing it may require the `flags` `open` option to be set to `r+` rather than
		the default `r`. The `encoding` can be any one of those accepted by `Buffer`.
		
		If `autoClose` is set to true (default behavior) on `'error'` or `'finish'` the file descriptor will be closed automatically. If `autoClose` is false,
		then the file descriptor won't be closed, even if there's an error.
		It is the application's responsibility to close it and make sure there's no
		file descriptor leak.
		
		By default, the stream will emit a `'close'` event after it has been
		destroyed.  Set the `emitClose` option to `false` to change this behavior.
	**/
	function createWriteStream(?options:CreateWriteStreamOptions):node.fs.WriteStream;
	/**
		Forces all currently queued I/O operations associated with the file to the
		operating system's synchronized I/O completion state. Refer to the POSIX [`fdatasync(2)`](http://man7.org/linux/man-pages/man2/fdatasync.2.html) documentation for details.
		
		Unlike `filehandle.sync` this method does not flush modified metadata.
	**/
	function datasync():js.lib.Promise<ts.Undefined>;
	/**
		Request that all data for the open file descriptor is flushed to the storage
		device. The specific implementation is operating system and device specific.
		Refer to the POSIX [`fsync(2)`](http://man7.org/linux/man-pages/man2/fsync.2.html) documentation for more detail.
	**/
	function sync():js.lib.Promise<ts.Undefined>;
	/**
		Reads data from the file and stores that in the given buffer.
		
		If the file is not modified concurrently, the end-of-file is reached when the
		number of bytes read is zero.
	**/
	@:overload(function<T:(global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>)>(buffer:T, ?options:node.fs.ReadOptions):js.lib.Promise<FileReadResult<T>> { })
	@:overload(function<T:(global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>)>(?options:node.fs.ReadOptionsWithBuffer<T>):js.lib.Promise<FileReadResult<T>> { })
	function read<T:(global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>)>(buffer:T, ?offset:Float, ?length:Float, ?position:Float):js.lib.Promise<FileReadResult<T>>;
	/**
		Returns a `ReadableStream` that may be used to read the files data.
		
		An error will be thrown if this method is called more than once or is called
		after the `FileHandle` is closed or closing.
		
		```js
		import {
		  open,
		} from 'node:fs/promises';
		
		const file = await open('./some/file/to/read');
		
		for await (const chunk of file.readableWebStream())
		  console.log(chunk);
		
		await file.close();
		```
		
		While the `ReadableStream` will read the file to completion, it will not
		close the `FileHandle` automatically. User code must still call the`fileHandle.close()` method.
	**/
	function readableWebStream(?options:ReadableWebStreamOptions):node.stream.web.ReadableStream<Dynamic>;
	/**
		Asynchronously reads the entire contents of a file.
		
		If `options` is a string, then it specifies the `encoding`.
		
		The `FileHandle` has to support reading.
		
		If one or more `filehandle.read()` calls are made on a file handle and then a `filehandle.readFile()` call is made, the data will be read from the current
		position till the end of the file. It doesn't always read from the beginning
		of the file.
		
		Asynchronously reads the entire contents of a file. The underlying file will _not_ be closed automatically.
		The `FileHandle` must have been opened for reading.
	**/
	@:overload(function(options:ts.AnyOf2<String, { var encoding : global.nodejs.BufferEncoding; } & node.events.eventemitter.Abortable>):js.lib.Promise<String> { })
	@:overload(function(?options:ts.AnyOf2<String, node.fs.ObjectEncodingOptions & node.events.eventemitter.Abortable>):js.lib.Promise<ts.AnyOf2<String, node.buffer.NonSharedBuffer>> { })
	function readFile(?options:{ @:optional var encoding : ts.Never; } & node.events.eventemitter.Abortable):js.lib.Promise<node.buffer.NonSharedBuffer>;
	/**
		Convenience method to create a `readline` interface and stream over the file.
		See `filehandle.createReadStream()` for the options.
		
		```js
		import { open } from 'node:fs/promises';
		
		const file = await open('./some/file/to/read');
		
		for await (const line of file.readLines()) {
		  console.log(line);
		}
		```
	**/
	function readLines(?options:CreateReadStreamOptions):node.readline.Interface;
	@:overload(function(opts:Dynamic):js.lib.Promise<node.fs.BigIntStats> { })
	@:overload(function(?opts:node.fs.StatOptions):js.lib.Promise<ts.AnyOf2<node.fs.Stats, node.fs.BigIntStats>> { })
	function stat(?opts:node.fs.StatOptions & { @:optional var bigint : Bool; }):js.lib.Promise<node.fs.Stats>;
	/**
		Truncates the file.
		
		If the file was larger than `len` bytes, only the first `len` bytes will be
		retained in the file.
		
		The following example retains only the first four bytes of the file:
		
		```js
		import { open } from 'node:fs/promises';
		
		let filehandle = null;
		try {
		  filehandle = await open('temp.txt', 'r+');
		  await filehandle.truncate(4);
		} finally {
		  await filehandle?.close();
		}
		```
		
		If the file previously was shorter than `len` bytes, it is extended, and the
		extended part is filled with null bytes (`'\0'`):
		
		If `len` is negative then `0` will be used.
	**/
	function truncate(?len:Float):js.lib.Promise<ts.Undefined>;
	/**
		Change the file system timestamps of the object referenced by the `FileHandle` then fulfills the promise with no arguments upon success.
	**/
	function utimes(atime:node.fs.TimeLike, mtime:node.fs.TimeLike):js.lib.Promise<ts.Undefined>;
	/**
		Asynchronously writes data to a file, replacing the file if it already exists. `data` can be a string, a buffer, an
		[AsyncIterable](https://tc39.github.io/ecma262/#sec-asynciterable-interface), or an
		[Iterable](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Iteration_protocols#The_iterable_protocol) object.
		The promise is fulfilled with no arguments upon success.
		
		If `options` is a string, then it specifies the `encoding`.
		
		The `FileHandle` has to support writing.
		
		It is unsafe to use `filehandle.writeFile()` multiple times on the same file
		without waiting for the promise to be fulfilled (or rejected).
		
		If one or more `filehandle.write()` calls are made on a file handle and then a`filehandle.writeFile()` call is made, the data will be written from the
		current position till the end of the file. It doesn't always write from the
		beginning of the file.
	**/
	function writeFile(data:ts.AnyOf2<String, js.lib.Uint8Array_<js.lib.ArrayBufferLike>>, ?options:ts.AnyOf2<String, node.fs.ObjectEncodingOptions & node.events.eventemitter.Abortable>):js.lib.Promise<ts.Undefined>;
	/**
		Write `buffer` to the file.
		
		The promise is fulfilled with an object containing two properties:
		
		It is unsafe to use `filehandle.write()` multiple times on the same file
		without waiting for the promise to be fulfilled (or rejected). For this
		scenario, use `filehandle.createWriteStream()`.
		
		On Linux, positional writes do not work when the file is opened in append mode.
		The kernel ignores the position argument and always appends the data to
		the end of the file.
	**/
	@:overload(function(data:String, ?position:Float, ?encoding:global.nodejs.BufferEncoding):js.lib.Promise<{
		var bytesWritten : Float;
		var buffer : String;
	}> { })
	function write<TBuffer:(global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>)>(buffer:TBuffer, ?offset:Float, ?length:Float, ?position:Float):js.lib.Promise<{
		var bytesWritten : Float;
		var buffer : TBuffer;
	}>;
	/**
		Write an array of [ArrayBufferView](https://developer.mozilla.org/en-US/docs/Web/API/ArrayBufferView) s to the file.
		
		The promise is fulfilled with an object containing a two properties:
		
		It is unsafe to call `writev()` multiple times on the same file without waiting
		for the promise to be fulfilled (or rejected).
		
		On Linux, positional writes don't work when the file is opened in append mode.
		The kernel ignores the position argument and always appends the data to
		the end of the file.
	**/
	function writev<TBuffers:(haxe.ds.ReadOnlyArray<global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>>)>(buffers:TBuffers, ?position:Float):js.lib.Promise<node.fs.WriteVResult<TBuffers>>;
	/**
		Read from a file and write to an array of [ArrayBufferView](https://developer.mozilla.org/en-US/docs/Web/API/ArrayBufferView) s
	**/
	function readv<TBuffers:(haxe.ds.ReadOnlyArray<global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>>)>(buffers:TBuffers, ?position:Float):js.lib.Promise<node.fs.ReadVResult<TBuffers>>;
	/**
		Closes the file handle after waiting for any pending operation on the handle to
		complete.
		
		```js
		import { open } from 'node:fs/promises';
		
		let filehandle;
		try {
		  filehandle = await open('thefile.txt', 'r');
		} finally {
		  await filehandle?.close();
		}
		```
	**/
	function close():js.lib.Promise<ts.Undefined>;
};