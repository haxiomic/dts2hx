package node.stream.stream;

/**
	A module method to pipe between streams and generators forwarding errors and
	properly cleaning up and provide a callback when the pipeline is complete.
	
	```js
	import { pipeline } from 'node:stream';
	import fs from 'node:fs';
	import zlib from 'node:zlib';
	
	// Use the pipeline API to easily pipe a series of streams
	// together and get notified when the pipeline is fully done.
	
	// A pipeline to gzip a potentially huge tar file efficiently:
	
	pipeline(
	  fs.createReadStream('archive.tar'),
	  zlib.createGzip(),
	  fs.createWriteStream('archive.tar.gz'),
	  (err) => {
	    if (err) {
	      console.error('Pipeline failed.', err);
	    } else {
	      console.log('Pipeline succeeded.');
	    }
	  },
	);
	```
	
	The `pipeline` API provides a [`promise version`](https://nodejs.org/docs/latest-v20.x/api/stream.html#streampipelinesource-transforms-destination-options).
	
	`stream.pipeline()` will call `stream.destroy(err)` on all streams except:
	
	* `Readable` streams which have emitted `'end'` or `'close'`.
	* `Writable` streams which have emitted `'finish'` or `'close'`.
	
	`stream.pipeline()` leaves dangling event listeners on the streams
	after the `callback` has been invoked. In the case of reuse of streams after
	failure, this can cause event listener leaks and swallowed errors. If the last
	stream is readable, dangling event listeners will be removed so that the last
	stream can be consumed later.
	
	`stream.pipeline()` closes all the streams when an error is raised.
	The `IncomingRequest` usage with `pipeline` could lead to an unexpected behavior
	once it would destroy the socket without sending the expected response.
	See the example below:
	
	```js
	import fs from 'node:fs';
	import http from 'node:http';
	import { pipeline } from 'node:stream';
	
	const server = http.createServer((req, res) => {
	  const fileStream = fs.createReadStream('./fileNotExist.txt');
	  pipeline(fileStream, res, (err) => {
	    if (err) {
	      console.log(err); // No such file
	      // this message can't be sent once `pipeline` already destroyed the socket
	      return res.end('error!!!');
	    }
	  });
	});
	```
**/
@:jsRequire("stream", "Stream.pipeline") @valueModuleOnly extern class Pipeline {
	/**
		A module method to pipe between streams and generators forwarding errors and
		properly cleaning up and provide a callback when the pipeline is complete.
		
		```js
		import { pipeline } from 'node:stream';
		import fs from 'node:fs';
		import zlib from 'node:zlib';
		
		// Use the pipeline API to easily pipe a series of streams
		// together and get notified when the pipeline is fully done.
		
		// A pipeline to gzip a potentially huge tar file efficiently:
		
		pipeline(
		  fs.createReadStream('archive.tar'),
		  zlib.createGzip(),
		  fs.createWriteStream('archive.tar.gz'),
		  (err) => {
		    if (err) {
		      console.error('Pipeline failed.', err);
		    } else {
		      console.log('Pipeline succeeded.');
		    }
		  },
		);
		```
		
		The `pipeline` API provides a [`promise version`](https://nodejs.org/docs/latest-v20.x/api/stream.html#streampipelinesource-transforms-destination-options).
		
		`stream.pipeline()` will call `stream.destroy(err)` on all streams except:
		
		* `Readable` streams which have emitted `'end'` or `'close'`.
		* `Writable` streams which have emitted `'finish'` or `'close'`.
		
		`stream.pipeline()` leaves dangling event listeners on the streams
		after the `callback` has been invoked. In the case of reuse of streams after
		failure, this can cause event listener leaks and swallowed errors. If the last
		stream is readable, dangling event listeners will be removed so that the last
		stream can be consumed later.
		
		`stream.pipeline()` closes all the streams when an error is raised.
		The `IncomingRequest` usage with `pipeline` could lead to an unexpected behavior
		once it would destroy the socket without sending the expected response.
		See the example below:
		
		```js
		import fs from 'node:fs';
		import http from 'node:http';
		import { pipeline } from 'node:stream';
		
		const server = http.createServer((req, res) => {
		  const fileStream = fs.createReadStream('./fileNotExist.txt');
		  pipeline(fileStream, res, (err) => {
		    if (err) {
		      console.log(err); // No such file
		      // this message can't be sent once `pipeline` already destroyed the socket
		      return res.end('error!!!');
		    }
		  });
		});
		```
	**/
	@:overload(function<A:(PipelineSource<Dynamic>), T1:(PipelineTransform<A, Dynamic>), B:(ts.AnyOf5<global.nodejs.WritableStream, PipelineDestinationIterableFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>>, PipelineDestinationPromiseFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>, Dynamic>, PipelineDestinationIterableFunction<Dynamic>, PipelineDestinationPromiseFunction<Dynamic, Dynamic>>)>(source:A, transform1:T1, destination:B, callback:PipelineCallback<B>):Dynamic { })
	@:overload(function<A:(PipelineSource<Dynamic>), T1:(PipelineTransform<A, Dynamic>), T2:(PipelineTransform<T1, Dynamic>), B:(ts.AnyOf5<global.nodejs.WritableStream, PipelineDestinationIterableFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>>, PipelineDestinationPromiseFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>, Dynamic>, PipelineDestinationIterableFunction<Dynamic>, PipelineDestinationPromiseFunction<Dynamic, Dynamic>>)>(source:A, transform1:T1, transform2:T2, destination:B, callback:PipelineCallback<B>):Dynamic { })
	@:overload(function<A:(PipelineSource<Dynamic>), T1:(PipelineTransform<A, Dynamic>), T2:(PipelineTransform<T1, Dynamic>), T3:(PipelineTransform<T2, Dynamic>), B:(ts.AnyOf5<global.nodejs.WritableStream, PipelineDestinationIterableFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>>, PipelineDestinationPromiseFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>, Dynamic>, PipelineDestinationIterableFunction<Dynamic>, PipelineDestinationPromiseFunction<Dynamic, Dynamic>>)>(source:A, transform1:T1, transform2:T2, transform3:T3, destination:B, callback:PipelineCallback<B>):Dynamic { })
	@:overload(function<A:(PipelineSource<Dynamic>), T1:(PipelineTransform<A, Dynamic>), T2:(PipelineTransform<T1, Dynamic>), T3:(PipelineTransform<T2, Dynamic>), T4:(PipelineTransform<T3, Dynamic>), B:(ts.AnyOf5<global.nodejs.WritableStream, PipelineDestinationIterableFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>>, PipelineDestinationPromiseFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>, Dynamic>, PipelineDestinationIterableFunction<Dynamic>, PipelineDestinationPromiseFunction<Dynamic, Dynamic>>)>(source:A, transform1:T1, transform2:T2, transform3:T3, transform4:T4, destination:B, callback:PipelineCallback<B>):Dynamic { })
	@:overload(function(streams:haxe.ds.ReadOnlyArray<ts.AnyOf3<global.nodejs.ReadableStream, global.nodejs.WritableStream, global.nodejs.ReadWriteStream>>, callback:(err:Null<global.nodejs.ErrnoException>) -> Void):global.nodejs.WritableStream { })
	@:overload(function(stream1:global.nodejs.ReadableStream, stream2:ts.AnyOf2<global.nodejs.WritableStream, global.nodejs.ReadWriteStream>, streams:haxe.extern.Rest<ts.AnyOf3<global.nodejs.WritableStream, global.nodejs.ReadWriteStream, (err:Null<global.nodejs.ErrnoException>) -> Void>>):global.nodejs.WritableStream { })
	@:selfCall
	static function call<A:(PipelineSource<Dynamic>), B:(ts.AnyOf5<global.nodejs.WritableStream, PipelineDestinationIterableFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>>, PipelineDestinationPromiseFunction<ts.AnyOf2<String, node.buffer.Buffer<js.lib.ArrayBufferLike>>, Dynamic>, PipelineDestinationIterableFunction<Dynamic>, PipelineDestinationPromiseFunction<Dynamic, Dynamic>>)>(source:A, destination:B, callback:PipelineCallback<B>):Dynamic;
}