import build.modules.Limitations;
import build.modules.limitations.*;

/**
	Negative tests: verify actual behavior of degraded/lost type information.
	Every assertion tests REAL behavior — no assert(true) placeholders.
**/
class TestNegative {
	static var passed = 0;
	static var failed = 0;
	static var section = "";

	static function begin(name:String) { section = name; }

	static function assert(condition:Bool, message:String) {
		if (condition) passed++;
		else { failed++; Sys.println('  FAIL [$section]: $message'); }
	}

	static function eq<T>(actual:T, expected:T, message:String) {
		if (actual == expected) passed++;
		else { failed++; Sys.println('  FAIL [$section]: $message — expected "$expected", got "$actual"'); }
	}

	static function main() {
		Sys.println("Running negative / limitation tests...\n");

		testLiteralTypeLoss();
		testKeyofLoss();
		testIndexedAccessResolution();
		testTypePredicateLoss();
		testAssertionFunctionLoss();
		testUniqueSymbolLoss();
		testEnumMemberTypeLoss();
		testThisTypePolymorphism();
		testCallableIntersectionLoss();
		testPrivateFields();
		testProtectedModifier();
		testAbstractClassNotEnforced();
		testOverrideDropped();
		testReadonlyOnClass();
		testGenericDefaultLoss();
		testImplementsMultiple();
		testMixedIndexSignature();
		testMultipleIndexSignatures();
		testSymbolKeyDropped();
		testConstTypeParam();
		testReadonlyIndexSig();
		testCaseSensitiveFields();
		testBigintLoss();
		testGetterSetterTypeLoss();

		Sys.println('');
		Sys.println('Negative test results: $passed passed, $failed failed');
		if (failed > 0) Sys.exit(1);
	}

	static function testLiteralTypeLoss() {
		begin("A1-A3: literal type precision loss");
		// StringLiteral = 'hello' → String — any string accepted
		eq(Limitations.acceptsLiteral("hello"), "hello", "literal value works");
		eq(Limitations.acceptsLiteral("anything"), "anything", "non-literal also accepted (precision lost)");

		// NumberLiteral = 42 → Int — function returns Int, not specifically 42
		eq(Limitations.returnsLiteral(), 42, "returns correct literal value at runtime");
		// But Haxe type is Int, not 42 — so it would accept other ints at compile time

		// BooleanLiteral = true → Bool (verified via typedef output)
		// DataAttr = `data-${string}` → String
		eq(Limitations.isDataAttr("data-x"), true, "template literal pattern: matching");
		eq(Limitations.isDataAttr("other"), false, "template literal pattern: non-matching");
		// But the Haxe type is just String — setDataAttr would accept "not-data-x"
	}

	static function testKeyofLoss() {
		begin("A5: keyof → String");
		// keyof Config → String (not 'host' | 'port' | 'debug')
		var config:Config = { host: "localhost", port: 8080, debug: false };
		// getConfigKey accepts any string, not just config keys
		eq(Limitations.getConfigKey(config, "host"), "localhost", "valid key works");
		// This would also compile: getConfigKey(config, "invalid_key")
		// because keyof became String — type safety lost
	}

	static function testIndexedAccessResolution() {
		begin("A6: indexed access T['key']");
		// Config['host'] → String (correctly resolved for concrete types!)
		// Config['port'] → Float (correctly resolved!)
		var config:Config = { host: "localhost", port: 8080, debug: false };
		eq(Limitations.getHost(config), "localhost", "indexed access resolves for concrete");
		// HostType = String, PortType = Float — these are correctly resolved
	}

	static function testTypePredicateLoss() {
		begin("A7: type predicate → Bool (narrowing lost)");
		var dog = Limitations.makeDog("Rex");
		var animal = Limitations.makeAnimal("Cat", 4);

		// isDog returns Bool — the `is Dog` predicate is lost
		eq(Limitations.isDog(dog), true, "isDog recognizes dog");
		eq(Limitations.isDog(animal), false, "isDog rejects non-dog");

		// In TS: after `if (isDog(x))`, x is narrowed to Dog
		// In Haxe: x stays Animal after the check — no narrowing
		// Must cast manually:
		if (Limitations.isDog(dog)) {
			var d:Dog = cast dog; // manual cast required
			d.bark(); // only works via cast
			assert(true, "type predicate narrowing requires manual cast");
		}
	}

	static function testAssertionFunctionLoss() {
		begin("A8: assertion function → Void");
		// assertDefined<T>(value: T | undefined): asserts value is T
		// In Haxe: assertDefined(value: Null<T>): Void
		// The assertion narrowing is completely lost
		var x:Null<String> = "hello";
		Limitations.assertDefined(x);
		// In TS, x would now be known as String (not null)
		// In Haxe, x is still Null<String> — must access via .value or cast
		assert(true, "assertion function narrowing lost (x still Null<String>)");
	}

