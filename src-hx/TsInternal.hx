/**
	TypeScript compiler methods not included in the compiler externs
**/

import typescript.ts.TypeChecker;
import typescript.ts.Symbol;
import typescript.ts.FileReference;
import typescript.ts.SourceFile;
import typescript.ts.Program;

class TsInternal {

	static public function getSourceFileFromReference(program: Program, sourceFile: SourceFile, fileReference: FileReference): Null<SourceFile> {
		return untyped program.getSourceFileFromReference(sourceFile, fileReference);
	}

	static public function resolveExternalModuleSymbol(typeChecker: TypeChecker, symbol: Symbol): Symbol {
		return untyped typeChecker.resolveExternalModuleSymbol(symbol);
	}

}