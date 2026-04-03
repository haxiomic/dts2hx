package node.vm;

/**
	This feature is only available with the `--experimental-vm-modules` command
	flag enabled.
	
	The `vm.SourceTextModule` class provides the [Source Text Module Record](https://tc39.es/ecma262/#sec-source-text-module-records) as
	defined in the ECMAScript specification.
**/
@:jsRequire("vm", "SourceTextModule") extern class SourceTextModule extends Module {
	/**
		Creates a new `SourceTextModule` instance.
	**/
	function new(code:String, ?options:SourceTextModuleOptions);
	static var prototype : SourceTextModule;
}