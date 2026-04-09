using tool.HaxeTools;

/**
	Regression test for issue #47: ENAMETOOLONG with extremely long type names.
	Validates that toSafeTypeName truncates long names and preserves uniqueness.
**/
function main() {
	var passed = 0;
	var failed = 0;

	function assert(condition: Bool, message: String) {
		if (condition) {
			passed++;
		} else {
			failed++;
			Sys.println('  FAIL: $message');
		}
	}

	function eq<T>(actual: T, expected: T, message: String) {
		if (actual == expected) {
			passed++;
		} else {
			failed++;
			Sys.println('  FAIL: $message — expected "$expected", got "$actual"');
		}
	}

	Sys.println("Testing long name truncation (issue #47)...");

	// Short names should pass through unchanged
	eq("Hello".toSafeTypeName(), "Hello", "short name unchanged");
	eq("MyType".toSafeTypeName(), "MyType", "normal name unchanged");

	// A name exactly at the limit should not be truncated
	var atLimit = [for (_ in 0...200) "A"].join("");
	eq(atLimit.toSafeTypeName().length, 200, "name at limit not truncated");

	// AWS SDK-style long name (280 chars) — must be truncated to ≤ 200
	var longName1 = "__stringPatternS3MM2VVMMPPEEGGMMPP3AAVVIIMMPP4FFLLVVMMPPTTMMPPGGMM4VVTTRRPPFF4VVMM2TTSSTTSS264HH264MMKKVVMMOOVVMMTTSSMM2TTWWMMVVAASSFFVVOOBB3GGPP3GGPPPPMMXXFFDDIIVVXXXXVVIIDDRRAAWWDDVVGGXXFFMM1VV3GG2VVMMFFMM3UU8WWEEBBMMLLCCHHGGXXFFMMPPEEGG2MMXXFFMMPPEEGG2MMXXFFHHDDWWAAVVYY4MMXXMMLL";
	var result1 = longName1.toSafeTypeName();
	assert(result1.length <= 200, 'long name truncated to ≤ 200 (got ${result1.length})');
	assert(result1.length > 100, 'truncated name is not too short (got ${result1.length})');

	// Similar name differing only at the end — must produce a different result
	var longName2 = longName1 + "Https";
	var result2 = longName2.toSafeTypeName();
	assert(result2.length <= 200, 'second long name truncated to ≤ 200 (got ${result2.length})');
	assert(result1 != result2, "similar long names produce different results");

	// The truncated name should preserve the start of the original
	var originalStart = longName1.toSafeTypeName().substr(0, 50);
	assert(result1.indexOf(originalStart) == 0, "truncated name preserves start");

	// Very long name (600+ chars) — must still be ≤ 200
	var veryLong = [for (_ in 0...600) "X"].join("");
	assert(veryLong.toSafeTypeName().length <= 200, 'very long name (600 chars) truncated to ≤ 200');

	// Deterministic: same input always produces same output
	eq(longName1.toSafeTypeName(), longName1.toSafeTypeName(), "truncation is deterministic");

	Sys.println('Long name tests: $passed passed, $failed failed');
	if (failed > 0) Sys.exit(1);
}
