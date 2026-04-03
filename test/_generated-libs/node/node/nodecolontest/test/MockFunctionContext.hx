package node.nodecolontest.test;

/**
	The `MockFunctionContext` class is used to inspect or manipulate the behavior of
	mocks created via the `MockTracker` APIs.
**/
typedef MockFunctionContext<F:(haxe.Constraints.Function)> = {
	/**
		A getter that returns a copy of the internal array used to track calls to the
		mock. Each entry in the array is an object with the following properties.
	**/
	final calls : Array<MockFunctionCall<F, Dynamic, Dynamic>>;
	/**
		This function returns the number of times that this mock has been invoked. This
		function is more efficient than checking `ctx.calls.length` because `ctx.calls` is a getter that creates a copy of the internal call tracking array.
	**/
	function callCount():Float;
	/**
		This function is used to change the behavior of an existing mock.
		
		The following example creates a mock function using `t.mock.fn()`, calls the
		mock function, and then changes the mock implementation to a different function.
		
		```js
		test('changes a mock behavior', (t) => {
		  let cnt = 0;
		
		  function addOne() {
		    cnt++;
		    return cnt;
		  }
		
		  function addTwo() {
		    cnt += 2;
		    return cnt;
		  }
		
		  const fn = t.mock.fn(addOne);
		
		  assert.strictEqual(fn(), 1);
		  fn.mock.mockImplementation(addTwo);
		  assert.strictEqual(fn(), 3);
		  assert.strictEqual(fn(), 5);
		});
		```
	**/
	function mockImplementation(implementation:F):Void;
	/**
		This function is used to change the behavior of an existing mock for a single
		invocation. Once invocation `onCall` has occurred, the mock will revert to
		whatever behavior it would have used had `mockImplementationOnce()` not been
		called.
		
		The following example creates a mock function using `t.mock.fn()`, calls the
		mock function, changes the mock implementation to a different function for the
		next invocation, and then resumes its previous behavior.
		
		```js
		test('changes a mock behavior once', (t) => {
		  let cnt = 0;
		
		  function addOne() {
		    cnt++;
		    return cnt;
		  }
		
		  function addTwo() {
		    cnt += 2;
		    return cnt;
		  }
		
		  const fn = t.mock.fn(addOne);
		
		  assert.strictEqual(fn(), 1);
		  fn.mock.mockImplementationOnce(addTwo);
		  assert.strictEqual(fn(), 3);
		  assert.strictEqual(fn(), 4);
		});
		```
	**/
	function mockImplementationOnce(implementation:F, ?onCall:Float):Void;
	/**
		Resets the call history of the mock function.
	**/
	function resetCalls():Void;
	/**
		Resets the implementation of the mock function to its original behavior. The
		mock can still be used after calling this function.
	**/
	function restore():Void;
};