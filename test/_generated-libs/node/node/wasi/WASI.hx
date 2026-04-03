package node.wasi;

/**
	The `WASI` class provides the WASI system call API and additional convenience
	methods for working with WASI-based applications. Each `WASI` instance
	represents a distinct environment.
**/
@:jsRequire("wasi", "WASI") extern class WASI {
	function new(?options:WASIOptions);
	/**
		Return an import object that can be passed to `WebAssembly.instantiate()` if no other WASM imports are needed beyond those provided by WASI.
		
		If version `unstable` was passed into the constructor it will return:
		
		```js
		{ wasi_unstable: wasi.wasiImport }
		```
		
		If version `preview1` was passed into the constructor or no version was specified it will return:
		
		```js
		{ wasi_snapshot_preview1: wasi.wasiImport }
		```
	**/
	function getImportObject():Dynamic;
	/**
		Attempt to begin execution of `instance` as a WASI command by invoking its `_start()` export. If `instance` does not contain a `_start()` export, or if `instance` contains an `_initialize()`
		export, then an exception is thrown.
		
		`start()` requires that `instance` exports a [`WebAssembly.Memory`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WebAssembly/Memory) named `memory`. If
		`instance` does not have a `memory` export an exception is thrown.
		
		If `start()` is called more than once, an exception is thrown.
	**/
	function start(instance:Dynamic):Float;
	/**
		Attempt to initialize `instance` as a WASI reactor by invoking its `_initialize()` export, if it is present. If `instance` contains a `_start()` export, then an exception is thrown.
		
		`initialize()` requires that `instance` exports a [`WebAssembly.Memory`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WebAssembly/Memory) named `memory`.
		If `instance` does not have a `memory` export an exception is thrown.
		
		If `initialize()` is called more than once, an exception is thrown.
	**/
	function initialize(instance:Dynamic):Void;
	/**
		`wasiImport` is an object that implements the WASI system call API. This object
		should be passed as the `wasi_snapshot_preview1` import during the instantiation
		of a [`WebAssembly.Instance`](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/WebAssembly/Instance).
	**/
	final wasiImport : global.nodejs.Dict<Dynamic>;
	static var prototype : WASI;
}