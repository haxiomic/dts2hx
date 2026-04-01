import build.modules.Implements;
import build.modules.implements_.*;

/**
	B8 Test Harness: validates implements clause behavior.
	Tests both runtime correctness AND type-system interop.
**/
class TestImplements {
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
		Sys.println("Running implements test harness...\n");

		testSingleImplements();
		testMultipleImplements();
		testExtendsAndImplements();
		testExtendsAndMultipleImplements();
		testGenericImplements();
		testInterfaceExtendsImplements();
		testPassToInterfaceParam();

		Sys.println('');
		Sys.println('Implements results: $passed passed, $failed failed');
		if (failed > 0) Sys.exit(1);
	}

	static function testSingleImplements() {
		begin("single implements");
		var printer = new SimplePrinter("hello");
		eq(printer.print(), "hello", "SimplePrinter.print()");
	}

	static function testMultipleImplements() {
		begin("multiple implements");
		var doc = new Document("test content");
		eq(doc.print(), "[Doc: test content]", "Document.print()");
		eq(doc.serialize(), '{"content":"test content"}', "Document.serialize()");
	}

	static function testExtendsAndImplements() {
		begin("extends + implements");
		var comp = new DisposableComponent("c1");
		eq(comp.getId(), "c1", "inherited getId()");
		eq(comp.disposed, false, "disposed initially false");
		comp.dispose();
		eq(comp.disposed, true, "disposed after dispose()");
	}

	static function testExtendsAndMultipleImplements() {
		begin("extends + multiple implements");
		var full = new FullComponent("f1", "Main");
		eq(full.getId(), "f1", "inherited getId()");
		eq(full.print(), "[f1: Main]", "print()");
		eq(full.disposed, false, "disposed initially false");
		full.dispose();
		eq(full.disposed, true, "disposed after dispose()");
	}

	static function testGenericImplements() {
		begin("generic implements");
		var sc = new StringContainer();
		sc.set("hello");
		eq(sc.get(), "hello", "StringContainer get/set");
	}

	static function testInterfaceExtendsImplements() {
		begin("implements interface that extends another");
		var doc = new NamedDoc("Report", "quarterly results");
		eq(doc.name, "Report", "NamedDoc.name");
		eq(doc.print(), "Report: quarterly results", "NamedDoc.print()");
	}

	static function testPassToInterfaceParam() {
		begin("pass implementing class to interface parameter");
		// These test whether implementing classes can be passed where interfaces are expected.
		// Currently B8 is unfixed — classes don't declare implements, so Haxe won't
		// allow passing them to typed interface parameters without cast.

		// Runtime tests via Dynamic (works regardless of type system):
		var printer = new SimplePrinter("test");
		eq(Implements.printThing(cast printer), "test", "printThing via cast");

		var doc = new Document("doc");
		eq(Implements.serializeThing(cast doc), '{"content":"doc"}', "serializeThing via cast");

		// TODO: When B8 is fixed, these should work WITHOUT cast:
		// eq(Implements.printThing(printer), "test", "printThing typed");
		// eq(Implements.serializeThing(doc), '{"content":"doc"}', "serializeThing typed");
	}
}
