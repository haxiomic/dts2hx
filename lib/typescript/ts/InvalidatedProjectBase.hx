package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:4749:5
**/

typedef InvalidatedProjectBase = {
	final kind: typescript.ts.InvalidatedProjectKind;
	final project: typescript.ts.ResolvedConfigFileName;
	/**
	To dispose this project and ensure that all the necessary actions are taken and state is updated accordingly
	**/
	function done(?cancellationToken: typescript.ts.CancellationToken, ?writeFile: typescript.ts.WriteFileCallback, ?customTransformers: typescript.ts.CustomTransformers): typescript.ts.ExitStatus;
	function getCompilerOptions(): typescript.ts.CompilerOptions;
	function getCurrentDirectory(): String;
}

