package typescript.ts;


/**
Reports config file diagnostics

Generated from: test-definitions/typescript/typescript-extended.d.ts:3731:5
**/
@:native('ts.ConfigFileDiagnosticsReporter')
extern interface ConfigFileDiagnosticsReporter {
	/**
	Reports unrecoverable error when parsing config file
	**/
	var onUnRecoverableConfigFileDiagnostic: typescript.ts.DiagnosticReporter;
}

