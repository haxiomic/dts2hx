package node.nodecolontest.test;

typedef RunOptions = {
	/**
		If a number is provided, then that many test processes would run in parallel, where each process corresponds to one test file.
		If `true`, it would run `os.availableParallelism() - 1` test files in parallel. If `false`, it would only run one test file at a time.
	**/
	@:optional
	var concurrency : ts.AnyOf2<Float, Bool>;
	/**
		An array containing the list of files to run. If omitted, files are run according to the
		[test runner execution model](https://nodejs.org/docs/latest-v20.x/api/test.html#test-runner-execution-model).
	**/
	@:optional
	var files : haxe.ds.ReadOnlyArray<String>;
	/**
		Configures the test runner to exit the process once all known
		tests have finished executing even if the event loop would
		otherwise remain active.
	**/
	@:optional
	var forceExit : Bool;
	/**
		Sets inspector port of test child process.
		If a nullish value is provided, each process gets its own port,
		incremented from the primary's `process.debugPort`.
	**/
	@:optional
	var inspectPort : ts.AnyOf2<Float, () -> Float>;
	/**
		If truthy, the test context will only run tests that have the `only` option set
	**/
	@:optional
	var only : Bool;
	/**
		A function that accepts the `TestsStream` instance and can be used to setup listeners before any tests are run.
	**/
	@:optional
	dynamic function setup(reporter:TestsStream):js.lib.Promise<ts.Undefined>;
	/**
		Allows aborting an in-progress test execution.
	**/
	@:optional
	var signal : js.html.AbortSignal;
	/**
		If provided, only run tests whose name matches the provided pattern.
		Strings are interpreted as JavaScript regular expressions.
	**/
	@:optional
	var testNamePatterns : ts.AnyOf3<String, js.lib.RegExp, haxe.ds.ReadOnlyArray<ts.AnyOf2<String, js.lib.RegExp>>>;
	/**
		The number of milliseconds after which the test execution will fail.
		If unspecified, subtests inherit this value from their parent.
	**/
	@:optional
	var timeout : Float;
	/**
		Whether to run in watch mode or not.
	**/
	@:optional
	var watch : Bool;
	/**
		Running tests in a specific shard.
	**/
	@:optional
	var shard : TestShard;
};