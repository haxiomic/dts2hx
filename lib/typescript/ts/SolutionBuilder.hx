package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:4739:5
**/

typedef SolutionBuilder<T> = {
	function build(?project: String, ?cancellationToken: typescript.ts.CancellationToken): typescript.ts.ExitStatus;
	function clean(?project: String): typescript.ts.ExitStatus;
	function buildReferences(project: String, ?cancellationToken: typescript.ts.CancellationToken): typescript.ts.ExitStatus;
	function cleanReferences(?project: String): typescript.ts.ExitStatus;
	function getNextInvalidatedProject(?cancellationToken: typescript.ts.CancellationToken): Null<typescript.ts.InvalidatedProject<T>>;
}

