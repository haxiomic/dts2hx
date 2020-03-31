package tool;

import typescript.ts.SyntaxKind;

class TsSyntaxTools {

	static public function getSyntaxKindName(kind: SyntaxKind): String {
		return js.Syntax.code('require("typescript").SyntaxKind[{0}]', kind);
	}

}