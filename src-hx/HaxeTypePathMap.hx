import haxe.io.Path;
import typescript.ts.Program;
import typescript.ts.Symbol;
import typescript.ts.SymbolFlags;
import typescript.ts.TypeChecker;

using Lambda;
using tool.HaxeTools;
using tool.SymbolAccessTools;
using tool.TsProgramTools;
using tool.TsSymbolTools;

/**
	The idea here is to generate a haxe type-path for all symbols upfront (including external modules and build-in lib symbols).
	Because TypeScript type names are case-sensitive and haxe module _files_ need to be case-insensitive we can end up with multiple symbols mapping to a single module name.
	To Resolve this, we find name overlaps and rename modules by appending `_`
**/
class HaxeTypePathMap {

	final entryPointModuleId: String;
	final program: Program;
	final symbolAccessMap: SymbolAccessMap;
	final tc: TypeChecker;
	final log: Log;
	// the same symbol may have multiple type paths if it has multiple SymbolAccess
	final symbolTypePathMap: Map<Int, Array<InternalModule>>;

	// if a symbol has these flags, it requires a type-path in haxe
	static final SymbolRequiresTypePath = SymbolFlags.Type | SymbolFlags.ValueModule;

	public function new(entryPointModuleId: String, program: Program, symbolAccessMap: SymbolAccessMap, log: Log) {
		this.entryPointModuleId = entryPointModuleId;
		this.program = program;
		this.symbolAccessMap = symbolAccessMap;
		this.tc = program.getTypeChecker();
		this.log = log;
		symbolTypePathMap = buildHaxeTypePathMap();
	}

	/**
		If a symbol has multiple type paths, `accessContext` is used to preference the access of the reference
		For example, if a symbol has both a global and modular access and we reference it from a module, we want to prefer the module version

		The `isExistingStdLibType` flag means this is a reference to an already existing type in the haxe standard library and therefore it doesn't need converting
	**/
	public function getTypePath(symbol: Symbol, accessContext: SymbolAccess): TypePath {
		var modules = symbolTypePathMap.get(symbol.getId());

		if (modules != null) {
			// find one with a matching access context if possible
			var matchingModule = modules.find(m -> m.access.getIndex() == accessContext.getIndex());
			if (matchingModule == null) {
				matchingModule = modules.find(m -> !m.access.match(Inaccessible));
			}
			if (matchingModule == null) {
				matchingModule = modules[0];
			}
			if (matchingModule != null) {
				return matchingModule;
			} else {
				// the access supplied to this method is not one the same accesses used to generate the type-path map
				log.warn('Internal error: Could not find a type path for symbol with the supplied access context <b>${accessContext.toString()}</>', symbol);
			}
		} else {
			// failed to find a matching pre-generated module
			// this indicates we didn't find all symbols when building the map
			log.warn('Internal error: No type paths were generated for this symbol', symbol);
		}

		// reaching this point is considered an error because type-paths should have been pre-generated for _all_ appropriate symbols
		if (symbol.flags & SymbolRequiresTypePath == 0) {
			log.warn('Internal error: unexpected symbol passed into `getTypePath()`', symbol);
		}

		// we can generate a type-path on demand, but we won't have name deduplication
		return generateTypePath(symbol, accessContext);
	}

