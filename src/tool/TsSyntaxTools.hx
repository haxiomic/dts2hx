package tool;

import typescript.ts.NodeFlags;
import typescript.ts.TypeParameterDeclaration;
import typescript.ts.SourceFile;
import typescript.ts.Identifier;
import typescript.ts.Node;
import typescript.ts.EntityName;
import typescript.ts.QualifiedName;
import typescript.ts.DeclarationName;
import typescript.ts.SyntaxKind;
import typescript.Ts;

using tool.HaxeTools;

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

	static public function typeParameterDeclarationName(typeParameterDeclaration: TypeParameterDeclaration): String {
		var name: Identifier = (untyped typeParameterDeclaration.name: Identifier);
		return (name.escapedText: String).toSafeTypeName();
	}
	
	// translated from https://github.com/microsoft/TypeScript/blob/3340142dda47f52af55144130304eef19a97ec31/src/compiler/utilities.ts#L1064
	static public function isVarConst(node: Node) {
		return Ts.getCombinedNodeFlags(node) & NodeFlags.Const != 0;
	}

}