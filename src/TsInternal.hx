import typescript.ts.TypeParameter;
import typescript.ts.Node;
import typescript.ts.FileReference;
import typescript.ts.Program;
import typescript.ts.SourceFile;
import typescript.ts.Symbol;
import typescript.ts.TypeChecker;
import typescript.Ts;

private typedef TsType = typescript.ts.Type;

/**
	TypeScript compiler methods not included in the compiler externs

	As of TypeScript v3.7.5
**/
class TsInternal {

	static public function getSourceFileFromReference(program: Program, sourceFile: SourceFile, fileReference: FileReference): Null<SourceFile> {
		return untyped program.getSourceFileFromReference(sourceFile, fileReference);
	}

	static public function resolveExternalModuleSymbol(typeChecker: TypeChecker, symbol: Symbol): Symbol {
		return untyped typeChecker.resolveExternalModuleSymbol(symbol);
	}

	static public function convertToRelativePath(absoluteOrRelativePath: String, basePath: String, getCanonicalFileName: (path: String) -> String): String {
		return untyped Ts.convertToRelativePath(absoluteOrRelativePath, basePath, getCanonicalFileName);
	}

	/**
		Symbol declared by node (initialized by binding)
		`node.symbol`
		https://github.com/Microsoft/TypeScript/blob/v2.1.4/src/compiler/types.ts#L497
	**/
	static public function getSymbol(node: Node): Null<Symbol> {
		return untyped node.symbol;
	}

}