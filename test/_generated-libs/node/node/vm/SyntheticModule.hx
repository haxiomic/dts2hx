package node.vm;

/**
	This feature is only available with the `--experimental-vm-modules` command
	flag enabled.
	
	The `vm.SyntheticModule` class provides the [Synthetic Module Record](https://heycam.github.io/webidl/#synthetic-module-records) as
	defined in the WebIDL specification. The purpose of synthetic modules is to
	provide a generic interface for exposing non-JavaScript sources to ECMAScript
	module graphs.
	
	```js
	import vm from 'node:vm';
	
	const source = '{ "a": 1 }';
	const module = new vm.SyntheticModule(['default'], function() {
	  const obj = JSON.parse(source);
	  this.setExport('default', obj);
	});
	
	// Use `module` in linking...
	```
**/
@:jsRequire("vm", "SyntheticModule") extern class SyntheticModule extends Module {
	/**
		Creates a new `SyntheticModule` instance.
	**/
	function new(exportNames:Array<String>, evaluateCallback:() -> Void, ?options:SyntheticModuleOptions);
	/**
		This method is used after the module is linked to set the values of exports. If
		it is called before the module is linked, an `ERR_VM_MODULE_STATUS` error
		will be thrown.
		
		```js
		import vm from 'node:vm';
		
		const m = new vm.SyntheticModule(['x'], () => {
		  m.setExport('x', 1);
		});
		
		await m.link(() => {});
		await m.evaluate();
		
		assert.strictEqual(m.namespace.x, 1);
		```
	**/
	function setExport(name:String, value:Dynamic):Void;
	static var prototype : SyntheticModule;
}