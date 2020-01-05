package typescript.ts.server;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:4813:5
**/
@:native('ts.server.InstallPackageRequest')
extern interface InstallPackageRequest extends typescript.ts.server.TypingInstallerRequestWithProjectName {
	final kind: String;
	final fileName: typescript.ts.Path;
	final packageName: String;
	final projectRootPath: typescript.ts.Path;
}

