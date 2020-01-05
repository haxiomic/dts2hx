package typescript.ts;


/**
Navigation bar interface designed for visual studio's dual-column layout.
This does not form a proper tree.
The navbar is returned as a list of top-level items, each of which has a list of child items.
Child items always have an empty array for their `childItems`.

Generated from: test-definitions/typescript/typescript-extended.d.ts:5157:5
**/

typedef NavigationBarItem = {
	var text: String;
	var kind: typescript.ts.ScriptElementKind;
	var kindModifiers: String;
	var spans: Array<typescript.ts.TextSpan>;
	var childItems: Array<typescript.ts.NavigationBarItem>;
	var indent: Float;
	var bolded: Bool;
	var grayed: Bool;
}

