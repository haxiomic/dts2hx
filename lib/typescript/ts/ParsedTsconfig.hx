package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:3789:5
**/
@:native('ts.ParsedTsconfig')
extern interface ParsedTsconfig {
	var raw: Any;
	@:optional
	var options: typescript.ts.CompilerOptions;
	@:optional
	var typeAcquisition: typescript.ts.TypeAcquisition;
	/**
	Note that the case of the config path has not yet been normalized, as no files have been imported into the project yet
	**/
	@:optional
	var extendedConfigPath: String;
}

