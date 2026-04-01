import build.Testlib;
import build.testlib.*;
import build.modules.Types;
import build.modules.Math_;
import build.modules.Collections;
import build.modules.CjsExport;
import build.modules.Barrel;
import build.modules.collections.Stack;

/**
	End-to-end test: TypeScript → JS + .d.ts → dts2hx → Haxe externs → Haxe → JS → run

	Validates that generated externs produce correct JS interop at runtime.
	Covers: functions, classes, enums, generics, mapped types, unions, tuples, edge cases.
**/
class TestE2E {
	static var passed = 0;
	static var failed = 0;
	static var section = "";

	static function begin(name:String) {
		section = name;
	}

	static function assert(condition:Bool, message:String) {
		if (condition) {
			passed++;
		} else {
			failed++;
			Sys.println('  FAIL [$section]: $message');
		}
	}

	static function eq<T>(actual:T, expected:T, message:String) {
		if (actual == expected) {
			passed++;
		} else {
			failed++;
			Sys.println('  FAIL [$section]: $message — expected "$expected", got "$actual"');
		}
	}

	static function approx(actual:Float, expected:Float, message:String, tolerance:Float = 0.001) {
		if (Math.abs(actual - expected) < tolerance) {
			passed++;
		} else {
			failed++;
			Sys.println('  FAIL [$section]: $message — expected ~$expected, got $actual');
		}
	}

	static function main() {
		Sys.println("Running end-to-end tests...\n");

		testBasicFunctions();
		testOptionalAndRest();
		testOverloads();
		testGenericFunctions();
		testHigherOrder();
		testConstants();
		testEnums();
		testClasses();
		testInheritance();
		testStructuralTypes();
		testGenerics();
		testMappedTypes();
		testUnionTypes();
		testResultType();
		testTuples();
		testCallbacks();
		testEdgeCases();
		testRecursiveTypes();
		testMethodChaining();
		testModuleTypes();
		testModuleMath();
		testModuleCollections();
		testCjsExport();
		testBarrelExports();
		testStack();

		Sys.println('Results: $passed passed, $failed failed');
		if (failed > 0) Sys.exit(1);
	}

	static function testBasicFunctions() {
		begin("basic functions");
		eq(Testlib.add(2, 3), 5.0, "add(2,3)");
		eq(Testlib.add(-1, 1), 0.0, "add(-1,1)");
		eq(Testlib.add(0, 0), 0.0, "add(0,0)");
		eq(Testlib.greet("World"), "Hello, World!", "greet");
		eq(Testlib.greet(""), "Hello, !", "greet empty");
		eq(Testlib.identity(42), 42, "identity int");
		eq(Testlib.identity("hello"), "hello", "identity string");
		eq(Testlib.identity(true), true, "identity bool");
	}

	static function testOptionalAndRest() {
		begin("optional and rest params");
		eq(Testlib.optionalParam("a"), "a", "optional omitted");
		eq(Testlib.optionalParam("a", 5), "a:5", "optional provided");
		eq(Testlib.restParam(1, 2, 3), 6.0, "rest sum");
		eq(Testlib.restParam(10), 10.0, "rest single");
		eq(Testlib.restWithLeading("x", 1, 2, 3), "x:1,2,3", "rest with leading");
	}

	static function testOverloads() {
		begin("overloaded functions");
		eq(Testlib.overloaded("hello"), "hello", "overload string");
		eq(Testlib.overloaded(42), 42, "overload number");
	}

	static function testGenericFunctions() {
		begin("generic functions");
		var p = Testlib.pair("a", 1);
		eq(p[0], "a", "pair first");
		eq(p[1], 1, "pair second");
		eq(Testlib.constrained("hello"), "hello", "constrained generic");
	}

	static function testHigherOrder() {
		begin("higher-order functions");
		var doubled = Testlib.mapArray([1, 2, 3], (item, _) -> item * 2);
		eq(doubled[0], 2, "mapArray[0]");
		eq(doubled[1], 4, "mapArray[1]");
		eq(doubled[2], 6, "mapArray[2]");

		var fn = Testlib.returnsFunction();
		eq(fn(42), "value:42", "returnsFunction");

		Testlib.takesCallback((err, result) -> {
			assert(err == null, "callback no error");
			eq(result, "success", "callback result");
		});
	}

	static function testConstants() {
		begin("constants");
		approx(Testlib.PI, 3.14159, "PI");
		eq(Testlib.VERSION, "1.0.0", "VERSION");
	}

	static function testEnums() {
		begin("enums");
		eq(Testlib.directionToString(Direction.Up), "UP", "Direction.Up");
		eq(Testlib.directionToString(Direction.Down), "DOWN", "Direction.Down");
		eq(Testlib.directionToString(Direction.Left), "LEFT", "Direction.Left");
		eq(Testlib.directionToString(Direction.Right), "RIGHT", "Direction.Right");
	}

