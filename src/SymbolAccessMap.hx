import SymbolAccess;
import typescript.ts.InternalSymbolName;
import typescript.ts.Program;
import typescript.ts.SourceFile;
import typescript.ts.Symbol;
import typescript.ts.SymbolFlags;
import typescript.ts.TypeChecker;

using tool.SymbolAccessTools;
using tool.TsProgramTools;
using tool.TsSymbolTools;


/**
	Determines access path for all accessible symbols given entry-point source files

	We run this for every referenced module because haxe type paths depend on symbol accessibility
	so if we reference a type in an external module, to generate the correct haxe path we must know that external symbol's access path
**/
@:access(ConverterContext)
class SymbolAccessMap {

	final tc: TypeChecker;
	final symbolAccessMap = new Map<Int, Array<SymbolAccess>>();

	public function new(entryPointModuleId: String, program: Program, moduleRootSourceFiles: Array<SourceFile>) {
		// this.program = ctx.program;
		this.tc = program.getTypeChecker();

		for (moduleSourceFile in moduleRootSourceFiles) {
			program.walkReferencedSourceFiles(moduleSourceFile, (sourceFile) -> {
				var sourceFileSymbol = tc.getSymbolAtLocation(sourceFile);

				var sourceFileAccess: SymbolAccess = if (sourceFileSymbol != null) {
					var moduleName = sourceFile.moduleName;
					if (moduleName == null) {
						Log.error('Internal error: SourceFile.moduleName was null, this should have been set when ConverterContext initialized', sourceFile);
					}
					ExportModule(moduleName, sourceFileSymbol, []);
				} else {
					Global([]);
				}

				// Log.log('Building symbol access map for source file, module <b>${moduleSourceFile.moduleName}</>, scope <yellow,b>${sourceFileAccess.toString()}</>', sourceFile);
				for (symbol in program.getExposedSymbolsOfSourceFile(sourceFile)) {
					TsSymbolTools.walkDeclarationSymbols(symbol, tc, (symbol, accessChain) -> {
						var currentAccess = sourceFileAccess;
						for (s in accessChain) {
							currentAccess = symbolAccessAppendSymbol(currentAccess, s);
						}
						setAccess(symbol, currentAccess);
					});
				}
			});
		}
	}

	public function getAccess(symbol: Symbol): Array<SymbolAccess> {
		var accessArray = symbolAccessMap.get(symbol.getId());
		return accessArray != null && accessArray.length > 0 ? accessArray : [Inaccessible];
	}

	function setAccess(symbol: Symbol, access: SymbolAccess) {
		var accessArray = symbolAccessMap.get(symbol.getId());
		if (accessArray == null) {
			accessArray = [];
			symbolAccessMap.set(symbol.getId(), accessArray);
		}

		var shouldAdd = switch access {
			case AmbientModule(_), ExportModule(_):
				// only worth adding an ambient module if there isn't already an module path
				accessArray.filter(a -> a.match(AmbientModule(_) | ExportModule(_))).length == 0;
			case Global(_):
				// we can have a global and modular access, but we don't want more than global access
				accessArray.filter(a -> a.match(Global(_))).length == 0;
			case Inaccessible:
				// no need to add Inaccessible, symbols with no values in symbolAccessMap are considered Inaccessible
				false;
		}

		if (shouldAdd) {
			accessArray.push(access);
		}
	}

	function symbolAccessAppendSymbol(access: SymbolAccess, symbol: Symbol): SymbolAccess {
		switch symbol.escapedName {
			case InternalSymbolName.ExportEquals:
				Log.error('Internal error: `export=` symbol should not appear in a symbol access chain (${access.toString()})', symbol);
		}

		var symbolChain = access.extractSymbolChain();
		// check if an existing symbol aliases to this symbol
		for (i in 0...symbolChain.length) {
			var existingSymbol = symbolChain[i];
			// matched with a symbol already in the path
			if (existingSymbol.flags & SymbolFlags.Alias != 0 && tc.getAliasedSymbol(existingSymbol) == symbol) {
				// return with trimmed symbol chain
				return switch access {
					case AmbientModule(m, r, s): AmbientModule(m, r, s.slice(0, i + 1));
					case ExportModule(m, r, s): ExportModule(m, r, s.slice(0, i + 1));
					case Global(s): Global(s.slice(0, i + 1));
					case Inaccessible: Inaccessible;
				}
			}
		}

		if (TsSymbolTools.isSourceFileSymbol(symbol)) {
			return switch access {
				case ExportModule(moduleName, sourceFileSymbol, _):
					if (symbol != sourceFileSymbol) {
						Log.error('Cannot change symbol access module from <b>ExportModule($moduleName, ${sourceFileSymbol.name})</> to ExportModule', symbol);
					}
					// clear identifier path because the root has been replaced
					ExportModule(moduleName, sourceFileSymbol, []);
				case AmbientModule(path, _):
					Log.error('Cannot change symbol access from <b>AmbientModule($path)</> to ExportModule', symbol);
					access;
				case Global(_):
					Log.error('Cannot change symbol access from global to module', symbol);
					access;
				case Inaccessible:
					// making accessible via the sourceFile
					ExportModule(symbol.name, symbol, []);
			}
		} else if (TsSymbolTools.isExternalModuleSymbol(symbol)) {
			return switch access {
				case ExportModule(rootModuleName, rootSourceFileSymbol, _):
					Log.error('Cannot change symbol access from <b>ExportModule($rootModuleName, ${rootSourceFileSymbol.name})</> to <b>AmbientModule("${symbol.name}")</>', symbol);
					access;
				case AmbientModule(_):
					// replace ambient module with a new one (we assume nested ambient modules is not possible)
					Log.warn('Nested ambient modules should be impossible. This might indicate an internal error', symbol);
					AmbientModule(symbol.name, symbol, []);
				case Global(_):
					// change from global access to ambient module access
					AmbientModule(symbol.name, symbol, []);
				case Inaccessible:
					// make accessible via the ambient module
					AmbientModule(symbol.name, symbol, []);
			}
		} else {
			// handle special symbols
			if (symbol.flags & SymbolFlags.Alias != 0) {
				var aliasedSymbol = tc.getAliasedSymbol(symbol);

				// check if this symbol aliases to a sourceFileSymbol
				if (TsSymbolTools.isSourceFileSymbol(aliasedSymbol)) {
					return symbolAccessAppendSymbol(access, aliasedSymbol);
				}
			}

			// check if this symbol is globally available, in which case, set root to Global
			// otherwise add an identifier to the chain
			var symbolParent =  TsSymbolTools.getSymbolParent(symbol);
			return if (symbolParent != null && symbolParent.escapedName == InternalSymbolName.Global) {
				Global([]);
			} else {
				// append to symbol chain
				return switch access {
					case AmbientModule(m, r, s): AmbientModule(m, r, s.concat([symbol]));
					case ExportModule(m, r, s): ExportModule(m, r, s.concat([symbol]));
					case Global(s): Global(s.concat([symbol]));
					case Inaccessible: Inaccessible;
				}
			}
		}
	}
	
}