	function buildHaxeTypePathMap() {
		var packageMap = new Map<String, Array<InternalModule>>();

		function getModules(pack: Array<String>): Array<InternalModule> {
			var packageKey = pack.join('/');
			var modules = packageMap.get(packageKey);
			if (modules == null) {
				modules = [];
				packageMap.set(packageKey, modules);
			}
			return modules;
		}

		// find all declaration symbols in the program (including inaccessible ones) and add to package map as InternalModules
		for (topLevelSymbol in program.getTopLevelDeclarationSymbols()) {
			TsSymbolTools.walkDeclarationSymbols(topLevelSymbol, tc, (symbol, _) -> {
				if (symbol.flags & SymbolRequiresTypePath != 0 ) {
					for (access in symbolAccessMap.getAccess(symbol)) {
						var typePath = generateTypePath(symbol, access);
						var modules = getModules(typePath.pack);

						if (modules.find(m -> m.symbol == symbol) == null) {
							modules.push({
								name: typePath.name,
								pack: typePath.pack,
								isExistingStdLibType: typePath.isExistingStdLibType,
								symbol: symbol,
								access: access,
								renameable: true,
							});
						}
					}
				}
				// for globally declared _values_, we use a module called Global
				if (symbol.flags & (SymbolFlags.Variable | SymbolFlags.Function) != 0) {
					for (access in symbolAccessMap.getAccess(symbol)) {
						switch access {
							case Global([_]):
								var typePath = generateTypePath(symbol, access);
								var modules = getModules(typePath.pack);

								if (modules.find(m -> m.name == 'Global' && m.renameable == false) == null) {
									modules.push({
										name: 'Global',
										pack: typePath.pack,
										isExistingStdLibType: false,
										symbol: null,
										access: Global([]),
										renameable: false,
									});
								}
							default:
						}
					}
				}
			});
		}
		
		// resolve module name overlaps, for example "url", Url and URL all map to haxe module url.hx
		// resolve iteratively in case an initial rename causes a further collision 
		for (_ => modules in packageMap) {
			while(true) {
				// map of names to modules, if one name maps to multiple modules, we have a name collision
				var degenerateNameMap = new Map<String, Array<InternalModule>>();

				for (module in modules) {
					var lowercaseName = module.name.toLowerCase();
					var matches = degenerateNameMap.get(lowercaseName);
					if (matches == null) {
						matches = [];
						degenerateNameMap.set(lowercaseName, matches);
					}
					matches.push(module);
				}

				var hasNameOverlap = false;
				for (degenerateName => matches in degenerateNameMap) {
					if (matches.length > 1) {
						hasNameOverlap = true;

						// sort the matches to find the best one to rename (using ds.ArraySort for stability)
						// the symbol we'd prefer to rename should be at 0
						haxe.ds.ArraySort.sort(matches, (a, b) -> {
							var renameabilityA = renameability(a);
							var renameabilityB = renameability(b);
							if (renameabilityA > renameabilityB) {
								return -1;
							} else if (renameabilityA < renameabilityB) {
								return 1;
							} else {
								// if everything else is equal, use ascii sort for some stable difference
								return a.symbol.name > b.symbol.name ? -1 : 1;
							}
						});

						var moduleToRename = matches[0];
						moduleToRename.name = moduleToRename.name + '_';

						log.log('Resolved name overlap for <b>${matches[0].pack.concat([degenerateName]).join('/')}.hx</>: ${matches.map(m -> m.name).join(', ')}');
					}
				}

				if (!hasNameOverlap) break;
			}
		}

		// with duplicate names resolved, create a symbol -> [internal module] map for faster lookup

		var typePathMap = new Map<Int, Array<InternalModule>>();
		for (_ => modules in packageMap) {
			for (module in modules) {
				if (module.symbol == null) continue; // i.e. special `Global.hx` module
				var array = typePathMap.get(module.symbol.getId());
				if (array == null) {
					array = [];
					typePathMap.set(module.symbol.getId(), array);
				}
				array.push(module);
			} 
		}

		return typePathMap;
	}

