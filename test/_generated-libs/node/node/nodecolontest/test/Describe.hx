package node.nodecolontest.test;

/**
	The `suite()` function is imported from the `node:test` module.
**/
@:jsRequire("node:test", "test.describe") @valueModuleOnly extern class Describe {
	/**
		The `suite()` function is imported from the `node:test` module.
	**/
	@:overload(function(?name:String, ?fn:SuiteFn):js.lib.Promise<ts.Undefined> { })
	@:overload(function(?options:TestOptions, ?fn:SuiteFn):js.lib.Promise<ts.Undefined> { })
	@:overload(function(?fn:SuiteFn):js.lib.Promise<ts.Undefined> { })
	@:selfCall
	static function call(?name:String, ?options:TestOptions, ?fn:SuiteFn):js.lib.Promise<ts.Undefined>;
	/**
		Shorthand for skipping a suite. This is the same as calling
		{@link
		suite
		}
		with `options.skip` set to `true`.
	**/
	@:overload(function(?name:String, ?fn:SuiteFn):js.lib.Promise<ts.Undefined> { })
	@:overload(function(?options:TestOptions, ?fn:SuiteFn):js.lib.Promise<ts.Undefined> { })
	@:overload(function(?fn:SuiteFn):js.lib.Promise<ts.Undefined> { })
	static function skip(?name:String, ?options:TestOptions, ?fn:SuiteFn):js.lib.Promise<ts.Undefined>;
	/**
		Shorthand for marking a suite as `TODO`. This is the same as calling
		{@link
		suite
		}
		with `options.todo` set to `true`.
	**/
	@:overload(function(?name:String, ?fn:SuiteFn):js.lib.Promise<ts.Undefined> { })
	@:overload(function(?options:TestOptions, ?fn:SuiteFn):js.lib.Promise<ts.Undefined> { })
	@:overload(function(?fn:SuiteFn):js.lib.Promise<ts.Undefined> { })
	static function todo(?name:String, ?options:TestOptions, ?fn:SuiteFn):js.lib.Promise<ts.Undefined>;
	/**
		Shorthand for marking a suite as `only`. This is the same as calling
		{@link
		suite
		}
		with `options.only` set to `true`.
	**/
	@:overload(function(?name:String, ?fn:SuiteFn):js.lib.Promise<ts.Undefined> { })
	@:overload(function(?options:TestOptions, ?fn:SuiteFn):js.lib.Promise<ts.Undefined> { })
	@:overload(function(?fn:SuiteFn):js.lib.Promise<ts.Undefined> { })
	static function only(?name:String, ?options:TestOptions, ?fn:SuiteFn):js.lib.Promise<ts.Undefined>;
}