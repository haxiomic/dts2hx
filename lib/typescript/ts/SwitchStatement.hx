package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:1334:5
**/
@:native('ts.SwitchStatement')
extern interface SwitchStatement extends typescript.ts.Statement {
	var expression: typescript.ts.Expression;
	var caseBlock: typescript.ts.CaseBlock;
	@:optional
	var possiblyExhaustive: Bool;
}