	static function testClasses() {
		begin("classes");
		var c = new Counter(10);
		eq(c.value, 10.0, "Counter initial");
		eq(c.increment(), 11.0, "increment");
		eq(c.increment(), 12.0, "increment 2");
		eq(c.decrement(), 11.0, "decrement");
		c.reset();
		eq(c.value, 0.0, "reset");

		var c2 = Counter.create(5);
		eq(c2.value, 5.0, "Counter.create");

		var c3 = Counter.create();
		eq(c3.value, 0.0, "Counter.create default");
	}

	static function testInheritance() {
		begin("inheritance");
		var dog = new Dog("Rex");
		eq(dog.name, "Rex", "Dog.name");
		eq(dog.legs, 4.0, "Dog.legs");
		eq(dog.describe(), "Rex has 4 legs", "Dog.describe()");
		eq(dog.bark(), "Woof!", "Dog.bark()");

		var animal = new Animal("Cat", 4);
		eq(animal.describe(), "Cat has 4 legs", "Animal.describe()");
	}

	static function testStructuralTypes() {
		begin("structural types");
		var p1:Point = {x: 0, y: 0};
		var p2 = Testlib.makePoint(3, 4);
		eq(p2.x, 3.0, "makePoint.x");
		eq(p2.y, 4.0, "makePoint.y");
		approx(Testlib.distance(p1, p2), 5.0, "distance");

		eq(Testlib.describePerson({name: "Alice", age: 30}), "Alice, age 30", "describePerson");
	}

	static function testGenerics() {
		begin("generics");
		var wrapped = Testlib.wrapValue(42);
		eq(Testlib.unwrapValue(wrapped), 42, "wrap/unwrap");

		var pair = Testlib.makePair("hello", 99);
		eq(pair.first, "hello", "pair.first");
		eq(pair.second, 99, "pair.second");

		var swapped = Testlib.swap(pair);
		eq(swapped.first, 99, "swap.first");
		eq(swapped.second, "hello", "swap.second");

		var n = Testlib.nullable(42);
		eq(n, 42, "nullable non-null");

		var dict = Testlib.makeDict([["a", 1], ["b", 2]]);
		eq(Reflect.field(dict, "a"), 1, "dict[a]");
		eq(Reflect.field(dict, "b"), 2, "dict[b]");
	}

	static function testMappedTypes() {
		begin("mapped types");
		var rec = Testlib.makeRecord(["x", "y"], 42);
		eq(Reflect.field(rec, "x"), 42, "Record x");
		eq(Reflect.field(rec, "y"), 42, "Record y");

		var keys = Testlib.getKeys(rec);
		assert(keys.length == 2, "getKeys length");

		var base:Point = {x: 1, y: 2};
		var partial:PartialPoint = {x: 10};
		var applied = Testlib.applyPartialPoint(base, partial);
		eq(applied.x, 10.0, "applyPartial x");
		eq(applied.y, 2.0, "applyPartial y unchanged");

		var frozen = Testlib.freezePoint({x: 5, y: 6});
		eq(frozen.x, 5.0, "frozen.x");

		var full:FullConfig = {host: "localhost", port: 8080, debug: true, name: "test"};
		var picked = Testlib.pickConfig(full);
		eq(picked.host, "localhost", "picked.host");
		eq(picked.port, 8080.0, "picked.port");
	}

	static function testUnionTypes() {
		begin("union types");
		eq(Testlib.doubleIt(5), 10, "doubleIt number");
		eq(Testlib.doubleIt("ab"), "abab", "doubleIt string");

		var circle:Dynamic = {kind: "circle", radius: 5};
		approx(Testlib.area(circle), 78.539, "area circle");

		var square:Dynamic = {kind: "square", size: 4};
		eq(Testlib.area(square), 16.0, "area square");
	}

	static function testResultType() {
		begin("result type");
		var okr:Dynamic = Testlib.ok(42);
		assert(okr.success == true, "ok.success");
		eq(okr.value, 42, "ok.value");

		var failr:Dynamic = Testlib.fail("oops");
		assert(failr.success == false, "fail.success");
		eq(failr.error, "oops", "fail.error");
	}

	static function testTuples() {
		begin("tuples");
		var result = Testlib.firstAndRest([10, 20, 30]);
		eq(result[0], 10, "firstAndRest first");
		var rest:Array<Int> = result[1];
		eq(rest.length, 2, "firstAndRest rest length");
		eq(rest[0], 20, "firstAndRest rest[0]");
		eq(rest[1], 30, "firstAndRest rest[1]");

		var tuple:Dynamic = js.Syntax.code('["hello", 42]');
		var obj = Testlib.tupleToObject(tuple);
		eq(Reflect.field(obj, "name"), "hello", "tupleToObject.name");
		eq(Reflect.field(obj, "value"), 42, "tupleToObject.value");

		eq(Testlib.spreadArgs("a", 1, true), "a,1,true", "spreadArgs");
	}

