package typescript.ts;


/**
Generated from: test-definitions/typescript/typescript-extended.d.ts:1725:5
**/
@:native('ts.FlowAssignment')
extern interface FlowAssignment extends typescript.ts.FlowNodeBase {
	var node: haxe.extern.EitherType<typescript.ts.Expression, haxe.extern.EitherType<typescript.ts.VariableDeclaration, typescript.ts.BindingElement>>;
	var antecedent: typescript.ts.FlowNode;
}

