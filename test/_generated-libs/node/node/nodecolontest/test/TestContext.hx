package node.nodecolontest.test;

/**
	An instance of `TestContext` is passed to each test function in order to
	interact with the test runner. However, the `TestContext` constructor is not
	exposed as part of the API.
**/
typedef TestContext = {
	/**
		An object containing assertion methods bound to the test context.
		The top-level functions from the `node:assert` module are exposed here for the purpose of creating test plans.
		
		**Note:** Some of the functions from `node:assert` contain type assertions. If these are called via the
		TestContext `assert` object, then the context parameter in the test's function signature **must be explicitly typed**
		(ie. the parameter must have a type annotation), otherwise an error will be raised by the TypeScript compiler:
		```ts
		import { test, type TestContext } from 'node:test';
		
		// The test function's context parameter must have a type annotation.
		test('example', (t: TestContext) => {
		  t.assert.deepStrictEqual(actual, expected);
		});
		
		// Omitting the type annotation will result in a compilation error.
		test('example', t => {
		  t.assert.deepStrictEqual(actual, expected); // Error: 't' needs an explicit type annotation.
		});
		```
	**/
	final assert : TestContextAssert;
	/**
		This function is used to create a hook running before subtest of the current test.
	**/
	function before(?fn:TestContextHookFn, ?options:HookOptions):Void;
	/**
		This function is used to create a hook running before each subtest of the current test.
	**/
	function beforeEach(?fn:TestContextHookFn, ?options:HookOptions):Void;
	/**
		This function is used to create a hook that runs after the current test finishes.
	**/
	function after(?fn:TestContextHookFn, ?options:HookOptions):Void;
	/**
		This function is used to create a hook running after each subtest of the current test.
	**/
	function afterEach(?fn:TestContextHookFn, ?options:HookOptions):Void;
	/**
		This function is used to write diagnostics to the output. Any diagnostic
		information is included at the end of the test's results. This function does
		not return a value.
		
		```js
		test('top level test', (t) => {
		  t.diagnostic('A diagnostic message');
		});
		```
	**/
	function diagnostic(message:String):Void;
	/**
		The name of the test and each of its ancestors, separated by `>`.
	**/
	final fullName : String;
	/**
		The name of the test.
	**/
	final name : String;
	/**
		Used to set the number of assertions and subtests that are expected to run within the test.
		If the number of assertions and subtests that run does not match the expected count, the test will fail.
		
		To make sure assertions are tracked, the assert functions on `context.assert` must be used,
		instead of importing from the `node:assert` module.
		```js
		test('top level test', (t) => {
		  t.plan(2);
		  t.assert.ok('some relevant assertion here');
		  t.test('subtest', () => {});
		});
		```
		
		When working with asynchronous code, the `plan` function can be used to ensure that the correct number of assertions are run:
		```js
		test('planning with streams', (t, done) => {
		  function* generate() {
		    yield 'a';
		    yield 'b';
		    yield 'c';
		  }
		  const expected = ['a', 'b', 'c'];
		  t.plan(expected.length);
		  const stream = Readable.from(generate());
		  stream.on('data', (chunk) => {
		    t.assert.strictEqual(chunk, expected.shift());
		  });
		  stream.on('end', () => {
		    done();
		  });
		});
		```
	**/
	function plan(count:Float):Void;
	/**
		If `shouldRunOnlyTests` is truthy, the test context will only run tests that
		have the `only` option set. Otherwise, all tests are run. If Node.js was not
		started with the `--test-only` command-line option, this function is a
		no-op.
		
		```js
		test('top level test', (t) => {
		  // The test context can be set to run subtests with the 'only' option.
		  t.runOnly(true);
		  return Promise.all([
		    t.test('this subtest is now skipped'),
		    t.test('this subtest is run', { only: true }),
		  ]);
		});
		```
	**/
	function runOnly(shouldRunOnlyTests:Bool):Void;
	/**
		```js
		test('top level test', async (t) => {
		  await fetch('some/uri', { signal: t.signal });
		});
		```
	**/
	final signal : js.html.AbortSignal;
	/**
		This function causes the test's output to indicate the test as skipped. If `message` is provided, it is included in the output. Calling `skip()` does
		not terminate execution of the test function. This function does not return a
		value.
		
		```js
		test('top level test', (t) => {
		  // Make sure to return here as well if the test contains additional logic.
		  t.skip('this is skipped');
		});
		```
	**/
	function skip(?message:String):Void;
	/**
		This function adds a `TODO` directive to the test's output. If `message` is
		provided, it is included in the output. Calling `todo()` does not terminate
		execution of the test function. This function does not return a value.
		
		```js
		test('top level test', (t) => {
		  // This test is marked as `TODO`
		  t.todo('this is a todo');
		});
		```
	**/
	function todo(?message:String):Void;
	/**
		This function is used to create subtests under the current test. This function behaves in
		the same fashion as the top level
		{@link
		test
		}
		function.
	**/
	var test : {
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
		@:overload(function(?name:String, ?options:TestOptions, ?fn:TestFn):js.lib.Promise<ts.Undefined> { })
		@:overload(function(?options:TestOptions, ?fn:TestFn):js.lib.Promise<ts.Undefined> { })
		@:overload(function(?fn:TestFn):js.lib.Promise<ts.Undefined> { })
		@:selfCall
		function call(?name:String, ?fn:TestFn):js.lib.Promise<ts.Undefined>;
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
		function run(?options:RunOptions):TestsStream;
		/**
			The `suite()` function is imported from the `node:test` module.
		**/
		@:overload(function(?name:String, ?fn:SuiteFn):js.lib.Promise<ts.Undefined> { })
		@:overload(function(?options:TestOptions, ?fn:SuiteFn):js.lib.Promise<ts.Undefined> { })
		@:overload(function(?fn:SuiteFn):js.lib.Promise<ts.Undefined> { })
		function suite(?name:String, ?options:TestOptions, ?fn:SuiteFn):js.lib.Promise<ts.Undefined>;
		/**
			Shorthand for skipping a test. This is the same as calling
			{@link
			test
			}
			with `options.skip` set to `true`.
		**/
		@:overload(function(?name:String, ?fn:TestFn):js.lib.Promise<ts.Undefined> { })
		@:overload(function(?options:TestOptions, ?fn:TestFn):js.lib.Promise<ts.Undefined> { })
		@:overload(function(?fn:TestFn):js.lib.Promise<ts.Undefined> { })
		function skip(?name:String, ?options:TestOptions, ?fn:TestFn):js.lib.Promise<ts.Undefined>;
		/**
			Shorthand for marking a test as `TODO`. This is the same as calling
			{@link
			test
			}
			with `options.todo` set to `true`.
		**/
		@:overload(function(?name:String, ?fn:TestFn):js.lib.Promise<ts.Undefined> { })
		@:overload(function(?options:TestOptions, ?fn:TestFn):js.lib.Promise<ts.Undefined> { })
		@:overload(function(?fn:TestFn):js.lib.Promise<ts.Undefined> { })
		function todo(?name:String, ?options:TestOptions, ?fn:TestFn):js.lib.Promise<ts.Undefined>;
		/**
			Shorthand for marking a test as `only`. This is the same as calling
			{@link
			test
			}
			with `options.only` set to `true`.
		**/
		@:overload(function(?name:String, ?fn:TestFn):js.lib.Promise<ts.Undefined> { })
		@:overload(function(?options:TestOptions, ?fn:TestFn):js.lib.Promise<ts.Undefined> { })
		@:overload(function(?fn:TestFn):js.lib.Promise<ts.Undefined> { })
		function only(?name:String, ?options:TestOptions, ?fn:TestFn):js.lib.Promise<ts.Undefined>;
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
		function before(?fn:HookFn, ?options:HookOptions):Void;
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
		function after(?fn:HookFn, ?options:HookOptions):Void;
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
		function beforeEach(?fn:HookFn, ?options:HookOptions):Void;
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
		function afterEach(?fn:HookFn, ?options:HookOptions):Void;
		final mock : MockTracker;
	};
	/**
		Each test provides its own MockTracker instance.
	**/
	final mock : MockTracker;
};