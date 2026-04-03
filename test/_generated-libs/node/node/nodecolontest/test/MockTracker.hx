package node.nodecolontest.test;

/**
	The `MockTracker` class is used to manage mocking functionality. The test runner
	module provides a top level `mock` export which is a `MockTracker` instance.
	Each test also provides its own `MockTracker` instance via the test context's `mock` property.
**/
typedef MockTracker = {
	/**
		This function is used to create a mock function.
		
		The following example creates a mock function that increments a counter by one
		on each invocation. The `times` option is used to modify the mock behavior such
		that the first two invocations add two to the counter instead of one.
		
		```js
		test('mocks a counting function', (t) => {
		  let cnt = 0;
		
		  function addOne() {
		    cnt++;
		    return cnt;
		  }
		
		  function addTwo() {
		    cnt += 2;
		    return cnt;
		  }
		
		  const fn = t.mock.fn(addOne, addTwo, { times: 2 });
		
		  assert.strictEqual(fn(), 2);
		  assert.strictEqual(fn(), 4);
		  assert.strictEqual(fn(), 5);
		  assert.strictEqual(fn(), 6);
		});
		```
	**/
	@:overload(function<F:(haxe.Constraints.Function), Implementation:(haxe.Constraints.Function)>(?original:F, ?implementation:Implementation, ?options:MockFunctionOptions):Mock<ts.AnyOf2<F, Implementation>> { })
	function fn<F:(haxe.Constraints.Function)>(?original:F, ?options:MockFunctionOptions):Mock<F>;
	/**
		This function is used to create a mock on an existing object method. The
		following example demonstrates how a mock is created on an existing object
		method.
		
		```js
		test('spies on an object method', (t) => {
		  const number = {
		    value: 5,
		    subtract(a) {
		      return this.value - a;
		    },
		  };
		
		  t.mock.method(number, 'subtract');
		  assert.strictEqual(number.subtract.mock.calls.length, 0);
		  assert.strictEqual(number.subtract(3), 2);
		  assert.strictEqual(number.subtract.mock.calls.length, 1);
		
		  const call = number.subtract.mock.calls[0];
		
		  assert.deepStrictEqual(call.arguments, [3]);
		  assert.strictEqual(call.result, 2);
		  assert.strictEqual(call.error, undefined);
		  assert.strictEqual(call.target, undefined);
		  assert.strictEqual(call.this, number);
		});
		```
	**/
	@:overload(function<MockedObject:(Dynamic), MethodName:(ts.AnyOf3<String, Float, js.lib.Symbol>), Implementation:(haxe.Constraints.Function)>(object:MockedObject, methodName:MethodName, implementation:Implementation, ?options:MockFunctionOptions):Dynamic { })
	@:overload(function<MockedObject:(Dynamic)>(object:MockedObject, methodName:Dynamic, options:MockMethodOptions):Mock<haxe.Constraints.Function> { })
	@:overload(function<MockedObject:(Dynamic)>(object:MockedObject, methodName:Dynamic, implementation:haxe.Constraints.Function, options:MockMethodOptions):Mock<haxe.Constraints.Function> { })
	function method<MockedObject:(Dynamic), MethodName:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(object:MockedObject, methodName:MethodName, ?options:MockFunctionOptions):Dynamic;
	/**
		This function is syntax sugar for `MockTracker.method` with `options.getter` set to `true`.
	**/
	@:overload(function<MockedObject:(Dynamic), MethodName:(ts.AnyOf3<String, Float, js.lib.Symbol>), Implementation:(haxe.Constraints.Function)>(object:MockedObject, methodName:MethodName, ?implementation:Implementation, ?options:MockFunctionOptions):Mock<ts.AnyOf2<Implementation, () -> Dynamic>> { })
	function getter<MockedObject:(Dynamic), MethodName:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(object:MockedObject, methodName:MethodName, ?options:MockFunctionOptions):Mock<() -> Dynamic>;
	/**
		This function is syntax sugar for `MockTracker.method` with `options.setter` set to `true`.
	**/
	@:overload(function<MockedObject:(Dynamic), MethodName:(ts.AnyOf3<String, Float, js.lib.Symbol>), Implementation:(haxe.Constraints.Function)>(object:MockedObject, methodName:MethodName, ?implementation:Implementation, ?options:MockFunctionOptions):Mock<ts.AnyOf2<Implementation, (value:Dynamic) -> Void>> { })
	function setter<MockedObject:(Dynamic), MethodName:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(object:MockedObject, methodName:MethodName, ?options:MockFunctionOptions):Mock<(value:Dynamic) -> Void>;
	/**
		This function is used to mock the exports of ECMAScript modules, CommonJS modules, and Node.js builtin modules.
		Any references to the original module prior to mocking are not impacted.
		
		Only available through the [--experimental-test-module-mocks](https://nodejs.org/api/cli.html#--experimental-test-module-mocks) flag.
	**/
	function module(specifier:String, ?options:MockModuleOptions):MockModuleContext;
	/**
		This function restores the default behavior of all mocks that were previously
		created by this `MockTracker` and disassociates the mocks from the `MockTracker` instance. Once disassociated, the mocks can still be used, but the `MockTracker` instance can no longer be
		used to reset their behavior or
		otherwise interact with them.
		
		After each test completes, this function is called on the test context's `MockTracker`. If the global `MockTracker` is used extensively, calling this
		function manually is recommended.
	**/
	function reset():Void;
	/**
		This function restores the default behavior of all mocks that were previously
		created by this `MockTracker`. Unlike `mock.reset()`, `mock.restoreAll()` does
		not disassociate the mocks from the `MockTracker` instance.
	**/
	function restoreAll():Void;
	final timers : MockTimers;
};