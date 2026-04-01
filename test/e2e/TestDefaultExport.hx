/**
	Test harness for export default patterns.

	Current behavior: `export default class Foo` generates:
	  - Module.hx with named exports (@:jsRequire("mod") @valueModuleOnly)
	  - module/Default.hx with the class (@:jsRequire("mod", "default"))
	  The original class name "Foo" is lost — it becomes "Default".

	Desired behavior: the class should keep its name "Foo" and ideally
	live in the module file directly, not in a subdirectory.

	This test validates both current behavior and marks what should change.
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
		// export default class MyDefaultClass { ... }
		// export function helperFunction(): string;
		// export const CONSTANT = 42;

		// Named exports work via module class
		eq(build.modules.DefaultExportCases.helperFunction(), "helper", "named export: helperFunction");
		eq(build.modules.DefaultExportCases.CONSTANT, 42, "named export: CONSTANT");

		// Default class accessible but named "Default" not "MyDefaultClass"
		var obj = new build.modules.default_export_cases.Default("test");
		eq(obj.value, "test", "default class: constructor works");
		eq(obj.greet(), "hello from test", "default class: method works");

		// BUG: Class is named "Default" instead of "MyDefaultClass"
		// BUG: Lives in default_export_cases/Default.hx instead of DefaultExportCases.hx
	}

	static function testDefaultClassWithStaticHelper() {
		begin("Case 2: export default class + static helper");
		// export function staticHelper(): string;
		// export default class Store { ... }

		eq(build.modules.DefaultExportNs.staticHelper(), "helped", "named: staticHelper");

		var store = new build.modules.default_export_ns.Default();
		store.set("x", 42);
		eq(store.get("x"), 42.0, "default Store: set/get");
		eq(store.size, 1.0, "default Store: size");

		var empty = build.modules.default_export_ns.Default.createEmpty();
		eq(empty.size, 0.0, "default Store: static createEmpty");

		// BUG: Class is named "Default" instead of "Store"
	}

	static function testDefaultFunction() {
		begin("Case 3: export default function");
		// export default function defaultFn(x: number): string;
		// export const version = "1.0";

		// This case works WELL — function inlined into module class
		eq(build.modules.DefaultExportFn.default_(42), "result:42", "default function works");
		eq(build.modules.DefaultExportFn.version, "1.0", "named export alongside");

		// Note: function is named "default_" with @:native("default")
		// This is acceptable — no subdirectory created
	}

	static function testDefaultClassWithInterface() {
		begin("Case 4: export default class + interface");
		// export interface StoreOptions { ... }
		// export default class ConfigurableStore { ... }

		var store = new build.modules.default_export_iface.Default(
			{maxSize: 50}
		);
		eq(store.getMaxSize(), 50.0, "default class with interface param");

		var def = build.modules.default_export_iface.Default.withDefaults();
		eq(def.getMaxSize(), 100.0, "default class static factory");

		// BUG: Class is named "Default" instead of "ConfigurableStore"
	}
}
