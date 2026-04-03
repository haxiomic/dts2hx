package node;

/**
	The `test()` function is the value imported from the `test` module. Each
	invocation of this function results in reporting the test to the `TestsStream`.
	
	The `TestContext` object passed to the `fn` argument can be used to perform
	actions related to the current test. Examples include skipping the test, adding
	additional diagnostic information, or creating subtests.
	
	`test()` returns a `Promise` that fulfills once the test completes.
	if `test()` is called within a suite, it fulfills immediately.
	The return value can usually be discarded for top level tests.
	However, the return value from subtests should be used to prevent the parent
	test from finishing first and cancelling the subtest
	as shown in the following example.
	
	```js
	test('top level test', async (t) => {
	  // The setTimeout() in the following subtest would cause it to outlive its
	  // parent test if 'await' is removed on the next line. Once the parent test
	  // completes, it will cancel any outstanding subtests.
	  await t.test('longer running subtest', async (t) => {
	    return new Promise((resolve, reject) => {
	      setTimeout(resolve, 1000);
	    });
	  });
	});
	```
	
	The `timeout` option can be used to fail the test if it takes longer than `timeout` milliseconds to complete. However, it is not a reliable mechanism for
	canceling tests because a running test might block the application thread and
	thus prevent the scheduled cancellation.
**/
@:jsRequire("node:test") @valueModuleOnly extern class NodeTest {
	/**
		The `test()` function is the value imported from the `test` module. Each
		invocation of this function results in reporting the test to the `TestsStream`.
		
		The `TestContext` object passed to the `fn` argument can be used to perform
		actions related to the current test. Examples include skipping the test, adding
		additional diagnostic information, or creating subtests.
		
		`test()` returns a `Promise` that fulfills once the test completes.
		if `test()` is called within a suite, it fulfills immediately.
		The return value can usually be discarded for top level tests.
		However, the return value from subtests should be used to prevent the parent
		test from finishing first and cancelling the subtest
		as shown in the following example.
		
		```js
		test('top level test', async (t) => {
		  // The setTimeout() in the following subtest would cause it to outlive its
		  // parent test if 'await' is removed on the next line. Once the parent test
		  // completes, it will cancel any outstanding subtests.
		  await t.test('longer running subtest', async (t) => {
		    return new Promise((resolve, reject) => {
		      setTimeout(resolve, 1000);
		    });
		  });
		});
		```
		
		The `timeout` option can be used to fail the test if it takes longer than `timeout` milliseconds to complete. However, it is not a reliable mechanism for
		canceling tests because a running test might block the application thread and
		thus prevent the scheduled cancellation.
	**/
	@:overload(function(?name:String, ?options:node.nodecolontest.test.TestOptions, ?fn:node.nodecolontest.test.TestFn):js.lib.Promise<ts.Undefined> { })
	@:overload(function(?options:node.nodecolontest.test.TestOptions, ?fn:node.nodecolontest.test.TestFn):js.lib.Promise<ts.Undefined> { })
	@:overload(function(?fn:node.nodecolontest.test.TestFn):js.lib.Promise<ts.Undefined> { })
	@:selfCall
	static function call(?name:String, ?fn:node.nodecolontest.test.TestFn):js.lib.Promise<ts.Undefined>;
	/**
		The `test()` function is the value imported from the `test` module. Each
		invocation of this function results in reporting the test to the `TestsStream`.
		
		The `TestContext` object passed to the `fn` argument can be used to perform
		actions related to the current test. Examples include skipping the test, adding
		additional diagnostic information, or creating subtests.
		
		`test()` returns a `Promise` that fulfills once the test completes.
		if `test()` is called within a suite, it fulfills immediately.
		The return value can usually be discarded for top level tests.
		However, the return value from subtests should be used to prevent the parent
		test from finishing first and cancelling the subtest
		as shown in the following example.
		
		```js
		test('top level test', async (t) => {
		  // The setTimeout() in the following subtest would cause it to outlive its
		  // parent test if 'await' is removed on the next line. Once the parent test
		  // completes, it will cancel any outstanding subtests.
		  await t.test('longer running subtest', async (t) => {
		    return new Promise((resolve, reject) => {
		      setTimeout(resolve, 1000);
		    });
		  });
		});
		```
		
		The `timeout` option can be used to fail the test if it takes longer than `timeout` milliseconds to complete. However, it is not a reliable mechanism for
		canceling tests because a running test might block the application thread and
		thus prevent the scheduled cancellation.
	**/
	@:overload(function(?name:String, ?options:node.nodecolontest.test.TestOptions, ?fn:node.nodecolontest.test.TestFn):js.lib.Promise<ts.Undefined> { })
	@:overload(function(?options:node.nodecolontest.test.TestOptions, ?fn:node.nodecolontest.test.TestFn):js.lib.Promise<ts.Undefined> { })
	@:overload(function(?fn:node.nodecolontest.test.TestFn):js.lib.Promise<ts.Undefined> { })
	static function test(?name:String, ?fn:node.nodecolontest.test.TestFn):js.lib.Promise<ts.Undefined>;
	/**
		The `suite()` function is imported from the `node:test` module.
	**/
	@:overload(function(?name:String, ?fn:node.nodecolontest.test.SuiteFn):js.lib.Promise<ts.Undefined> { })
	@:overload(function(?options:node.nodecolontest.test.TestOptions, ?fn:node.nodecolontest.test.SuiteFn):js.lib.Promise<ts.Undefined> { })
	@:overload(function(?fn:node.nodecolontest.test.SuiteFn):js.lib.Promise<ts.Undefined> { })
	static function describe(?name:String, ?options:node.nodecolontest.test.TestOptions, ?fn:node.nodecolontest.test.SuiteFn):js.lib.Promise<ts.Undefined>;
	/**
		The `test()` function is the value imported from the `test` module. Each
		invocation of this function results in reporting the test to the `TestsStream`.
		
		The `TestContext` object passed to the `fn` argument can be used to perform
		actions related to the current test. Examples include skipping the test, adding
		additional diagnostic information, or creating subtests.
		
		`test()` returns a `Promise` that fulfills once the test completes.
		if `test()` is called within a suite, it fulfills immediately.
		The return value can usually be discarded for top level tests.
		However, the return value from subtests should be used to prevent the parent
		test from finishing first and cancelling the subtest
		as shown in the following example.
		
		```js
		test('top level test', async (t) => {
		  // The setTimeout() in the following subtest would cause it to outlive its
		  // parent test if 'await' is removed on the next line. Once the parent test
		  // completes, it will cancel any outstanding subtests.
		  await t.test('longer running subtest', async (t) => {
		    return new Promise((resolve, reject) => {
		      setTimeout(resolve, 1000);
		    });
		  });
		});
		```
		
		The `timeout` option can be used to fail the test if it takes longer than `timeout` milliseconds to complete. However, it is not a reliable mechanism for
		canceling tests because a running test might block the application thread and
		thus prevent the scheduled cancellation.
	**/
	@:overload(function(?name:String, ?options:node.nodecolontest.test.TestOptions, ?fn:node.nodecolontest.test.TestFn):js.lib.Promise<ts.Undefined> { })
	@:overload(function(?options:node.nodecolontest.test.TestOptions, ?fn:node.nodecolontest.test.TestFn):js.lib.Promise<ts.Undefined> { })
	@:overload(function(?fn:node.nodecolontest.test.TestFn):js.lib.Promise<ts.Undefined> { })
	static function it(?name:String, ?fn:node.nodecolontest.test.TestFn):js.lib.Promise<ts.Undefined>;
	/**
		**Note:** `shard` is used to horizontally parallelize test running across
		machines or processes, ideal for large-scale executions across varied
		environments. It's incompatible with `watch` mode, tailored for rapid
		code iteration by automatically rerunning tests on file changes.
		
		```js
		import { tap } from 'node:test/reporters';
		import { run } from 'node:test';
		import process from 'node:process';
		import path from 'node:path';
		
		run({ files: [path.resolve('./tests/test.js')] })
		  .compose(tap)
		  .pipe(process.stdout);
		```
	**/
	static function run(?options:node.nodecolontest.test.RunOptions):node.nodecolontest.test.TestsStream;
	/**
		The `suite()` function is imported from the `node:test` module.
	**/
	@:overload(function(?name:String, ?fn:node.nodecolontest.test.SuiteFn):js.lib.Promise<ts.Undefined> { })
	@:overload(function(?options:node.nodecolontest.test.TestOptions, ?fn:node.nodecolontest.test.SuiteFn):js.lib.Promise<ts.Undefined> { })
	@:overload(function(?fn:node.nodecolontest.test.SuiteFn):js.lib.Promise<ts.Undefined> { })
	static function suite(?name:String, ?options:node.nodecolontest.test.TestOptions, ?fn:node.nodecolontest.test.SuiteFn):js.lib.Promise<ts.Undefined>;
	/**
		Shorthand for skipping a test. This is the same as calling
		{@link
		test
		}
		with `options.skip` set to `true`.
	**/
	@:overload(function(?name:String, ?fn:node.nodecolontest.test.TestFn):js.lib.Promise<ts.Undefined> { })
	@:overload(function(?options:node.nodecolontest.test.TestOptions, ?fn:node.nodecolontest.test.TestFn):js.lib.Promise<ts.Undefined> { })
	@:overload(function(?fn:node.nodecolontest.test.TestFn):js.lib.Promise<ts.Undefined> { })
	static function skip(?name:String, ?options:node.nodecolontest.test.TestOptions, ?fn:node.nodecolontest.test.TestFn):js.lib.Promise<ts.Undefined>;
	/**
		Shorthand for marking a test as `TODO`. This is the same as calling
		{@link
		test
		}
		with `options.todo` set to `true`.
	**/
	@:overload(function(?name:String, ?fn:node.nodecolontest.test.TestFn):js.lib.Promise<ts.Undefined> { })
	@:overload(function(?options:node.nodecolontest.test.TestOptions, ?fn:node.nodecolontest.test.TestFn):js.lib.Promise<ts.Undefined> { })
	@:overload(function(?fn:node.nodecolontest.test.TestFn):js.lib.Promise<ts.Undefined> { })
	static function todo(?name:String, ?options:node.nodecolontest.test.TestOptions, ?fn:node.nodecolontest.test.TestFn):js.lib.Promise<ts.Undefined>;
	/**
		Shorthand for marking a test as `only`. This is the same as calling
		{@link
		test
		}
		with `options.only` set to `true`.
	**/
	@:overload(function(?name:String, ?fn:node.nodecolontest.test.TestFn):js.lib.Promise<ts.Undefined> { })
	@:overload(function(?options:node.nodecolontest.test.TestOptions, ?fn:node.nodecolontest.test.TestFn):js.lib.Promise<ts.Undefined> { })
	@:overload(function(?fn:node.nodecolontest.test.TestFn):js.lib.Promise<ts.Undefined> { })
	static function only(?name:String, ?options:node.nodecolontest.test.TestOptions, ?fn:node.nodecolontest.test.TestFn):js.lib.Promise<ts.Undefined>;
	/**
		This function creates a hook that runs before executing a suite.
		
		```js
		describe('tests', async () => {
		  before(() => console.log('about to run some test'));
		  it('is a subtest', () => {
		    assert.ok('some relevant assertion here');
		  });
		});
		```
	**/
	static function before(?fn:node.nodecolontest.test.HookFn, ?options:node.nodecolontest.test.HookOptions):Void;
	/**
		This function creates a hook that runs after executing a suite.
		
		```js
		describe('tests', async () => {
		  after(() => console.log('finished running tests'));
		  it('is a subtest', () => {
		    assert.ok('some relevant assertion here');
		  });
		});
		```
	**/
	static function after(?fn:node.nodecolontest.test.HookFn, ?options:node.nodecolontest.test.HookOptions):Void;
	/**
		This function creates a hook that runs before each test in the current suite.
		
		```js
		describe('tests', async () => {
		  beforeEach(() => console.log('about to run a test'));
		  it('is a subtest', () => {
		    assert.ok('some relevant assertion here');
		  });
		});
		```
	**/
	static function beforeEach(?fn:node.nodecolontest.test.HookFn, ?options:node.nodecolontest.test.HookOptions):Void;
	/**
		This function creates a hook that runs after each test in the current suite.
		The `afterEach()` hook is run even if the test fails.
		
		```js
		describe('tests', async () => {
		  afterEach(() => console.log('finished running a test'));
		  it('is a subtest', () => {
		    assert.ok('some relevant assertion here');
		  });
		});
		```
	**/
	static function afterEach(?fn:node.nodecolontest.test.HookFn, ?options:node.nodecolontest.test.HookOptions):Void;
	static final mock : node.nodecolontest.test.MockTracker;
}