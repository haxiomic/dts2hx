// BUG: Importing build.modules.Gaps triggers Float32Array_ compilation which fails
// because TS 6.0 Iterable has 3 type params but Haxe expects 1.
// This entire test file will fail to compile until that bug is fixed.
import build.modules.Gaps;
import build.modules.gaps.*;
import global.myumdlib.Widget;

/**
	Tests for all remaining coverage gaps from TEST_GAPS.md.
	Some tests may fail — that documents real gaps.
**/
class TestGaps {
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
	static function approx(actual:Float, expected:Float, message:String) {
		if (Math.abs(actual - expected) < 0.001) passed++;
		else { failed++; Sys.println('  FAIL [$section]: $message — expected ~$expected, got $actual'); }
	}

	static function main() {
		Sys.println("Running gap tests...\n");

		testThisParameter();
		testDestructuredParams();
		testOverloadedConstructors();
		testMultiInterfaceExtends();
		testTemplateStringIndex();
		testCircularTypes();
		testThreeJsEnumPattern();
		testRegExpMapping();
		testDateMapping();
		// testTypedArrayMapping is in TestTypedArrayBug.hx (separate compile unit — currently fails)
		testLongTypeName();
		testUmdPattern();

		Sys.println('');
		Sys.println('Gap test results: $passed passed, $failed failed');
		if (failed > 0) Sys.exit(1);
	}

	static function testThisParameter() {
		begin("this parameter stripping");
		// onEvent(this: {name: string}, event: string) → onEvent(event: String)
		// The `this` parameter should be stripped — it's a TS convention
		// that specifies the calling context, not an actual parameter.
		// In the extern: Gaps.onEvent(event:String):String — this is stripped ✓
		// But we can't call it directly because at JS level it needs a `this` context.
		// Call via JS apply to set the `this`:
		var result:Dynamic = js.Syntax.code(
			"{0}.onEvent.call({name: 'test'}, 'click')",
			js.Syntax.code("require('./build/modules/gaps')")
		);
		eq(result, "test: click", "this param stripped, call with context works");
	}

	static function testDestructuredParams() {
		begin("destructured parameters");
		// distanceFromOrigin({x, y}: Point) → distanceFromOrigin(__0: Point)
		// The destructured pattern becomes a single unnamed parameter
		var p:Point = { x: 3, y: 4 };
		approx(Gaps.distanceFromOrigin(p), 5.0, "destructured param: distance");

		var swapped = Gaps.swap(p);
		eq(swapped.x, 4.0, "destructured param: swap x");
		eq(swapped.y, 3.0, "destructured param: swap y");
	}

	static function testOverloadedConstructors() {
		begin("overloaded constructors");
		// FlexDate has 3 constructor overloads
		var d1 = new FlexDate(0); // timestamp
		assert(d1.getTime() == 0, "constructor overload: timestamp");

		var d2 = new FlexDate("2024-01-15");
		assert(d2.getTime() > 0, "constructor overload: string");

		var d3 = new FlexDate(2024, 6, 15); // year, month, day
		assert(d3.getTime() > 0, "constructor overload: y/m/d");
	}

	static function testMultiInterfaceExtends() {
		begin("interface extending multiple bases");
		// MultiExtends extends Base1 (a: string) & Base2 (b: number) + own field c
		var m:MultiExtends = { a: "hello", b: 42, c: true };
		eq(Gaps.useMultiExtends(m), "hello:42:true", "multi-extends has all fields");
	}

	static function testTemplateStringIndex() {
		begin("template string pattern index signatures");
		// DataAttributes: { [key: `data-${string}`]: string; id: string }
		// Template pattern index should be dropped (Haxe limitation) — only id kept
		var attrs = Gaps.createDataAttrs("main", cast { name: "test", value: "123" });
		eq(attrs.id, "main", "named field preserved");
		// The data-* attributes are only accessible via Dynamic
		var d:Dynamic = attrs;
		eq(d["data-name"], "test", "template index via Dynamic");
		eq(d["data-value"], "123", "template index via Dynamic");
	}

	static function testCircularTypes() {
		begin("circular type references");
		var tree = Gaps.createTree("root", [
			Gaps.createTree("child1"),
			Gaps.createTree("child2")
		]);
		eq(tree.value, "root", "tree root");
		eq(tree.children[0].value, "child1", "tree child1");
		eq(tree.children[1].value, "child2", "tree child2");
		eq(tree.children[0].parent.value, "root", "tree parent ref");
		assert(tree.parent == null, "root has no parent");
	}

	static function testThreeJsEnumPattern() {
		begin("Three.js style enum pattern");
		// FrontFaceDirection is an empty enum, CW/CCW are consts of that type
		// PostProcess should merge them into the enum
		var cw = Gaps.FrontFaceDirectionCW;
		var ccw = Gaps.FrontFaceDirectionCCW;
		// At runtime these are numbers 0 and 1
		var cwVal:Dynamic = cw;
		var ccwVal:Dynamic = ccw;
		eq(cwVal, 0, "FrontFaceDirectionCW = 0");
		eq(ccwVal, 1, "FrontFaceDirectionCCW = 1");
	}

	static function testRegExpMapping() {
		begin("RegExp → js.lib.RegExp mapping");
		var re = Gaps.makeRegExp("hello", "gi");
		// Should be js.lib.RegExp — verify it has RegExp methods
		assert(Std.isOfType(re, js.lib.RegExp), "mapped to js.lib.RegExp");
	}

	static function testDateMapping() {
		begin("Date → js.lib.Date mapping");
		var d = Gaps.makeDate("2024-01-15T00:00:00Z");
		assert(Std.isOfType(d, js.lib.Date), "mapped to js.lib.Date");
		assert(d.getTime() > 0, "Date.getTime() works");
	}

	static function testLongTypeName() {
		begin("file path length limits");
		// VeryLongTypeNameThat... — verify the file was generated and type works
		var x:VeryLongTypeNameThatMightCauseFileSystemIssuesOnSomeOperatingSystemsBecauseOfPathLengthLimitations = { value: "test" };
		eq(Gaps.useLongType(x), "test", "long type name works");
	}

	static function testUmdPattern() {
		begin("UMD pattern (global + module)");
		// UMD generates both global/ (via @:native) and modules/ (via @:jsRequire)
		// Test the global version — loaded via umd-pattern-impl.js into globalThis
		var widget = new global.myumdlib.Widget("test");
		eq(widget.render(), "<test/>", "UMD global Widget");
	}
}
