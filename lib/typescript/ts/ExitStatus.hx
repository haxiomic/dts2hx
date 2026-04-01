package typescript.ts;


/**
Return code used by getEmitOutput function to indicate status of the function

Generated from: test-definitions/typescript/typescript-extended.d.ts:1972:5
**/
@:native('ts.ExitStatus')
extern enum abstract ExitStatus(Int) from Int to Int {
	var Success;
	var DiagnosticsPresent_OutputsSkipped;
	var DiagnosticsPresent_OutputsGenerated;
	var InvalidProject_OutputsSkipped;
	var ProjectReferenceCycle_OutputsSkipped;
	var ProjectReferenceCycle_OutputsSkupped;
}

