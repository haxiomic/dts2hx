package typescript.ts.server;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:4847:5
**/
@:native('ts.server.SetTypings')
extern interface SetTypings extends typescript.ts.server.ProjectResponse {
	final typeAcquisition: typescript.ts.TypeAcquisition;
	final compilerOptions: typescript.ts.CompilerOptions;
	final typings: Array<String>;
	final unresolvedImports: typescript.ts.SortedReadonlyArray<String>;
}