	function generateTypePath(symbol: Symbol, access: SymbolAccess) {
		// if the symbol is declared (at least once) in a built-in library, js.html or js.lib
		var defaultLibName: Null<String> = null;
		for (declaration in symbol.getDeclarationsArray()) {
			var sourceFile = declaration.getSourceFile();
			if (sourceFile.hasNoDefaultLib) {
				defaultLibName = Path.withoutDirectory(sourceFile.fileName);
				break;
			}
		}

		// if the symbol derives from a built-in, prefix js.lib or js.html
		// otherwise prefix the module name (if it's a path, add a pack for each directory)
		var pack = if (defaultLibName != null) {
			switch defaultLibName.toLowerCase() {
				case 'lib.dom.d.ts': ['js', 'html'];
				default: ['js', 'lib'];
			}
		} else {
			[];
			//TsProgramTools.isDirectPathReferenceModule(entryPointModuleId) ? [] : splitModulePath(entryPointModuleId);
		}

		// we prepend the module path to avoid collisions if the symbol is exported from multiple modules
		// Babylonjs's type definition are a big issue for this and many of the module paths do not actually exist in babylon.js at runtime
		var identifierChain = access.getIdentifierChain();
		switch access {
			case AmbientModule(path, _), ExportModule(path, _):
				var pathPack = splitModulePath(path);
				// if the first part of the path is the same as the module id, don't add to avoid duplicates (like babylonjs.babylonjs.cameras)
				// if (pathPack[0].toSafePackageName() == pack[0].toSafePackageName()) {
				// 	pathPack.shift();
				// }
				pack = pack.concat(pathPack).concat(identifierChain);
				pack.pop(); // remove symbol ident; only want parents
			case Global(_):
				// only prefix global package if it's not a built-in
				pack = pack.concat((defaultLibName != null) ? [] : ['global']).concat(identifierChain);
				pack.pop(); // remove symbol ident; only want parents
			case Inaccessible:
				pack = pack.concat(
					symbol.getSymbolParents()
					.filter(s -> !~/^__\w/.match(s.name)) // skip special names (like '__global')
					.filter(s -> !s.isSourceFileSymbol())
					.map(s -> s.name)
				);
		}

		// make pack a safe package path
		pack = pack.map(s -> s.toSafePackageName());

		/**
			When generating a haxe module name for a symbol, rather than using the symbol's name, we use the name used to _access_ the symbol
			This may be different from the symbol name itself. For example, say we have a module which uses `export =`
			```typescript
			declare module "lib/fs" {

				class internal {
					// ...	
				}

				export = internal;

			}
			```

			References to the class `internal` should be exposed as references to `"lib/fs"`, and `internal` should not appear in the generated haxe
		**/
		var identifierChain = access.getIdentifierChain();
		var typeIdentifier: String = switch access {
			case AmbientModule(path, _), ExportModule(path, _):
				var lastIdentifier = splitModulePath(path).concat(identifierChain).pop();
				(lastIdentifier != null ? lastIdentifier : symbol.escapedName);
			case Global(_):
				var lastIdentifier = identifierChain.pop();
				(lastIdentifier != null ? lastIdentifier : symbol.escapedName);
			case Inaccessible:
				symbol.escapedName;

		}
		var name = typeIdentifier.toSafeTypeName();

		// handle short aliases
		return switch [pack, name] {
			case [['js', 'lib'], 'Array']: {
				name: 'Array',
				pack: [],
				isExistingStdLibType: true,
			}
			default: {
				name: name,
				pack: pack,
				isExistingStdLibType: false,
			}
		}
	}




	/**
		Given a path, return an array of haxe packages
		`./path/to/file.js` -> `[path,to,file_js]`
	**/
	function splitModulePath(path: String) {
		return Path.normalize(path)
			.split('/')
			.filter(s -> s != '');
	}

	/**
		Generate a renameability-score for a given module; for example, we'd prefer to rename inaccessible symbols
	**/
	inline function renameability(m: InternalModule) {
		return 
			m.renameable ? 1 : 0                                     << 5 | // prefer renameable, with highest priority
			(m.access.match(Inaccessible) ? 1 : 0)                   << 4 | // prefer inaccessible
			(m.symbol.flags & SymbolFlags.ValueModule == 0 ? 1 : 0)  << 3 | // prefer **not** ValueModule
			(m.symbol.flags & SymbolFlags.Class == 0 ? 1 : 0)        << 2 | // prefer **not** class
			(m.symbol.flags & SymbolFlags.Enum == 0 ? 1 : 0)         << 1 | // prefer **not** enum
			(m.symbol.flags & SymbolFlags.TypeAlias == 0 ? 1 : 0)    << 0   // prefer **not** TypeAlias with lowest priority
		;
	}

}

typedef TypePath = {
	name: String,
	pack: Array<String>,
	isExistingStdLibType: Bool,
}

/**
	Used when building the type-path map
**/
typedef InternalModule = TypePath & {
	symbol: Symbol,
	access: SymbolAccess,
	renameable: Bool,
}