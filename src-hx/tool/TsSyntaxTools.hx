package tool;

import typescript.ts.SourceFile;
import typescript.ts.Identifier;
import typescript.ts.Node;
import typescript.ts.EntityName;
import typescript.ts.QualifiedName;
import typescript.ts.DeclarationName;
import typescript.ts.SyntaxKind;
import typescript.Ts;

class TsSyntaxTools {

	static public function getSyntaxKindName(kind: SyntaxKind): String {
		return js.Syntax.code('require("typescript").SyntaxKind[{0}]', kind);
	}

	static public function entityNameString(entityName: EntityName): String {
		// Identifier | QualifiedName
		var node = (cast entityName: Node);
		return switch node.kind {
			case Identifier: (cast entityName: Identifier).escapedText;
			case QualifiedName: entityNameString((cast entityName: QualifiedName).left) + '_' + entityNameString((cast entityName: QualifiedName).right);
			default: throw 'EntityName has unexpected kind <b>${getSyntaxKindName(node.kind)}</>';
		}
	}

}