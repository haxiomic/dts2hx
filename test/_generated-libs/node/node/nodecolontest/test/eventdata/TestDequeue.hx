package node.nodecolontest.test.eventdata;

typedef TestDequeue = {
	/**
		The test name.
	**/
	var name : String;
	/**
		The nesting level of the test.
	**/
	var nesting : Float;
	/**
		The column number where the test is defined, or
		`undefined` if the test was run through the REPL.
	**/
	@:optional
	var column : Float;
	/**
		The path of the test file, `undefined` if test was run through the REPL.
	**/
	@:optional
	var file : String;
	/**
		The line number where the test is defined, or `undefined` if the test was run through the REPL.
	**/
	@:optional
	var line : Float;
};