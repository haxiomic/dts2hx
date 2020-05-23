import typescript.ts.ModifiersArray;
import typescript.ts.SignatureDeclaration;
import js.Syntax;
import typescript.ts.Signature;
import typescript.ts.Identifier;
import typescript.ts.StringLiteral;
import typescript.ts.SymbolTable;
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

	static public function convertToRelativePath(absoluteOrRelativePath: String, basePath: String, getCanonicalFileName: (path: String) -> String): String {
		return untyped Ts.convertToRelativePath(absoluteOrRelativePath, basePath, getCanonicalFileName);
	}

	static public function getSourceFileLocals(sourceFile: SourceFile): SymbolTable {
		return cast Reflect.field(sourceFile, 'locals');
	}

	static public function getSourceFileModuleAugmentations(sourceFile: SourceFile): Array<haxe.extern.EitherType<StringLiteral, Identifier>> {
		return cast Reflect.field(sourceFile, 'moduleAugmentations');
	}

	// TypeChecker methods (checker.ts)

	static public function resolveExternalModuleSymbol(typeChecker: TypeChecker, symbol: Symbol): Symbol {
		return untyped typeChecker.resolveExternalModuleSymbol(symbol);
	}

	static public function isArrayType(typeChecker: TypeChecker, type: TsType): Bool {
		return untyped typeChecker.isArrayType(type);
	}

	static public function isTupleType(typeChecker: TypeChecker, type: TsType): Bool {
		return untyped typeChecker.isTupleType(type);
	}

	static public function createArrayType(typeChecker: TypeChecker, elementType: TsType): TsType {
		return untyped typeChecker.createArrayType(elementType);
	}

	/**
		If a signature has a rest argument that is a tuple, e.g.
			`method(...r: [string, number])`
		Then the tuple types are turned into parameters
			`method(r_0: string, r_1: number)`
	**/
	static public function getExpandedParameters(typeChecker: TypeChecker, signature: Signature): Array<Symbol> {
		return untyped typeChecker.getExpandedParameters(signature);
	}

	static public function hasRestElement(type: TsType): Bool {
		return Syntax.code('!!{0}.hasRestElement', type);
	}

	/**
		Symbol declared by node (initialized by binding)
		`node.symbol`
		https://github.com/Microsoft/TypeScript/blob/v2.1.4/src/compiler/types.ts#L497
	**/
	static public function getSymbol(node: Node): Null<Symbol> {
		return untyped node.symbol;
	}

	static public function getSignatureDeclarationModifiers(d: SignatureDeclaration): Null<ModifiersArray> {
		return Reflect.field(d, 'modifiers');
	}

	// more interesting methods:
	// isTypeAssignableTo

}