import build.Testlib;
import build.testlib.Counter;
import build.testlib.Direction;
import build.testlib.Point;

/**
	End-to-end test: TypeScript → JS + .d.ts → dts2hx → Haxe externs → Haxe → JS → run

	This validates that generated externs produce correct JS interop at runtime.
**/
class TestE2E {
	static var passed = 0;
	static var failed = 0;

	static function assert(condition:Bool, message:String) {
		if (condition) {
			passed++;
		} else {
			failed++;
			Sys.println('  FAIL: $message');
		}
	}

	static function assertEq<T>(actual:T, expected:T, message:String) {
		if (actual == expected) {
			passed++;
		} else {
			failed++;
			Sys.println('  FAIL: $message — expected "$expected", got "$actual"');
		}
	}

	static function main() {
		Sys.println("Running end-to-end tests...");

		// Basic functions
		assertEq(Testlib.add(2, 3), 5.0, "add(2,3)");
		assertEq(Testlib.add(-1, 1), 0.0, "add(-1,1)");
		assertEq(Testlib.greet("World"), "Hello, World!", "greet");
		assertEq(Testlib.identity(42), 42, "identity<Int>");
		assertEq(Testlib.identity("hello"), "hello", "identity<String>");

		// Optional parameters
		assertEq(Testlib.optionalParam("a"), "a", "optionalParam without optional");
		assertEq(Testlib.optionalParam("a", 5), "a:5", "optionalParam with optional");

		// Constants
		assert(Testlib.PI > 3.14 && Testlib.PI < 3.15, "PI constant");

		// Enums
		assertEq(Testlib.directionToString(Direction.Up), "UP", "enum Up");
		assertEq(Testlib.directionToString(Direction.Left), "LEFT", "enum Left");

		// Class instantiation and methods
		var counter = new Counter(10);
		assertEq(counter.value, 10.0, "Counter initial value");
		assertEq(counter.increment(), 11.0, "Counter.increment()");
		assertEq(counter.increment(), 12.0, "Counter.increment() again");
		assertEq(counter.decrement(), 11.0, "Counter.decrement()");
		counter.reset();
		assertEq(counter.value, 0.0, "Counter.reset()");

		// Static method
		var c2 = Counter.create(5);
		assertEq(c2.value, 5.0, "Counter.create(5)");

		// Structural types (Point)
		var p1:Point = {x: 0, y: 0};
		var p2:Point = {x: 3, y: 4};
		assertEq(Testlib.distance(p1, p2), 5.0, "distance((0,0),(3,4))");

		// Generic pair
		var pair = Testlib.makePair("hello", 42);
		assertEq(pair.first, "hello", "makePair.first");
		assertEq(pair.second, 42, "makePair.second");

		var swapped = Testlib.swap(pair);
		assertEq(swapped.first, 42, "swap.first");
		assertEq(swapped.second, "hello", "swap.second");

		// Higher-order functions
		var arr = Testlib.mapArray([1, 2, 3], (item, _) -> item * 2);
		assertEq(arr[0], 2, "mapArray[0]");
		assertEq(arr[1], 4, "mapArray[1]");
		assertEq(arr[2], 6, "mapArray[2]");

		// Callback style
		Testlib.asyncOp("result", (err, value) -> {
			assert(err == null, "asyncOp no error");
			assertEq(value, "result", "asyncOp value");
		});

		// Result type
		var okResult = Testlib.ok(42);
		assert((cast okResult).success == true, "ok().success");

		var failResult = Testlib.fail("oops");
		assert((cast failResult).success == false, "fail().success");

		// Summary
		Sys.println('');
		Sys.println('Results: $passed passed, $failed failed');
		if (failed > 0) {
			Sys.exit(1);
		}
	}
}