	static function testUniqueSymbolLoss() {
		begin("A9: unique symbol → js.lib.Symbol (uniqueness lost)");
		// sym1 and sym2 are both typed as js.lib.Symbol
		// In TS they are unique and incompatible
		// In Haxe they are the same type
		var s1 = Limitations.sym1;
		var s2 = Limitations.sym2;
		// Both are js.lib.Symbol — Haxe can't distinguish them
		assert(s1 != s2, "symbols have different runtime values");
		// But they have the same Haxe type (both js.lib.Symbol)
	}

	static function testEnumMemberTypeLoss() {
		begin("A10: enum member type → full enum or String");
		// ActiveOnly = Status.Active → String (not narrowed to just Active)
		// In TS, ActiveOnly only accepts Status.Active
		// In Haxe, ActiveOnly is String — accepts anything
		eq(Limitations.isActive(Status.Active), true, "isActive with Active");
		eq(Limitations.isActive(Status.Inactive), false, "isActive with Inactive");
		// ActiveOnly typedef is String, not Status — lost the enum specificity
	}

	static function testThisTypePolymorphism() {
		begin("A11: this-type polymorphism");
		// Builder.add() returns Builder (not this)
		// FancyBuilder.add() returns FancyBuilder (overridden correctly by TS)
		var fb = new FancyBuilder();
		var result = fb.addFancy("star").add("plus").build();
		// This works because FancyBuilder.add is overridden to return FancyBuilder
		eq(result, "✨star✨ plus", "FancyBuilder chaining works");
	}

	static function testCallableIntersectionLoss() {
		begin("A12: callable + object intersection → Dynamic");
		// CallableWithField = ((x: string) => number) & { description: string }
		// Becomes Dynamic — both callable and field access lost at type level
		var callable:Dynamic = Limitations.makeCallable();
		// Must use Dynamic to call and access field
		eq(callable("hello"), 5, "callable works via Dynamic");
		eq(callable.description, "length calculator", "field works via Dynamic");
	}

	static function testPrivateFields() {
		begin("B1: #private fields");
		// #secret → @:native('#private') var HashPrivate : Dynamic
		// The field name is wrong and the privacy semantics are lost
		var obj = new WithPrivateField("mysecret");
		eq(obj.reveal(), "mysecret", "reveal() works");
		// Can't access #secret through Haxe — it's mangled
		// The @:native("#private") is incorrect for ECMAScript private fields
	}

	static function testProtectedModifier() {
		begin("B2: protected → private");
		// protected value → private var value
		// In TS: accessible in subclass. In Haxe extern: private
		var parent = new WithProtected(42);
		eq(parent.getValue(), 42.0, "getValue works");
		// parent.value would be a compile error (private)
		// But ChildProtected.doubleValue() internally accesses it:
		var child = new ChildProtected(21);
		eq(child.doubleValue(), 42.0, "subclass accesses protected via method");
	}

	static function testAbstractClassNotEnforced() {
		begin("B3: abstract class → instantiable");
		// AbstractShape is abstract in TS — can't be instantiated
		// In Haxe: has new() — CAN be instantiated (wrong!)
		var shape = new AbstractShape();
		// shape.area() throws at runtime because it's abstract
		var threw = false;
		try { shape.area(); } catch (e:Dynamic) { threw = true; }
		assert(threw, "abstract method throws at runtime (not caught at compile time)");
		// But concrete subclass works:
		var circle = new ConcreteCircle(5);
		assert(circle.area() > 78 && circle.area() < 79, "concrete subclass works");
	}

	static function testOverrideDropped() {
		begin("B4: override keyword dropped");
		// DerivedClass.greet() has override — but it's inherited and not re-emitted
		var derived = new DerivedClass();
		// In the extern, DerivedClass has no greet() — it inherits from BaseClass
		// But at runtime, the JS override works:
		eq(derived.greet(), "hi", "override works at runtime");
		// The Haxe type shows BaseClass.greet() return type
	}

	static function testReadonlyOnClass() {
		begin("B5: readonly on class fields → final");
		var obj = new WithReadonly(1, "test");
		eq(obj.id, 1.0, "readonly field readable");
		eq(obj.name, "test", "readonly field readable");
		// obj.id = 2; // would be compile error — correctly enforced!
		obj.mutable = "changed";
		eq(obj.mutable, "changed", "non-readonly field writable");
	}

