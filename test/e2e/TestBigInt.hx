import build.modules.BigintTest;
import build.modules.bigint_test.*;

/**
	BigInt test harness.
	Tests runtime correctness and type representation of bigint values.
**/
class TestBigInt {
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
		Sys.println("Running BigInt test harness...\n");

		testBasicArithmetic();
		testConversion();
		testComparison();
		testConstants();
		testStructuralType();
		testUnionType();

		Sys.println('');
		Sys.println('BigInt results: $passed passed, $failed failed');
		if (failed > 0) Sys.exit(1);
	}

	static function testBasicArithmetic() {
		begin("bigint arithmetic");
		var a = BigintTest.makeBigInt(10);
		var b = BigintTest.makeBigInt(20);
		var sum = BigintTest.addBigInts(a, b);
		// BigInt(10) + BigInt(20) = BigInt(30)
		eq(BigintTest.bigIntToString(sum), "30", "10 + 20 = 30");

		var product = BigintTest.multiplyBigInts(a, b);
		eq(BigintTest.bigIntToString(product), "200", "10 * 20 = 200");
	}

	static function testConversion() {
		begin("bigint conversion");
		var big = BigintTest.makeBigInt(42);
		eq(BigintTest.bigIntToString(big), "42", "bigIntToString");
	}

	static function testComparison() {
		begin("bigint comparison");
		var a = BigintTest.makeBigInt(10);
		var b = BigintTest.makeBigInt(20);
		eq(BigintTest.compareBigInts(a, b), -1.0, "10 < 20");
		eq(BigintTest.compareBigInts(b, a), 1.0, "20 > 10");
		eq(BigintTest.compareBigInts(a, a), 0.0, "10 == 10");
	}

	static function testConstants() {
		begin("bigint constants");
		eq(BigintTest.bigIntToString(BigintTest.ZERO), "0", "ZERO constant");
		// MAX_SAFE = BigInt(Number.MAX_SAFE_INTEGER) = 9007199254740991
		eq(BigintTest.bigIntToString(BigintTest.MAX_SAFE), "9007199254740991", "MAX_SAFE constant");
	}

	static function testStructuralType() {
		begin("bigint in structural type");
		var balance = BigintTest.createBalance("savings", BigintTest.makeBigInt(1000));
		eq(balance.account, "savings", "account field");
		var b = BigintTest.getBalance(balance);
		eq(BigintTest.bigIntToString(b), "1000", "balance round-trip");
	}

	static function testUnionType() {
		begin("bigint | number union");
		// isBigInt should distinguish bigint from number
		var big = BigintTest.makeBigInt(42);
		assert(BigintTest.isBigInt(big), "BigInt is bigint");
		// A plain number should not be bigint
		var num:Dynamic = 42;
		assert(!BigintTest.isBigInt(num), "number is not bigint");
	}
}
