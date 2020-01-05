package typescript.ts;


/**
Signals that the user manually requested signature help.
The language service will unconditionally attempt to provide a result.

Generated from: test-definitions/typescript/typescript-extended.d.ts:5112:5
**/
@:native('ts.SignatureHelpInvokedReason')
extern interface SignatureHelpInvokedReason {
	var kind: String;
	@:optional
	var triggerCharacter: Any;
}

