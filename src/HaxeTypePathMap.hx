import typemap.TypeMap;
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

	final inputParentModuleName: String;
	final program: Program;
	final symbolAccessMap: SymbolAccessMap;
	final tc: TypeChecker;
	// the same symbol may have multiple type paths if it has multiple SymbolAccess
	final symbolTypePathMap: Map<Int, Array<InternalModule>>;
	final stdLibMap: Null<TypeMap>;

	public function new(inputParentModuleName: String, program: Program, symbolAccessMap: SymbolAccessMap, stdLibMap: Null<TypeMap>) {
		this.inputParentModuleName = inputParentModuleName;
		this.program = program;
		this.symbolAccessMap = symbolAccessMap;
		this.stdLibMap = stdLibMap;
		this.tc = program.getTypeChecker();
		symbolTypePathMap = buildHaxeTypePathMap();
	}

	/**
		If a symbol has multiple type paths, `accessContext` is used to preference the access of the reference.
		For example, if a symbol has both a global and modular access and we reference it from a module, we want to prefer the module version.

		Set `preferInterfaceStructure` to true to return the interface-structure version of a symbol if one exists.

		The `isExistingStdLibType` flag means this is a reference to an already existing type in the haxe standard library and therefore it doesn't need converting
	**/
	public function getTypePath(symbol: Symbol, accessContext: SymbolAccess, preferInterfaceStructure: Bool): TypePath {
		if (symbol.flags & SymbolFlags.Alias != 0) {
			symbol = tc.getAliasedSymbol(symbol);
		}

		var modules = symbolTypePathMap.get(symbol.getId());

		if (modules != null) {
			// filter modules for just those with, or without `isInterfaceStructure` (depending on `preferInterfaceStructure`)
			var interfaceStructureFilteredModules = modules.filter(m -> m.isInterfaceStructure == preferInterfaceStructure);
			// if we don't have any, that's ok, but if we do, we should select from those
			if (interfaceStructureFilteredModules.length > 0) {
				modules = interfaceStructureFilteredModules;
			}
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
				Log.warn('Internal error: Could not find a type path for symbol with the supplied access context <b>${accessContext.toString()}</>', symbol);
			}
		} else {
			// failed to find a matching pre-generated module
			// this indicates we didn't find all symbols when building the map
			Log.warn('Internal error: No type paths were generated for this symbol', symbol);
		}

		// reaching this point is considered an error because type-paths should have been pre-generated for _all_ appropriate symbols
		if (!ConverterContext.isHaxeModuleSource(tc, symbol, accessContext)) {
			Log.warn('Internal error: unexpected symbol passed into `getTypePath()`', symbol);
		}

		debug();

		// we can generate a type-path on demand, but we won't have name deduplication, so it might be wrong
		return generateTypePath(symbol, accessContext, preferInterfaceStructure);
	}

	public function getGlobalModuleTypePath(symbol: Symbol, access: SymbolAccess) {
		var typePath = generateTypePath(symbol, access, false);
		return {
			name: if (symbol.isBuiltIn()) {
				'Global';
			} else {
				// we don't want different global modules overriding each other, so prefix module name
				var declaringModuleName = getDeclaringModuleName(symbol);
				var moduleName = declaringModuleName.normalizeModuleName().split('/').pop();
				'${moduleName.toSafeTypeName()}Global';
			},
			pack: typePath.pack,
		}
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
			TsSymbolTools.walkDeclarationSymbols(tc, topLevelSymbol, (symbol, _) -> {
				for (access in symbolAccessMap.getAccess(symbol)) {
					if (ConverterContext.isHaxeModuleSource(tc, symbol, access)) {
						// fundamental haxe implementation
						var typePath = generateTypePath(symbol, access, false);
						var modules = getModules(typePath.pack);
						// Log.log('Generating type path for <yellow>${access.toString()}</> <b>${symbol.name} (${symbol.getId()})</>: ${typePath.pack} ${typePath.name}', symbol);

						if (modules.find(m -> m.symbol == symbol && m.isInterfaceStructure == false) == null) {
							modules.push({
								name: typePath.name,
								pack: typePath.pack,
								moduleName: typePath.moduleName,
								isExistingStdLibType: typePath.isExistingStdLibType,
								symbol: symbol,
								access: access,
								renameable: true,
								isInterfaceStructure: false,
							});
						}

						// additional interface-structure implementation
						if (ConverterContext.requiresAdditionalStructureType(tc, symbol)) {
							// fundamental haxe implementation
							var typePath = generateTypePath(symbol, access, true);
							var modules = getModules(typePath.pack);
							// Log.log('Generating type path for <yellow>${access.toString()}</> <b>${symbol.name} (${symbol.getId()})</>: ${typePath.pack} ${typePath.name}', symbol);

							if (modules.find(m -> m.symbol == symbol && m.isInterfaceStructure == true) == null) {
								modules.push({
									name: typePath.name,
									pack: typePath.pack,
									moduleName: typePath.moduleName,
									isExistingStdLibType: typePath.isExistingStdLibType,
									symbol: symbol,
									access: access,
									renameable: true,
									isInterfaceStructure: true,
								});
							}
						}
					}

					// for globally declared _values_, we use a module called Global
					if (ConverterContext.isGlobalField(tc, symbol, access)) {
						var typePath = getGlobalModuleTypePath(symbol, access);
						var modules = getModules(typePath.pack);

						if (modules.find(m -> m.name == typePath.name && m.renameable == false) == null) {
							modules.push({
								name: typePath.name,
								pack: typePath.pack,
								moduleName: typePath.name,
								isExistingStdLibType: false,
								symbol: null,
								access: Global([]),
								renameable: false,
								isInterfaceStructure: false,
							});
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
						var alsoRenameModule = moduleToRename.name == moduleToRename.moduleName;
						moduleToRename.name = moduleToRename.name + '_';
						if (alsoRenameModule) {
							moduleToRename.moduleName = moduleToRename.name;
						}

						Log.log('Resolved name overlap for <b>${matches[0].pack.concat([degenerateName]).join('/')}.hx</>: ${matches.map(m -> m.name).join(', ')}');
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

	function generateTypePath(symbol: Symbol, access: SymbolAccess, asInterfaceStructure: Bool): TypePath {
		var isBuiltIn = symbol.isBuiltIn();
		var clashesWithBuiltIn = false;
		// handle built-ins and types available in the haxe standard library
		// currently this will ignore any extensions to built-in types applied by a library
		// to convert those too, replace `isBuiltIn` with `defaultLibOnlyDeclarations`
		if (isBuiltIn && !asInterfaceStructure) {
			final specialTypeMap = [
				// we want to avoid generating the following types into ts.lib.* 
				// preferring to map them to haxe types instead
				'Array' => {name: 'Array', moduleName: 'Array', pack: []},
				'ReadonlyArray' => {name: 'ReadOnlyArray', moduleName: 'ReadOnlyArray', pack: ['haxe', 'ds']},
				'String' => {name: 'String', moduleName: 'String', pack: []},
				'Symbol' => {name: 'Symbol', moduleName: 'Symbol', pack: ['js', 'lib']},
				'Iterable' => {name: 'Iterable', moduleName: 'Iterable', pack: []}, // this is a bit questionable; need to fully review native js iteration
				'Function' => {name: 'Function', moduleName: 'Constraints', pack: ['haxe']}, // this is a bit questionable; need to fully review native js iteration
				// map `object` aka `js.lib.Object` to `Dynamic`
				// maybe in the future we can remove this if `js.lib.Object` could unify with other types
				'Object' => {name: 'Dynamic', moduleName: 'Dynamic', pack: []},
			];
			switch access {
				// match special-case built-ins
				case Global([{name: name}]) if (specialTypeMap.exists(name)):
					var tp = specialTypeMap.get(name);
					return {
						name: tp.name,
						moduleName: tp.moduleName,
						pack: tp.pack,
						isExistingStdLibType: true,
					}
				case Global(_):
					if (stdLibMap != null) {
						var nativeAccessPath = access.getIdentifierChain().join('.');
						var stdLibType = stdLibMap.js.get(nativeAccessPath);
						
						if (js.Syntax.typeof(stdLibType) == 'object') { // can sometimes be function if `nativeAccessPath` is something like 'toString'
							// check type-parameters match and generate externs for this built-in if they don't
							var tsTypeParamDeclarations = symbol.getDeclarationTypeParameters();
							if (stdLibType.typeParameters.length == tsTypeParamDeclarations.length) {
								return {
									name: stdLibType.name,
									moduleName: stdLibType.moduleName,
									pack: stdLibType.pack,
									isExistingStdLibType: true,
								}
							} else {
								Log.warn('Type parameter mismatch between haxe standard lib type (<b>${stdLibType.typeParameters.length}</>) and ts default type (<b>${tsTypeParamDeclarations.length}</>). Generating replacement.', symbol);	
								clashesWithBuiltIn = true;
							}
						} else {
							// Log.warn('Default lib type not found in the haxe standard library (externs will be generated for this type)', symbol);
						}
					}
				default:
					// Log.warn('Default lib types are always expected to be global', symbol);
					// @! do a lookup in the haxe standard library
			}
		}

		function hasDeclarationInLib(symbol: Symbol, filename: String) {
			for (declaration in symbol.getDeclarationsArray()) {
				var sourceFile = declaration.getSourceFile();
				if (sourceFile.hasNoDefaultLib && Path.withoutDirectory(sourceFile.fileName).toLowerCase() == filename) {
					return true;
				}
			}
			return false;
		}

		// if the symbol derives from a built-in, prefix js.lib or js.html
		// otherwise prefix the module name (if it's a path, add a pack for each directory)
		var pack = if (isBuiltIn) {
			if (hasDeclarationInLib(symbol, 'lib.dom.d.ts')) ['js', 'html']
			else ['js', 'lib'];
		} else {
			[];
		}

		// we prepend the module path to avoid collisions if the symbol is exported from multiple modules
		// Babylonjs's type definition are a big issue for this and many of the module paths do not actually exist in babylon.js at runtime
		var identifierChain = access.getIdentifierChain();
		switch access {
			case AmbientModule(modulePath, _):
				// prefix entry-point module for ambients
				var moduleNamePack = splitModulePath(getDeclaringModuleName(symbol));
				var modulePack = splitModulePath(modulePath);
				// a common convention is to prefix the modulePath with the module name, for example
				// declare module "babylonjs/assets" {}
				// if the module name is also babylonjs, then the full path will be babylonjs.babylonjs.assets
				// we can resolve the duplication by checking that the last part of the entryPointPack is the same as the first part of the module pack
				if (moduleNamePack[moduleNamePack.length - 1].toSafePackageName() == modulePack[0].toSafePackageName()) {
					// remove the first element from modulePack
					modulePack.shift();
				}
				pack = pack.concat(moduleNamePack).concat(modulePack).concat(identifierChain);
				pack.pop(); // remove symbol ident; only want parents
			case ExportModule(moduleName, _):
				pack = pack.concat(splitModulePath(moduleName)).concat(identifierChain);
				pack.pop(); // remove symbol ident; only want parents
			case Global(_):
				// only prefix global package if it's not a built-in
				// global types are _not_ prefixed with the module name, this might change in the future
				pack = pack.concat(isBuiltIn ? [] : ['global']).concat(identifierChain);
				pack.pop(); // remove symbol ident; only want parents
			case Inaccessible:
				var moduleNamePack = splitModulePath(getDeclaringModuleName(symbol));
				pack = pack.concat(moduleNamePack).concat(
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
		var typeIdentifier: String = switch access {
			case AmbientModule(path, _, symbolChain), ExportModule(path, _, symbolChain):
				var lastSymbol = symbolChain[symbolChain.length - 1];
				if (lastSymbol != null) {
					if (lastSymbol.escapedName.isInternalSymbolName()) {
						symbol.name;
					} else {
						lastSymbol.name;
					}
				} else {
					splitModulePath(path).pop();
				}
			case Global(symbolChain):
				var lastSymbol = symbolChain[symbolChain.length - 1];
				if (lastSymbol != null) {
					if (lastSymbol.escapedName.isInternalSymbolName()) {
						symbol.name;
					} else {
						lastSymbol.name;
					}
				} else {
					symbol.name;
				}
			case Inaccessible:
				symbol.name;
		}
		var name = typeIdentifier.toSafeTypeName();
		// prefix I if interface-structure version of a type
		name = asInterfaceStructure ? 'I' + name : name;

		// rename if name that conflict with std.* types
		// @! we should generate this list automatically in the future
		var disallowedNames = stdLibMap != null ? stdLibMap.topLevelNames : defaultDisallowedNames;
		// add '_' to avoid disallowed names
		if (disallowedNames.indexOf(name) != -1 || clashesWithBuiltIn) {
			name = name + '_';
		}

		// handle short aliases
		return {
			moduleName: name,
			name: name,
			pack: pack,
			isExistingStdLibType: false,
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
	
	function getDeclaringModuleName(symbol: Symbol) {
		// if this symbol is declared in multiple modules, we need to pick a single module for the type path
		var declaredInModules = symbol.getParentModuleNames();
		return if (declaredInModules.has(inputParentModuleName) || declaredInModules.length == 0) {
			inputParentModuleName;
		} else {
			inline function moduleNameScore(name: String) {
				return
					(std.StringTools.startsWith(name, '/') ? 1 : 0)  << 2 | // least preferred
					(std.StringTools.startsWith(name, './') ? 1 : 0) << 1;
			}
			declaredInModules.sort((a, b) -> moduleNameScore(a) - moduleNameScore(b));
			declaredInModules[0];
		}
	}

	/**
		Generate a renameability-score for a given module; for example, we'd prefer to rename inaccessible symbols
	**/
	inline function renameability(m: InternalModule) {
		return 
			(m.renameable ? 1 : 0)                                   << 7 | // prefer renameable, with highest priority
			(!m.isExistingStdLibType ? 1 : 0)                        << 6 | // prefer non-existing std lib types
			(m.access.match(Inaccessible) ? 1 : 0)                   << 5 | // prefer inaccessible
			(m.symbol.flags & SymbolFlags.Class == 0 ? 1 : 0)        << 4 | // prefer **not** class
			(m.symbol.flags & SymbolFlags.Enum == 0 ? 1 : 0)         << 3 | // prefer **not** enum
			(m.symbol.flags & SymbolFlags.Interface == 0 ? 1 : 0)    << 2 | // prefer **not** interface
			(m.symbol.flags & SymbolFlags.TypeAlias == 0 ? 1 : 0)    << 1 | // prefer **not** TypeAlias
			(m.symbol.flags & SymbolFlags.ValueModule == 0 ? 1 : 0)  << 0   // prefer **not** ValueModule with lowest priority
		;
	}

	// normally provided by stdLibMap if available
	var defaultDisallowedNames = [
		"Any",
		"Array",
		"Class",
		"Date",
		"DateTools",
		"EReg",
		"Enum",
		"EnumValue",
		"HxOverrides",
		"IntIterator",
		"Lambda",
		"List",
		"Map",
		"IMap",
		"Math",
		"Reflect",
		"String",
		"Std",
		"Void",
		"Float",
		"Int",
		"Null",
		"Bool",
		"Dynamic",
		"Iterator",
		"Iterable",
		"KeyValueIterator",
		"KeyValueIterable",
		"ArrayAccess",
		"StringBuf",
		"StringTools",
		"Sys",
		"ValueType",
		"Type",
		"UInt",
		"UnicodeString",
		"XmlType",
		"Xml"
	];

}

typedef TypePath = {
	name: String,
	pack: Array<String>,
	moduleName: String,
	isExistingStdLibType: Bool,
}

/**
	Used when building the type-path map
**/
typedef InternalModule = TypePath & {
	symbol: Symbol,
	access: SymbolAccess,
	renameable: Bool,
	isInterfaceStructure: Bool,
}