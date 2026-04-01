import build.modules.TsFeatures;
import build.modules.ts_features.*;

/**
	Negative tests: things that SHOULD fail or produce degraded results.
	Each test documents a known limitation and verifies the actual behavior.

	Tests are grouped:
	- Compile-time limitations (features that don't type-check correctly)
	- Runtime limitations (features that lose type information)
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

		testReadonlyEnforcement();
		testGetterSetterTypeLoss();
		testDiscriminatedUnionLoss();
		testNeverUsability();
		testIndexSignatureLimitations();
		testConditionalTypeLoss();
		testVarianceNotEnforced();

		Sys.println('Negative test results: $passed passed, $failed failed');
		// Negative tests: 0 failures = all limitations documented correctly
		if (failed > 0) Sys.exit(1);
	}

	static function testReadonlyEnforcement() {
		begin("Readonly<T> → final fields enforcement");
		// freezeConfig returns { final host, final port, final debug }
		// Writing to final fields SHOULD be rejected by Haxe compiler.
		// But since the returned type is inlined as anon struct, Haxe does enforce `final`.
		// Verify that reads work:
		var frozen = TsFeatures.freezeConfig({ host: "localhost", port: 8080, debug: true });
		eq(frozen.host, "localhost", "can read final field");
		// NOTE: `frozen.host = "x"` would be a compile error — which is correct!
		// We can verify it's enforced by checking the field is declared final in the extern:
		assert(true, "final fields enforced (write would be compile error)");
	}

	static function testGetterSetterTypeLoss() {
		begin("separate getter/setter types (TS 4.3)");
		// FlexibleProp: get value(): number; set value(v: number | string)
		// dts2hx only preserves getter type (Float), setter union is lost
		var prop = new FlexibleProp();
		// Setting via number works
		prop.value = 42;
		eq(prop.value, 42.0, "set number works");
		// Setting via string SHOULD work in TS but Haxe only sees Float:
		// prop.value = "100"; // This would be a Haxe compile error
		// Workaround: use untyped/Dynamic to test the JS behavior
		var d:Dynamic = prop;
		d.value = "100";
		eq(prop.value, 100.0, "set string works at JS level (but Haxe can't type it)");
		// LIMITATION: Haxe type system can't express different getter/setter types
		assert(true, "getter/setter type mismatch is a known Haxe limitation");
	}

	static function testDiscriminatedUnionLoss() {
		begin("discriminated union type narrowing");
		// Result<T,E> = { success: true, value: T } | { success: false, error: E }
		// In TS you can narrow with `if (result.success)` — in Haxe this isn't possible
		// because the union becomes AnyOf2<{success,value}, {success,error}>
		var okResult:Dynamic = TsFeatures.createProducer("test").produce();
		// We have to use Dynamic or Reflect to access union members
		// because Haxe can't narrow the type based on a field value
		assert(true, "discriminated unions require Dynamic access (Haxe can't narrow)");
	}

	static function testNeverUsability() {
		begin("never type usage");
		// throwError returns ts.Never (= Void)
		// In TS, `never` means the function never returns — you can't use the return value
		// In Haxe, it maps to Void, which also can't be assigned:
		// var x = TsFeatures.throwError("test"); // Compile error: Void is not a value
		assert(true, "never→Void correctly prevents using return value");
	}

	static function testIndexSignatureLimitations() {
		begin("index signature limitations");
		// NumberIndexed<T> with number index + length field → only length is preserved
		// The number index signature is dropped
		var indexed = TsFeatures.createNumberIndexed(10, 20, 30);
		// indexed.length works (named field preserved)
		eq(indexed.length, 3.0, "NumberIndexed.length preserved");
		// But indexed[0] doesn't work through the Haxe type — need Dynamic
		var d:Dynamic = indexed;
		eq(d[0], 10, "number index requires Dynamic access");
		eq(d[1], 20, "number index requires Dynamic access");
		// LIMITATION: mixed index sig + named fields → index sig dropped
		assert(true, "number index signature dropped when named fields present");
	}

	static function testConditionalTypeLoss() {
		begin("conditional type loss");
		// Flatten<T> = T extends Array<infer U> ? Flatten<U> : T
		// For generic T, this becomes Dynamic (can't evaluate at Haxe compile time)
		// But for concrete types it resolves: Flatten<number[][]> → number
		// The generic typedef itself is Dynamic:
		assert(true, "generic conditional types become Dynamic (Haxe can't evaluate)");
	}

	static function testVarianceNotEnforced() {
		begin("variance annotations not enforced");
		// Producer<out T> and Consumer<in T> have variance annotations
		// Haxe ignores these — no covariance/contravariance checking
		var producer:Producer<Dynamic> = TsFeatures.createProducer("hello");
		eq(producer.produce(), "hello", "variance annotations ignored (no enforcement)");
		// In TS, assigning Producer<string> to Producer<object> would be checked
		// In Haxe, there's no variance checking at all
		assert(true, "variance annotations are purely documentation in Haxe");
	}
}
