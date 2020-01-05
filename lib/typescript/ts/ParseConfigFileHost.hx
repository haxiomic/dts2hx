package typescript.ts;


/**
Interface extending ParseConfigHost to support ParseConfigFile that reads config file and reports errors

Generated from: test-definitions/typescript/typescript-extended.d.ts:3740:5
**/
@:native('ts.ParseConfigFileHost')
extern interface ParseConfigFileHost extends typescript.ts.ParseConfigHost {
	function getCurrentDirectory(): String;
}

