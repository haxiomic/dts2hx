package typescript.ts;


/**
Host to create watch with config file

Generated from: test-definitions/typescript/typescript-extended.d.ts:4656:5
**/
@:native('ts.WatchCompilerHostOfConfigFile')
extern interface WatchCompilerHostOfConfigFile<T> extends typescript.ts.WatchCompilerHost<T> {
	/**
	Name of the config file to compile
	**/
	var configFileName: String;
	/**
	Options to extend
	**/
	@:optional
	var optionsToExtend: typescript.ts.CompilerOptions;
}

