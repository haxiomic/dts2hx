package tool;

import typescript.ts.Identifier;
import typescript.ts.Statement;
import typescript.ts.InternalSymbolName;
import typescript.ts.FileReference;
import typescript.ts.SourceFile;
import typescript.Ts;
import typescript.ts.CompilerHost;
import typescript.ts.Program;
import typescript.ts.Symbol;
using TsInternal;
using tool.TsSymbolTools;

class TsProgramTools {

	static public function getAllDiagnostics(program: Program) {
		return program.getGlobalDiagnostics()
			.concat(program.getOptionsDiagnostics())
			.concat(program.getSemanticDiagnostics())
			.concat(program.getSyntacticDiagnostics())
			.concat(program.getDeclarationDiagnostics())
			.concat(program.getConfigFileParsingDiagnostics());
	}

	static public function resolveAllTypeReferenceDirectives(program: Program, host: CompilerHost) {
		var sourceFiles = program.getSourceFiles().filter(s -> !program.isSourceFileDefaultLibrary(s));
		var typeReferences = [];
		for (s in sourceFiles) {
			for (t in s.typeReferenceDirectives) {
				var resolved = Ts.resolveTypeReferenceDirective(t.fileName, s.fileName, program.getCompilerOptions(), host);
				typeReferences.push(resolved);
			}
		}
		return typeReferences;
	}

	public static function getGlobalScopeSymbolsInSourceFile(program: Program, sourceFile: SourceFile) {
		var tc = program.getTypeChecker();

		var sourceFileSymbol = tc.getSymbolAtLocation(sourceFile);

		var globalSymbols = new Array<Symbol>();

		// if there's a source-file module symbol then this sourceFile does not expose anything to the global scope
		// however there's an exception if `declare global {...}` is used. We can get declare global symbols by searching sourceFile.moduleAugmentations
		if (sourceFileSymbol == null) {
			var locals: js.lib.Map<String, Symbol> = cast TsInternal.getSourceFileLocals(sourceFile);
			locals.forEach((localSymbol, key, _) -> {
				globalSymbols.push(tc.getExportSymbolOfSymbol(localSymbol));
			});
		}

		// find instances of `declare global { ... }` and add symbols
		var moduleAugmentations = TsInternal.getSourceFileModuleAugmentations(sourceFile);
		var globalAugmentations = new Array<Symbol>();
		for (moduleAugmentation in moduleAugmentations) {
			if (Ts.isIdentifier(moduleAugmentation)) {
				var ident: Identifier = cast moduleAugmentation;
				var identSymbol = tc.getSymbolAtLocation(ident);
				if (identSymbol != null && identSymbol.escapedName == InternalSymbolName.Global) {
					globalAugmentations.push(identSymbol);
				}
			}
		}

		for (g in globalAugmentations) {
			for (s in tc.getExportsOfModule(g)) {
				globalSymbols.push(tc.getExportSymbolOfSymbol(s));
			}
		}

		return globalSymbols;
	}
	
	/**
		All exposed symbols of a source file
	**/
	public static function getExposedSymbolsOfSourceFile(program: Program, sourceFile: SourceFile): Array<Symbol> {
		var tc = program.getTypeChecker();

		var globalScopeSymbols = getGlobalScopeSymbolsInSourceFile(program, sourceFile);
		var sourceFileSymbol = tc.getSymbolAtLocation(sourceFile);

		return sourceFileSymbol != null ? [sourceFileSymbol].concat(globalScopeSymbols) : globalScopeSymbols;
	}

	public static function getTopLevelDeclarationSymbols(program: Program) {
		var tc = program.getTypeChecker();
		var seenSymbols = new Map<Int, Symbol>();
		var result = new Array<Symbol>();
		inline function addSymbol(symbol: Symbol) {
			symbol = tc.getExportSymbolOfSymbol(symbol);
			if (!seenSymbols.exists(symbol.getId())) {
				seenSymbols.set(symbol.getId(), symbol);
				result.push(symbol);
			}
		}
		for (sourceFile in program.getSourceFiles()) {
			var sourceFileSymbol = tc.getSymbolAtLocation(sourceFile);
			if (sourceFileSymbol != null) addSymbol(sourceFileSymbol);
			for (symbol in tc.getSymbolsInScope(sourceFile, 0xFFFFFF)) {
				addSymbol(symbol);
			}
		}
		return result;
	}

	public static function walkReferencedSourceFiles(program: Program, sourceFile: SourceFile, onSourceFile: (SourceFile) -> Void) {
		onSourceFile(sourceFile);

		// include tripple-slash referenced sourceFiles
		for (fileRef in sourceFile.referencedFiles) {
			var referenceSourceFile = program.getSourceFileFromReference(sourceFile, fileRef);
			if (referenceSourceFile != null) {
				walkReferencedSourceFiles(program, referenceSourceFile, onSourceFile);
			}
		}
	}

	/**
		Modules might be referenced by a direct path rather than a module name
		For example: ./project/module
	**/
	static public function isDirectPathReferenceModule(moduleName: String) {
		var c0 = moduleName.charAt(0);
		return c0 == '.' || c0 == '/';
	}

}