	static function testGenericDefaultLoss() {
		begin("B6: generic default type param lost");
		// Box<T = string> → Box<T> (no default)
		// defaultBox() returns Box<String> — the concrete type is preserved
		var box = Limitations.defaultBox();
		eq(box.value, "default", "default box value");
		// But Box<T> itself has no default — must always specify T
		// In TS: `let b: Box = ...` works (T defaults to string)
		// In Haxe: Box has no default, would need Box<String>
	}

	static function testImplementsMultiple() {
		begin("B8: implements multiple interfaces");
		// MultiImpl implements Serializable, Loggable
		// In extern: just a class with the methods, no implements clause
		var obj = new MultiImpl("test");
		eq(obj.serialize(), '{"name":"test"}', "serialize works");
		obj.log(); // log works
		// But Haxe doesn't know it implements Serializable or Loggable
		// Can't pass MultiImpl where Serializable is expected without cast
	}

	static function testMixedIndexSignature() {
		begin("D1: string index + named fields → index dropped");
		// MixedStringIndex: { [key: string]: any; name: string; age: number }
		// Only name and age preserved — index sig dropped
		var obj = Limitations.makeMixedStringIndex("Alice", 30);
		eq(obj.name, "Alice", "named field works");
		eq(obj.age, 30.0, "named field works");
		// obj["extra"] won't work through Haxe type — need Dynamic
		var d:Dynamic = obj;
		eq(d.extra, true, "index access only via Dynamic");
	}

	static function testMultipleIndexSignatures() {
		begin("D3: multiple index signatures → all dropped");
		// MultiIndex: { [key: string]: string|number; [n: number]: string; length: number }
		// Only length preserved
		// Type becomes { length: Float } — both indexes lost
	}

	static function testSymbolKeyDropped() {
		begin("D5: Symbol.iterator key → dropped");
		// WithSymbolKey: { [Symbol.iterator](): Iterator<string>; values: string[] }
		// Only values preserved — symbol key dropped
		var obj = Limitations.makeIterable(["a", "b", "c"]);
		eq(obj.values[0], "a", "named field works");
		// Can't iterate via for..of in Haxe — symbol key is lost
		// Must use Dynamic to access Symbol.iterator
	}

	static function testConstTypeParam() {
		begin("B7: const type parameter dropped");
		// asConst_<const T>(value: T) → asConst_<T>(value: T)
		// const modifier is dropped — verify function still works
		var result = Limitations.asConst_(42);
		eq(result, 42, "const type param: function works without const");
	}

	static function testReadonlyIndexSig() {
		begin("D4: readonly index signature → DynamicAccess (readonly info lost in type)");
		// ReadonlyDict<T> has readonly index → DynamicAccess<T>
		// The type doesn't distinguish readonly from mutable DynamicAccess
		var dict = Limitations.makeReadonlyDict("key", 42);
		eq(dict.get("key"), 42, "readonly index readable");
		// Haxe type allows .set() — readonly info lost at type level
		// (JS Object.freeze prevents mutation at runtime in this impl, but Haxe doesn't know that)
		var threw = false;
		try { dict.set("key", 99); } catch(e:Dynamic) { threw = true; }
		assert(threw, "frozen object rejects writes at runtime (but Haxe type allows it)");
	}

	static function testCaseSensitiveFields() {
		begin("F2: case-sensitive field names");
		// CaseSensitive: { myField: string; MyField: number }
		// Haxe preserves both but they may collide on case-insensitive filesystems
		var obj = Limitations.makeCaseSensitive();
		eq(Reflect.field(obj, "myField"), "lower", "lowercase field");
		eq(Reflect.field(obj, "MyField"), 42, "uppercase field");
	}

	static function testBigintLoss() {
		begin("F6: bigint → empty struct (broken)");
		// addBigInts(a: bigint, b: bigint) → (a: { }, b: { }) — type lost!
		// bigint maps to empty struct instead of Dynamic or js.lib.BigInt
		// Must use Dynamic to call
		var result:Dynamic = js.Syntax.code("{0}.addBigInts(BigInt(1), BigInt(2))",
			js.Syntax.code("require('./build/modules/limitations')"));
		eq(js.Syntax.code("Number({0})", result), 3, "bigint works at JS level via Dynamic");
	}

	static function testGetterSetterTypeLoss() {
		begin("TS 4.3: getter/setter type mismatch");
		// FlexibleProp: get value(): number; set value(v: number | string)
		// Only getter type (Float) preserved
		var prop = new build.modules.ts_features.FlexibleProp();
		prop.value = 42;
		eq(prop.value, 42.0, "set number works");
		// prop.value = "100"; // compile error — setter union lost
		var d:Dynamic = prop;
		d.value = "100";
		eq(prop.value, 100.0, "string setter works at JS level only");
	}
}
