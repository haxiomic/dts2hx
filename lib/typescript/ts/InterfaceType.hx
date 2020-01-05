package typescript.ts;


/**
Class and interface types (ObjectFlags.Class and ObjectFlags.Interface).

Generated from: test-definitions/typescript/typescript-extended.d.ts:2387:5
**/

typedef InterfaceType = typescript.ts.ObjectType & {
	var typeParameters: Null<Array<typescript.ts.TypeParameter>>;
	var outerTypeParameters: Null<Array<typescript.ts.TypeParameter>>;
	var localTypeParameters: Null<Array<typescript.ts.TypeParameter>>;
	var thisType: Null<typescript.ts.TypeParameter>;
}

