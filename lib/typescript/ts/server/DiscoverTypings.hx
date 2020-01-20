package typescript.ts.server;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:4808:5
**/

typedef DiscoverTypings = typescript.ts.server.TypingInstallerRequestWithProjectName & {
	final fileNames: Array<String>;
	final projectRootPath: typescript.ts.Path;
	final compilerOptions: typescript.ts.CompilerOptions;
	final typeAcquisition: typescript.ts.TypeAcquisition;
	final unresolvedImports: typescript.ts.SortedReadonlyArray<String>;
	@:optional
	final cachePath: String;
	final kind: String;
}

