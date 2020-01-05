package typescript.ts;


/**
A linked list of formatted diagnostic messages to be used as part of a multiline message.
It is built from the bottom up, leaving the head to be the "main" diagnostic.
While it seems that DiagnosticMessageChain is structurally similar to DiagnosticMessage,
the difference is that messages are all preformatted in DMC.

Generated from: test-definitions/typescript/typescript-extended.d.ts:2530:5
**/
@:native('ts.DiagnosticMessageChain')
extern interface DiagnosticMessageChain {
	var messageText: String;
	var category: typescript.ts.DiagnosticCategory;
	var code: Float;
	@:optional
	var next: Array<typescript.ts.DiagnosticMessageChain>;
}

