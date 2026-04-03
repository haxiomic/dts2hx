package node.nodecolontest;

/**
	The `node:test/reporters` module exposes the builtin-reporters for `node:test`.
	To access it:
	
	```js
	import test from 'node:test/reporters';
	```
	
	This module is only available under the `node:` scheme. The following will not
	work:
	
	```js
	import test from 'test/reporters';
	```
**/
@:jsRequire("node:test/reporters") @valueModuleOnly extern class Reporters {
	/**
		The `dot` reporter outputs the test results in a compact format,
		where each passing test is represented by a `.`,
		and each failing test is represented by a `X`.
	**/
	static function dot(source:Reporters):js.lib.AsyncGenerator<String, ts.Undefined, Dynamic>;
	/**
		The `junit` reporter outputs test results in a jUnit XML format.
	**/
	static function junit(source:Reporters):js.lib.AsyncGenerator<String, ts.Undefined, Dynamic>;
	/**
		The `lcov` reporter outputs test coverage when used with the
		[`--experimental-test-coverage`](https://nodejs.org/docs/latest-v20.x/api/cli.html#--experimental-test-coverage) flag.
	**/
	static final lcov : Reporters;
	/**
		The `tap` reporter outputs the test results in the [TAP](https://testanything.org/) format.
	**/
	static function tap(source:Reporters):js.lib.AsyncGenerator<String, ts.Undefined, Dynamic>;
}