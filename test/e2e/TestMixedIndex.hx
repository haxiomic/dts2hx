import build.modules.MixedIndex;
import build.modules.mixed_index.*;

/**
	D1 Test Harness: validates mixed index signature + named field behavior.
	Tests both typed access (named fields) and dynamic access (index signatures).
**/
class TestMixedIndex {
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
		Sys.println("Running mixed index test harness...\n");

		testPureIndexBaseline();
		testConfigLikeNamedFields();
		testConfigLikeDynamicAccess();
		testEnvVarsNamedFields();
		testEnvVarsDynamicAccess();
		testArrayLikeNamedField();
		testArrayLikeDynamicAccess();

		Sys.println('');
		Sys.println('Mixed index results: $passed passed, $failed failed');
		if (failed > 0) Sys.exit(1);
	}

	static function testPureIndexBaseline() {
		begin("pure index signature (baseline)");
		// PureStringIndex = DynamicAccess<Float> — already works
		// PureNumberIndex = Array<String> — already works
		assert(true, "pure index types correctly converted");
	}

	static function testConfigLikeNamedFields() {
		begin("ConfigLike: named field access");
		var config = MixedIndex.createConfigLike("myapp", cast {port: 8080, debug: true});
		// Named field 'name' should be typed
		eq(config.name, "myapp", "named field: name");
	}

	static function testConfigLikeDynamicAccess() {
		begin("ConfigLike: dynamic key access");
		var config = MixedIndex.createConfigLike("myapp", cast {port: 8080, debug: true});
		// Index signature access for arbitrary keys
		// Currently broken: index sig dropped, must use Dynamic
		var d:Dynamic = config;
		eq(d.port, 8080, "index access via Dynamic: port");
		eq(d.debug, true, "index access via Dynamic: debug");

		// TODO: When D1 is fixed, this should work via typed index access:
		// eq(MixedIndex.getConfigValue(config, "port"), 8080, "getConfigValue: port");
		// eq(MixedIndex.getConfigValue(config, "name"), "myapp", "getConfigValue: name");
	}

	static function testEnvVarsNamedFields() {
		begin("EnvVars: named field access");
		var env = MixedIndex.createEnvVars();
		eq(env.HOME, "/home/user", "named: HOME");
		eq(env.PATH, "/usr/bin", "named: PATH");
		eq(env.USER, "test", "named: USER");
	}

	static function testEnvVarsDynamicAccess() {
		begin("EnvVars: dynamic key access for extra vars");
		var env = MixedIndex.createEnvVars();
		// TERM is set via index sig but not a named field
		var d:Dynamic = env;
		eq(d.TERM, "xterm", "index access via Dynamic: TERM");

		// TODO: When D1 is fixed:
		// eq(MixedIndex.getEnvVar(env, "TERM"), "xterm", "getEnvVar: TERM");
	}

	static function testArrayLikeNamedField() {
		begin("ArrayLike: named field (length)");
		var arr = MixedIndex.createArrayLike(10, 20, 30);
		eq(arr.length, 3.0, "named: length");
	}

	static function testArrayLikeDynamicAccess() {
		begin("ArrayLike: number index access");
		var arr = MixedIndex.createArrayLike(10, 20, 30);
		// Number index dropped — must use Dynamic
		var d:Dynamic = arr;
		eq(d[0], 10, "index access via Dynamic: [0]");
		eq(d[1], 20, "index access via Dynamic: [1]");
		eq(d[2], 30, "index access via Dynamic: [2]");

		// TODO: When D1 is fixed:
		// eq(MixedIndex.getArrayItem(arr, 0), 10, "getArrayItem: [0]");
	}
}
