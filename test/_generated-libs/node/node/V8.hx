package node;

/**
	The `node:v8` module exposes APIs that are specific to the version of [V8](https://developers.google.com/v8/) built into the Node.js binary. It can be accessed using:
	
	```js
	import v8 from 'node:v8';
	```
**/
@:jsRequire("v8") @valueModuleOnly extern class V8 {
	/**
		Returns an integer representing a version tag derived from the V8 version,
		command-line flags, and detected CPU features. This is useful for determining
		whether a `vm.Script` `cachedData` buffer is compatible with this instance
		of V8.
		
		```js
		console.log(v8.cachedDataVersionTag()); // 3947234607
		// The value returned by v8.cachedDataVersionTag() is derived from the V8
		// version, command-line flags, and detected CPU features. Test that the value
		// does indeed update when flags are toggled.
		v8.setFlagsFromString('--allow_natives_syntax');
		console.log(v8.cachedDataVersionTag()); // 183726201
		```
	**/
	static function cachedDataVersionTag():Float;
	/**
		Returns an object with the following properties:
		
		`does_zap_garbage` is a 0/1 boolean, which signifies whether the `--zap_code_space` option is enabled or not. This makes V8 overwrite heap
		garbage with a bit pattern. The RSS footprint (resident set size) gets bigger
		because it continuously touches all heap pages and that makes them less likely
		to get swapped out by the operating system.
		
		`number_of_native_contexts` The value of native\_context is the number of the
		top-level contexts currently active. Increase of this number over time indicates
		a memory leak.
		
		`number_of_detached_contexts` The value of detached\_context is the number
		of contexts that were detached and not yet garbage collected. This number
		being non-zero indicates a potential memory leak.
		
		`total_global_handles_size` The value of total\_global\_handles\_size is the
		total memory size of V8 global handles.
		
		`used_global_handles_size` The value of used\_global\_handles\_size is the
		used memory size of V8 global handles.
		
		`external_memory` The value of external\_memory is the memory size of array
		buffers and external strings.
		
		```js
		{
		  total_heap_size: 7326976,
		  total_heap_size_executable: 4194304,
		  total_physical_size: 7326976,
		  total_available_size: 1152656,
		  used_heap_size: 3476208,
		  heap_size_limit: 1535115264,
		  malloced_memory: 16384,
		  peak_malloced_memory: 1127496,
		  does_zap_garbage: 0,
		  number_of_native_contexts: 1,
		  number_of_detached_contexts: 0,
		  total_global_handles_size: 8192,
		  used_global_handles_size: 3296,
		  external_memory: 318824
		}
		```
	**/
	static function getHeapStatistics():node.v8.HeapInfo;
	/**
		Returns statistics about the V8 heap spaces, i.e. the segments which make up
		the V8 heap. Neither the ordering of heap spaces, nor the availability of a
		heap space can be guaranteed as the statistics are provided via the
		V8 [`GetHeapSpaceStatistics`](https://v8docs.nodesource.com/node-13.2/d5/dda/classv8_1_1_isolate.html#ac673576f24fdc7a33378f8f57e1d13a4) function and may change from one V8 version to the
		next.
		
		The value returned is an array of objects containing the following properties:
		
		```json
		[
		  {
		    "space_name": "new_space",
		    "space_size": 2063872,
		    "space_used_size": 951112,
		    "space_available_size": 80824,
		    "physical_space_size": 2063872
		  },
		  {
		    "space_name": "old_space",
		    "space_size": 3090560,
		    "space_used_size": 2493792,
		    "space_available_size": 0,
		    "physical_space_size": 3090560
		  },
		  {
		    "space_name": "code_space",
		    "space_size": 1260160,
		    "space_used_size": 644256,
		    "space_available_size": 960,
		    "physical_space_size": 1260160
		  },
		  {
		    "space_name": "map_space",
		    "space_size": 1094160,
		    "space_used_size": 201608,
		    "space_available_size": 0,
		    "physical_space_size": 1094160
		  },
		  {
		    "space_name": "large_object_space",
		    "space_size": 0,
		    "space_used_size": 0,
		    "space_available_size": 1490980608,
		    "physical_space_size": 0
		  }
		]
		```
	**/
	static function getHeapSpaceStatistics():Array<node.v8.HeapSpaceInfo>;
	/**
		The `v8.setFlagsFromString()` method can be used to programmatically set
		V8 command-line flags. This method should be used with care. Changing settings
		after the VM has started may result in unpredictable behavior, including
		crashes and data loss; or it may simply do nothing.
		
		The V8 options available for a version of Node.js may be determined by running `node --v8-options`.
		
		Usage:
		
		```js
		// Print GC events to stdout for one minute.
		import v8 from 'node:v8';
		v8.setFlagsFromString('--trace_gc');
		setTimeout(() => { v8.setFlagsFromString('--notrace_gc'); }, 60e3);
		```
	**/
	static function setFlagsFromString(flags:String):Void;
	/**
		This is similar to the [`queryObjects()` console API](https://developer.chrome.com/docs/devtools/console/utilities#queryObjects-function)
		provided by the Chromium DevTools console. It can be used to search for objects that have the matching constructor on its prototype chain
		in the heap after a full garbage collection, which can be useful for memory leak regression tests. To avoid surprising results, users should
		avoid using this API on constructors whose implementation they don't control, or on constructors that can be invoked by other parties in the
		application.
		
		To avoid accidental leaks, this API does not return raw references to the objects found. By default, it returns the count of the objects
		found. If `options.format` is `'summary'`, it returns an array containing brief string representations for each object. The visibility provided
		in this API is similar to what the heap snapshot provides, while users can save the cost of serialization and parsing and directly filter the
		target objects during the search.
		
		Only objects created in the current execution context are included in the results.
		
		```js
		import { queryObjects } from 'node:v8';
		class A { foo = 'bar'; }
		console.log(queryObjects(A)); // 0
		const a = new A();
		console.log(queryObjects(A)); // 1
		// [ "A { foo: 'bar' }" ]
		console.log(queryObjects(A, { format: 'summary' }));
		
		class B extends A { bar = 'qux'; }
		const b = new B();
		console.log(queryObjects(B)); // 1
		// [ "B { foo: 'bar', bar: 'qux' }" ]
		console.log(queryObjects(B, { format: 'summary' }));
		
		// Note that, when there are child classes inheriting from a constructor,
		// the constructor also shows up in the prototype chain of the child
		// classes's prototoype, so the child classes's prototoype would also be
		// included in the result.
		console.log(queryObjects(A));  // 3
		// [ "B { foo: 'bar', bar: 'qux' }", 'A {}', "A { foo: 'bar' }" ]
		console.log(queryObjects(A, { format: 'summary' }));
		```
	**/
	@:overload(function(ctor:haxe.Constraints.Function, options:{ var format : String; }):Float { })
	@:overload(function(ctor:haxe.Constraints.Function, options:{ var format : String; }):Array<String> { })
	static function queryObjects(ctor:haxe.Constraints.Function):ts.AnyOf2<Float, Array<String>>;
	/**
		Generates a snapshot of the current V8 heap and returns a Readable
		Stream that may be used to read the JSON serialized representation.
		This JSON stream format is intended to be used with tools such as
		Chrome DevTools. The JSON schema is undocumented and specific to the
		V8 engine. Therefore, the schema may change from one version of V8 to the next.
		
		Creating a heap snapshot requires memory about twice the size of the heap at
		the time the snapshot is created. This results in the risk of OOM killers
		terminating the process.
		
		Generating a snapshot is a synchronous operation which blocks the event loop
		for a duration depending on the heap size.
		
		```js
		// Print heap snapshot to the console
		import v8 from 'node:v8';
		const stream = v8.getHeapSnapshot();
		stream.pipe(process.stdout);
		```
	**/
	static function getHeapSnapshot(?options:node.v8.HeapSnapshotOptions):node.stream.stream.Readable;
	/**
		Generates a snapshot of the current V8 heap and writes it to a JSON
		file. This file is intended to be used with tools such as Chrome
		DevTools. The JSON schema is undocumented and specific to the V8
		engine, and may change from one version of V8 to the next.
		
		A heap snapshot is specific to a single V8 isolate. When using `worker threads`, a heap snapshot generated from the main thread will
		not contain any information about the workers, and vice versa.
		
		Creating a heap snapshot requires memory about twice the size of the heap at
		the time the snapshot is created. This results in the risk of OOM killers
		terminating the process.
		
		Generating a snapshot is a synchronous operation which blocks the event loop
		for a duration depending on the heap size.
		
		```js
		import { writeHeapSnapshot } from 'node:v8';
		import {
		  Worker,
		  isMainThread,
		  parentPort,
		} from 'node:worker_threads';
		
		if (isMainThread) {
		  const worker = new Worker(__filename);
		
		  worker.once('message', (filename) => {
		    console.log(`worker heapdump: ${filename}`);
		    // Now get a heapdump for the main thread.
		    console.log(`main thread heapdump: ${writeHeapSnapshot()}`);
		  });
		
		  // Tell the worker to create a heapdump.
		  worker.postMessage('heapdump');
		} else {
		  parentPort.once('message', (message) => {
		    if (message === 'heapdump') {
		      // Generate a heapdump for the worker
		      // and return the filename to the parent.
		      parentPort.postMessage(writeHeapSnapshot());
		    }
		  });
		}
		```
	**/
	static function writeHeapSnapshot(?filename:String, ?options:node.v8.HeapSnapshotOptions):String;
	/**
		Get statistics about code and its metadata in the heap, see
		V8 [`GetHeapCodeAndMetadataStatistics`](https://v8docs.nodesource.com/node-13.2/d5/dda/classv8_1_1_isolate.html#a6079122af17612ef54ef3348ce170866) API. Returns an object with the
		following properties:
		
		```js
		{
		  code_and_metadata_size: 212208,
		  bytecode_and_metadata_size: 161368,
		  external_script_source_size: 1410794,
		  cpu_profiler_metadata_size: 0,
		}
		```
	**/
	static function getHeapCodeStatistics():node.v8.HeapCodeStatistics;
	/**
		Uses a `DefaultSerializer` to serialize `value` into a buffer.
		
		`ERR_BUFFER_TOO_LARGE` will be thrown when trying to
		serialize a huge object which requires buffer
		larger than `buffer.constants.MAX_LENGTH`.
	**/
	static function serialize(value:Dynamic):node.buffer.NonSharedBuffer;
	/**
		Uses a `DefaultDeserializer` with default options to read a JS value
		from a buffer.
	**/
	static function deserialize(buffer:global.nodejs.ArrayBufferView<js.lib.ArrayBufferLike>):Dynamic;
	/**
		The `v8.takeCoverage()` method allows the user to write the coverage started by `NODE_V8_COVERAGE` to disk on demand. This method can be invoked multiple
		times during the lifetime of the process. Each time the execution counter will
		be reset and a new coverage report will be written to the directory specified
		by `NODE_V8_COVERAGE`.
		
		When the process is about to exit, one last coverage will still be written to
		disk unless
		{@link
		stopCoverage
		}
		is invoked before the process exits.
	**/
	static function takeCoverage():Void;
	/**
		The `v8.stopCoverage()` method allows the user to stop the coverage collection
		started by `NODE_V8_COVERAGE`, so that V8 can release the execution count
		records and optimize code. This can be used in conjunction with
		{@link
		takeCoverage
		}
		if the user wants to collect the coverage on demand.
	**/
	static function stopCoverage():Void;
	/**
		The API is a no-op if `--heapsnapshot-near-heap-limit` is already set from the command line or the API is called more than once.
		`limit` must be a positive integer. See [`--heapsnapshot-near-heap-limit`](https://nodejs.org/docs/latest-v20.x/api/cli.html#--heapsnapshot-near-heap-limitmax_count) for more information.
	**/
	static function setHeapSnapshotNearHeapLimit(limit:Float):Void;
	/**
		The `promiseHooks` interface can be used to track promise lifecycle events.
	**/
	static final promiseHooks : node.v8.PromiseHooks;
	/**
		The `v8.startupSnapshot` interface can be used to add serialization and deserialization hooks for custom startup snapshots.
		
		```bash
		$ node --snapshot-blob snapshot.blob --build-snapshot entry.js
		# This launches a process with the snapshot
		$ node --snapshot-blob snapshot.blob
		```
		
		In the example above, `entry.js` can use methods from the `v8.startupSnapshot` interface to specify how to save information for custom objects
		in the snapshot during serialization and how the information can be used to synchronize these objects during deserialization of the snapshot.
		For example, if the `entry.js` contains the following script:
		
		```js
		'use strict';
		
		import fs from 'node:fs';
		import zlib from 'node:zlib';
		import path from 'node:path';
		import assert from 'node:assert';
		
		import v8 from 'node:v8';
		
		class BookShelf {
		  storage = new Map();
		
		  // Reading a series of files from directory and store them into storage.
		  constructor(directory, books) {
		    for (const book of books) {
		      this.storage.set(book, fs.readFileSync(path.join(directory, book)));
		    }
		  }
		
		  static compressAll(shelf) {
		    for (const [ book, content ] of shelf.storage) {
		      shelf.storage.set(book, zlib.gzipSync(content));
		    }
		  }
		
		  static decompressAll(shelf) {
		    for (const [ book, content ] of shelf.storage) {
		      shelf.storage.set(book, zlib.gunzipSync(content));
		    }
		  }
		}
		
		// __dirname here is where the snapshot script is placed
		// during snapshot building time.
		const shelf = new BookShelf(__dirname, [
		  'book1.en_US.txt',
		  'book1.es_ES.txt',
		  'book2.zh_CN.txt',
		]);
		
		assert(v8.startupSnapshot.isBuildingSnapshot());
		// On snapshot serialization, compress the books to reduce size.
		v8.startupSnapshot.addSerializeCallback(BookShelf.compressAll, shelf);
		// On snapshot deserialization, decompress the books.
		v8.startupSnapshot.addDeserializeCallback(BookShelf.decompressAll, shelf);
		v8.startupSnapshot.setDeserializeMainFunction((shelf) => {
		  // process.env and process.argv are refreshed during snapshot
		  // deserialization.
		  const lang = process.env.BOOK_LANG || 'en_US';
		  const book = process.argv[1];
		  const name = `${book}.${lang}.txt`;
		  console.log(shelf.storage.get(name));
		}, shelf);
		```
		
		The resulted binary will get print the data deserialized from the snapshot during start up, using the refreshed `process.env` and `process.argv` of the launched process:
		
		```bash
		$ BOOK_LANG=es_ES node --snapshot-blob snapshot.blob book1
		# Prints content of book1.es_ES.txt deserialized from the snapshot.
		```
		
		Currently the application deserialized from a user-land snapshot cannot be snapshotted again, so these APIs are only available to applications that are not deserialized from a user-land snapshot.
	**/
	static final startupSnapshot : node.v8.StartupSnapshot;
}