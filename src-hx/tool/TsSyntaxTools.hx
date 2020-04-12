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

	/**
		Using this requires `sourceFile.moduleName` has been set (see ConverterContext for details)
	**/
	static public function getSourceFileModuleName(sourceFile: SourceFile): String {
		return if (sourceFile.moduleName != null) {
			sourceFile.moduleName;
		} else {
			// @! todo: determine minimal module import from fileName
			// i.e. node_modules/three/src/example.d.ts -> three/src/example
			// maybe helpful // untyped Ts.convertToRelativePath(sourceFile.resolvedFileName, host.getCurrentDirectory(), fileName -> host.getCanonicalFileName(fileName));
			sourceFile.fileName;
		}
	}

}