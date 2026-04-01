/**
	Test harness for export default patterns.

	Behavior: `export default class Foo` generates Foo.hx at the module
	package level with @:jsRequire("mod", "default"). Named exports go
	in a separate Module-suffixed wrapper class alongside.
**/
class TestDefaultExport {
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
		Sys.println("Running default export tests...\n");

		testDefaultClassWithNamedExports();
		testDefaultClassWithStaticHelper();
		testDefaultFunction();
		testDefaultClassWithInterface();

		Sys.println('');
		Sys.println('Default export results: $passed passed, $failed failed');
		if (failed > 0) Sys.exit(1);
	}

	static function testDefaultClassWithNamedExports() {
		begin("Case 1: export default class + named exports");
		// Named exports via module wrapper
		eq(build.modules.DefaultExportCases.helperFunction(), "helper", "named export: helperFunction");
		eq(build.modules.DefaultExportCases.CONSTANT, 42, "named export: CONSTANT");

		// Default class at parent level with original name
		var obj = new build.modules.MyDefaultClass("test");
		eq(obj.value, "test", "default class: constructor works");
		eq(obj.greet(), "hello from test", "default class: method works");
	}

	static function testDefaultClassWithStaticHelper() {
		begin("Case 2: export default class + static helper");
		eq(build.modules.DefaultExportNs.staticHelper(), "helped", "named: staticHelper");

		// Default class at parent level
		var store = new build.modules.Store();
		store.set("x", 42);
		eq(store.get("x"), 42.0, "default Store: set/get");
		eq(store.size, 1.0, "default Store: size");

		var empty = build.modules.Store.createEmpty();
		eq(empty.size, 0.0, "default Store: static createEmpty");
	}

	static function testDefaultFunction() {
		begin("Case 3: export default function");
		eq(build.modules.DefaultExportFn.default_(42), "result:42", "default function works");
		eq(build.modules.DefaultExportFn.version, "1.0", "named export alongside");
	}

	static function testDefaultClassWithInterface() {
		begin("Case 4: export default class + interface");
		// Default class at parent level
		var store = new build.modules.ConfigurableStore(
			{maxSize: 50}
		);
		eq(store.getMaxSize(), 50.0, "default class with interface param");

		var def = build.modules.ConfigurableStore.withDefaults();
		eq(def.getMaxSize(), 100.0, "default class static factory");
	}
}