	static function testCallbacks() {
		begin("callbacks");
		Testlib.asyncOp("data", (err, val) -> {
			assert(err == null, "asyncOp no error");
			eq(val, "data", "asyncOp value");
		});
	}

	static function testEdgeCases() {
		begin("edge cases");
		var fields = Testlib.getReservedFields();
		eq(Reflect.field(fields, "function"), "fn", "reserved: function");
		eq(Reflect.field(fields, "class"), 42, "reserved: class");
		eq(Reflect.field(fields, "var"), true, "reserved: var");
	}

	static function testRecursiveTypes() {
		begin("recursive types");
		var list = Testlib.makeList(1, 2, 3);
		eq(list.value, 1, "list head");
		eq(list.next.value, 2, "list second");
		eq(list.next.next.value, 3, "list third");
		assert(list.next.next.next == null, "list tail null");

		var arr = Testlib.listToArray(list);
		eq(arr[0], 1, "listToArray[0]");
		eq(arr[1], 2, "listToArray[1]");
		eq(arr[2], 3, "listToArray[2]");
		eq(arr.length, 3, "listToArray length");
	}

	static function testMethodChaining() {
		begin("method chaining");
		var result = new Builder().add("hello").add("world").build();
		eq(result, "hello world", "builder chain");
	}

	// === MODULE PATTERN TESTS ===

	static function testModuleTypes() {
		begin("module: types");
		var p = Types.createPoint(3, 4);
		eq(p.x, 3.0, "createPoint.x");
		eq(p.y, 4.0, "createPoint.y");

		var r = Types.createRect(1, 2, 10, 20);
		eq(r.x, 1.0, "createRect.x");
		eq(r.y, 2.0, "createRect.y");
		eq(Reflect.field(r, "width"), 10, "createRect.width");
		eq(Reflect.field(r, "height"), 20, "createRect.height");
	}

	static function testModuleMath() {
		begin("module: math (cross-module imports)");
		var a = Math_.createPoint(0, 0);
		var b = Math_.createPoint(3, 4);
		approx(Math_.distance(a, b), 5.0, "cross-module distance");

		var mid = Math_.midpoint(a, b);
		approx(mid.x, 1.5, "midpoint.x");
		approx(mid.y, 2.0, "midpoint.y");
	}

	static function testModuleCollections() {
		begin("module: collections (index sigs, generics)");
		// StringMap<T> maps to DynamicAccess<T> — test typed access
		var entries:Dynamic = js.Syntax.code('[["a", 1], ["b", 2]]');
		var map = Collections.createStringMap(entries);
		eq(map.get("a"), 1, "stringMap.get(a)");
		eq(map.get("b"), 2, "stringMap.get(b)");
		assert(map.get("missing") == null, "stringMap.get(missing) is null");

		// Config: mixed index sig + named fields — named fields preserved
		var cfg = Collections.createConfig("localhost", 8080, true);
		eq(cfg.host, "localhost", "config.host");
		eq(cfg.port, 8080.0, "config.port");
		eq(cfg.debug, true, "config.debug");
	}

	static function testCjsExport() {
		begin("CJS export = pattern");
		var obj = new CjsExport("test");
		eq(obj.name, "test", "cjs.name");
		eq(obj.greet(), "Hello from test", "cjs.greet()");

		var obj2 = CjsExport.create("factory");
		eq(obj2.name, "factory", "cjs static create");
	}

	static function testBarrelExports() {
		begin("barrel re-exports");
		// Functions re-exported from types module
		var p = Barrel.createPoint(5, 6);
		eq(p.x, 5.0, "barrel createPoint.x");

		// Functions re-exported from math module
		var a = Barrel.createPoint(0, 0);
		var b = Barrel.createPoint(3, 4);
		approx(Barrel.distance(a, b), 5.0, "barrel distance");

		// Functions from collections
		var cfg = Barrel.createConfig("example.com", 443, false);
		eq(cfg.host, "example.com", "barrel config.host");
	}

	static function testStack() {
		begin("generic class (Stack)");
		var s = new Stack();
		s.push(1);
		s.push(2);
		s.push(3);
		eq(s.size, 3.0, "stack size");
		eq(s.peek(), 3, "stack peek");
		eq(s.pop(), 3, "stack pop");
		eq(s.size, 2.0, "stack size after pop");

		var arr = s.toArray();
		eq(arr[0], 1, "stack toArray[0]");
		eq(arr[1], 2, "stack toArray[1]");

		// Static factory
		var s2 = Stack.from([10, 20, 30]);
		eq(s2.size, 3.0, "Stack.from size");
		eq(s2.pop(), 30, "Stack.from pop");
	}
}
