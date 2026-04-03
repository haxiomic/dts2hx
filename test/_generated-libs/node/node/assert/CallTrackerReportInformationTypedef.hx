package node.assert;

typedef CallTrackerReportInformationTypedef = {
	var message : String;
	/**
		The actual number of times the function was called.
	**/
	var actual : Float;
	/**
		The number of times the function was expected to be called.
	**/
	var expected : Float;
	/**
		The name of the function that is wrapped.
	**/
	@:native("operator")
	var operator_ : String;
	/**
		A stack trace of the function.
	**/
	var stack : Dynamic;
};