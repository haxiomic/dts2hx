package node.nodecolontest.test;

typedef TestOptions = {
	/**
		If a number is provided, then that many tests would run in parallel.
		If truthy, it would run (number of cpu cores - 1) tests in parallel.
		For subtests, it will be `Infinity` tests in parallel.
		If falsy, it would only run one test at a time.
		If unspecified, subtests inherit this value from their parent.
	**/
	@:optional
	var concurrency : ts.AnyOf2<Float, Bool>;
	/**
		If truthy, and the test context is configured to run `only` tests, then this test will be
		run. Otherwise, the test is skipped.
	**/
	@:optional
	var only : Bool;
	/**
		Allows aborting an in-progress test.
	**/
	@:optional
	var signal : js.html.AbortSignal;
	/**
		If truthy, the test is skipped. If a string is provided, that string is displayed in the
		test results as the reason for skipping the test.
	**/
	@:optional
	var skip : ts.AnyOf2<String, Bool>;
	/**
		A number of milliseconds the test will fail after. If unspecified, subtests inherit this
		value from their parent.
	**/
	@:optional
	var timeout : Float;
	/**
		If truthy, the test marked as `TODO`. If a string is provided, that string is displayed in
		the test results as the reason why the test is `TODO`.
	**/
	@:optional
	var todo : ts.AnyOf2<String, Bool>;
	/**
		The number of assertions and subtests expected to be run in the test.
		If the number of assertions run in the test does not match the number
		specified in the plan, the test will fail.
	**/
	@:optional
	var plan : Float;
};