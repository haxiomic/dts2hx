package node;

@:jsRequire("module") extern class Module {
	function new(id:String, ?parent:Module);
	/**
		The module objects required for the first time by this one.
	**/
	var children : Array<global.nodejs.Module>;
	/**
		The `module.exports` object is created by the `Module` system. Sometimes this is
		not acceptable; many want their module to be an instance of some class. To do
		this, assign the desired export object to `module.exports`.
	**/
	var exports : Dynamic;
	/**
		The fully resolved filename of the module.
	**/
	var filename : String;
	/**
		The identifier for the module. Typically this is the fully resolved
		filename.
	**/
	var id : String;
	/**
		`true` if the module is running during the Node.js preload
		phase.
	**/
	var isPreloading : Bool;
	/**
		Whether or not the module is done loading, or is in the process of
		loading.
	**/
	var loaded : Bool;
	/**
		The module that first required this one, or `null` if the current module is the
		entry point of the current process, or `undefined` if the module was loaded by
		something that is not a CommonJS module (e.g. REPL or `import`).
	**/
	var parent : Null<global.nodejs.Module>;
	/**
		The directory name of the module. This is usually the same as the
		`path.dirname()` of the `module.id`.
	**/
	var path : String;
	/**
		The search paths for the module.
	**/
	var paths : Array<String>;
	/**
		The `module.require()` method provides a way to load a module as if
		`require()` was called from the original module.
	**/
	function require(id:String):Dynamic;
	static var prototype : Module;
	static function createRequire(path:ts.AnyOf2<String, node.url.URL>):global.nodejs.Require;
	static function isBuiltin(moduleName:String):Bool;
	/**
		Register a module that exports hooks that customize Node.js module
		resolution and loading behavior. See
		[Customization hooks](https://nodejs.org/docs/latest-v20.x/api/module.html#customization-hooks).
	**/
	@:overload(function<Data>(specifier:ts.AnyOf2<String, node.url.URL>, ?options:node.module.module.RegisterOptions<Data>):Void { })
	static function register<Data>(specifier:ts.AnyOf2<String, node.url.URL>, ?parentURL:ts.AnyOf2<String, node.url.URL>, ?options:node.module.module.RegisterOptions<Data>):Void;
	/**
		The `module.syncBuiltinESMExports()` method updates all the live bindings for
		builtin `ES Modules` to match the properties of the `CommonJS` exports. It
		does not add or remove exported names from the `ES Modules`.
		
		```js
		import fs from 'node:fs';
		import assert from 'node:assert';
		import { syncBuiltinESMExports } from 'node:module';
		
		fs.readFile = newAPI;
		
		delete fs.readFileSync;
		
		function newAPI() {
		  // ...
		}
		
		fs.newAPI = newAPI;
		
		syncBuiltinESMExports();
		
		import('node:fs').then((esmFS) => {
		  // It syncs the existing readFile property with the new value
		  assert.strictEqual(esmFS.readFile, newAPI);
		  // readFileSync has been deleted from the required fs
		  assert.strictEqual('readFileSync' in fs, false);
		  // syncBuiltinESMExports() does not remove readFileSync from esmFS
		  assert.strictEqual('readFileSync' in esmFS, true);
		  // syncBuiltinESMExports() does not add names
		  assert.strictEqual(esmFS.newAPI, undefined);
		});
		```
	**/
	static function syncBuiltinESMExports():Void;
	/**
		`path` is the resolved path for the file for which a corresponding source map
		should be fetched.
	**/
	static function findSourceMap(path:String):Null<node.module.module.SourceMap>;
	static function runMain(?main:String):Void;
	static function wrap(script:String):String;
	/**
		A list of the names of all modules provided by Node.js. Can be used to verify
		if a module is maintained by a third party or not.
		
		Note: the list doesn't contain prefix-only modules like `node:test`.
	**/
	static final builtinModules : haxe.ds.ReadOnlyArray<String>;
}