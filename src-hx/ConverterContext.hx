import haxe.ds.ReadOnlyArray;
import haxe.macro.Expr;
import tool.TsSyntaxTools;
import typescript.Ts;
import typescript.ts.CompilerHost;
import typescript.ts.CompilerOptions;
import typescript.ts.Program;
import typescript.ts.SourceFile;
import typescript.ts.Symbol;
import typescript.ts.SymbolFlags;
import typescript.ts.SyntaxKind;
import typescript.ts.TypeAliasDeclaration;
import typescript.ts.TypeChecker;
import typescript.ts.TypeNode;

using StringTools;
using tool.HaxeTools;
using tool.SymbolAccessTools;
using tool.TsProgramTools;
using tool.TsSymbolTools;

@:expose
@:nullSafety
class ConverterContext {

	public final entryPointModuleId: String;
	public final generatedModules = new Map<String, HaxeModule>();
	public final moduleDependencies: ReadOnlyArray<String>;

	public final log: Log;
	public final tc: TypeChecker;
	public final host: CompilerHost;
	public final program: Program;

	// symbol access map is filled during an initial pass over the program
	// the access path for key-symbols such as types are stored so we can retrieve them later when we have a type-reference
	public final symbolAccessMap: SymbolAccessMap;
	public final haxeTypePathMap: HaxeTypePathMap;

	/**
		Unique list of symbols to convert
		When a type is referenced during conversion, if it is inaccessible (and therefore not converted in the first pass), add it to this queue to be converted
	**/
	final declarationSymbolQueue = new OnceOnlySymbolQueue();

	public function new(moduleName: String, entryPointFilePath: String, compilerOptions: CompilerOptions, ?log_: Log) {
		// this will be used as the argument to require()
		this.log = log_ != null ? log_ : new Log();
		this.entryPointModuleId = inline normalizeModuleName(moduleName);
		
		log.log('<green>Converting module: <b>$entryPointModuleId</b>');

		this.host = Ts.createCompilerHost(compilerOptions);
		this.program = Ts.createProgram([entryPointFilePath], compilerOptions, host);
		this.tc = program.getTypeChecker();

		log.diagnostics(program.getAllDiagnostics());

		var entryPointSourceFile = program.getSourceFile(entryPointFilePath);

		if (entryPointSourceFile == null) {
			throw 'Failed to get entry-point source file';
		}

		var defaultLibSourceFiles = program.getSourceFiles().filter(s -> s.hasNoDefaultLib);

		// list of the module entry points source files, for the currently module and its referenced modules
		var moduleRootSourceFiles: Array<SourceFile> = [entryPointSourceFile];

		// set `moduleName` on source files with a known module
		// `sourceFile.moduleName` is not populated after binding, so let's populate it to help aliasing
		entryPointSourceFile.moduleName = this.entryPointModuleId;
		var moduleReferences = program.resolveAllTypeReferenceDirectives(host);
		for (moduleReference in moduleReferences) {
			if (moduleReference.resolvedTypeReferenceDirective != null) {
				var resolvedFileName = moduleReference.resolvedTypeReferenceDirective.resolvedFileName;
				var packageInfo = moduleReference.resolvedTypeReferenceDirective.packageId;
				var moduleName = packageInfo != null ? packageInfo.name : null;
				var sourceFile = resolvedFileName != null ? program.getSourceFile(resolvedFileName) : null;
				if (sourceFile != null) {
					sourceFile.moduleName = moduleName != null ? inline normalizeModuleName(moduleName) : null;
					moduleRootSourceFiles.push(sourceFile);
				} else {
					log.error('Internal error: failed get source file for file <b>"$resolvedFileName"</> (module: <b>"$moduleName"</>)');
				}
			} else {
				log.error('Failed to find referenced module <b>${moduleReference.failedLookupLocations[0]}</b>');
			}
		}

		moduleDependencies = moduleRootSourceFiles.filter(s -> s != entryPointSourceFile).map(s -> inline getSourceFileModuleName(s));

		// populate symbol access map
		symbolAccessMap = new SymbolAccessMap(entryPointModuleId, program, defaultLibSourceFiles.concat(moduleRootSourceFiles), log);

		// generate a haxe type-path for all type or module-class (ValueModule) symbols in the program
		haxeTypePathMap = new HaxeTypePathMap(entryPointModuleId, program, symbolAccessMap, log);

		// convert symbols for just this module
		program.walkReferencedSourceFiles(entryPointSourceFile, (sourceFile) -> {
			for (symbol in program.getExportsOfSourceFile(sourceFile)) {
				TsSymbolTools.walkDeclarationSymbols(symbol, tc, (symbol, _) -> declarationSymbolQueue.tryEnqueue(symbol));
			}
		});

		// convert declaration symbols (types and module variables)
		// declarationSymbolQueue grows as types are referenced during conversion
		while (!declarationSymbolQueue.empty()) {
			var symbol: Symbol = cast declarationSymbolQueue.dequeue();

			// `Alias` here does not mean type-alias, instead it means export-alias (like `export {Type}`)
			// aliases are accounted for with SymbolAccess and don't need to handled here
			var handled = symbol.flags & SymbolFlags.Alias != 0;

			if (symbol.flags & (SymbolFlags.Type) != 0) {
				// Class | Interface | Enum | EnumMember | TypeLiteral | TypeParameter | TypeAlias
				handled = true;
				convertTypeSymbol(symbol);
			}

			if (symbol.flags & (SymbolFlags.Variable | SymbolFlags.Function) != 0) {
				// FunctionScopedVariable | BlockScopedVariable | Function
				handled = true;
			}

			if (symbol.flags & (SymbolFlags.ValueModule) != 0) {
				// @! generate a module class
			}

			if (symbol.flags & (SymbolFlags.Module) != 0) {
				// ValueModule | NamespaceModule
				handled = true;
			}

			if (!handled) {
				log.error('Unhandled symbol in declarationSymbol queue', symbol);
			}
		} 
	}

	function convertTypeSymbol(symbol: Symbol) {
		// Class | Interface | Enum | EnumMember | TypeLiteral | TypeParameter | TypeAlias
		// type symbols are mutually exclusive so we can return after converting the first match

		var pos = TsSymbolTools.getSymbolPosition(symbol);

		//@! need to handle
		// ValueModule + TypeAlias via abstract
		// ValueModule + Class via statics
		// ValueModule + Interface via statics
		// ValueModule + Enum via statics

		if (symbol.flags & (SymbolFlags.Class | SymbolFlags.Interface) != 0) {
			for (access in symbolAccessMap.getAccess(symbol)) {
				var typePath = haxeTypePathMap.getTypePath(symbol, access);
				var superClass = null; // @! todo
				var interfaces = []; // @! todo
				var typeParams = []; // @! todo
				var isInterface = symbol.flags & SymbolFlags.Interface != 0;

				var hxClass: HaxeModule = {
					pack: typePath.pack,
					name: typePath.name,
					fields: [],
					kind: TDClass(superClass, interfaces, isInterface, false),
					isExtern: true,
					params: typeParams,
					doc: getDoc(symbol),
					meta: isInterface ? [] : [access.toAccessMetadata()],
					pos: pos,
					subTypes: [],
					tsSymbol: symbol,
					tsSymbolAccess: access,
				}

				saveHaxeModule(hxClass, symbol, access);
			}
			return;
		}

		if (symbol.flags & SymbolFlags.Enum != 0) {
			for (access in symbolAccessMap.getAccess(symbol)) {
				// a ConstEnum does not exist at runtime
				var isCompileTimeEnum = symbol.flags & SymbolFlags.ConstEnum != 0;
				
				var hxEnumType = TsSymbolTools.getComplexTypeOfEnumSymbol(symbol, tc);
				
				var enumMembers = tc.getExportsOfModule(symbol).filter(s -> s.flags & SymbolFlags.EnumMember != 0);
				var hxEnumFields: Array<Field> = enumMembers.map(s -> {
					var safeName = HaxeTools.toSafeIdent(s.escapedName);
					var nameChanged = s.escapedName != safeName;
					return ({
						name: safeName,
						pos: TsSymbolTools.getSymbolPosition(s),
						kind: FVar(null, isCompileTimeEnum ? HaxeTools.primitiveValueToExpr(tc.getConstantValue(cast s.valueDeclaration)) : null),
						doc: getDoc(s),
						meta: nameChanged ? [{name: ':native', params: [s.escapedName.toStringExpr(pos)], pos: pos}] : [],
					}: Field);
				});

				var typePath = haxeTypePathMap.getTypePath(symbol, access);

				var hxEnumDef: HaxeModule = {
					pack: typePath.pack,
					name: typePath.name,
					kind: TDAbstract(hxEnumType, [hxEnumType], [hxEnumType]),
					isExtern: true,
					fields: hxEnumFields,
					doc: getDoc(symbol),
					meta: (isCompileTimeEnum ? [] : [access.toAccessMetadata()]).concat([{name: ':enum', pos: pos}]),
					pos: pos,
					subTypes: [],
					tsSymbol: symbol,
					tsSymbolAccess: access,
				}
				
				saveHaxeModule(hxEnumDef, symbol, access);
			}
			return;
		}

		if (symbol.flags & SymbolFlags.TypeAlias != 0) {
			for (access in symbolAccessMap.getAccess(symbol)) {
				var typeAliasDeclaration: Null<TypeAliasDeclaration> = cast symbol.getDeclarationsArray().filter(node -> node.kind == SyntaxKind.TypeAliasDeclaration)[0];
				if (typeAliasDeclaration != null) {
					// @! typeParameters?
					var hxAliasType: ComplexType = typeNodeToComplexType(typeAliasDeclaration.type, access); 

					var typePath = haxeTypePathMap.getTypePath(symbol, access);
					
					var hxTypeDef: HaxeModule = {
						pack: typePath.pack,
						name: typePath.name,
						fields: [],
						kind: TDAlias(hxAliasType),
						doc: getDoc(symbol),
						pos: pos,
						subTypes: [],
						tsSymbol: symbol,
						tsSymbolAccess: access,
					}

					saveHaxeModule(hxTypeDef, symbol, access);
				} else {
					log.error('TypeAlias symbol did not have a TypeAliasDeclaration', symbol);
				}
			}
			return;
		}

		log.error('Symbol not a handled <b>convertTypeSymbol()</>', symbol);
	}

	function saveHaxeModule(module: HaxeModule, symbol: Symbol, access: SymbolAccess) {
		/**
			A key that uniquely identifies a haxe module in a haxe project
			Lower case string to represent module file case-insensitive collisions
			`a.b.C` -> `a/b/c`
		**/
		function getHaxeModuleKey(pack: Array<String>, name: String) {
			return pack.concat([name]).map(s -> s.toLowerCase()).join('/');
		}
		
		var path = getHaxeModuleKey(module.pack, module.name);

		var existingModule = generatedModules.get(path);
		if (existingModule != null) {
			log.warn('<b>saveHaxeModule():</> Module <b>"$path"</> has already been generated once and will be overwritten');
			log.warn('\t Existing module <yellow,b>${existingModule.tsSymbolAccess.toString()}</>', existingModule.tsSymbol);
			log.warn('\t Overwriting module <yellow,b>${access.toString()}</>', symbol);
			log.warn('\t All access ' + symbolAccessMap.getAccess(symbol).map(s -> s.toString()));
		}

		if (generatedModules.exists(path)) {
			debug();
		}

		generatedModules.set(path, module);
	}

	function getDoc(symbol: Symbol) {
		return symbol.getDocumentationComment(tc).map(s -> s.text.trim()).join('\n\n');
	}

	/**
		`accessContext` is the symbol access path for the symbol that contains this type reference
		This is required because if we're in a Global access context, type references should prefer global access (and modular context should prefer modular access).
		For example, in node.js there's a type `EventEmitter` that has both global (`NodeJS.EventEmitter` and modular access `require("event").EventEmitter`)
		If `EventEmitter` is referenced by another globally accessible type, then this method should return the global haxe type, and same logic for modular
	**/
	function typeNodeToComplexType(node: TypeNode, accessContext: SymbolAccess): ComplexType {
		// @! todo: very WIP
		var type = tc.getTypeFromTypeNode(node);
		return HaxePrimitives.any;
		
		// if (type.symbol != null && type.flags & SymbolFlags.Type != 0) {
		// 	var packagePath = generateHaxePackagePath(type.symbol);
		// 	return TPath({
		// 		pack: packagePath,
		// 		name: generateHaxeTypeName(type.symbol)
		// 	});
		// } else {
		// 	log.error('Could not convert ts TypeNode to haxe ComplexType', node);
		// 	return HaxePrimitives.any;
		// }
	}

	function normalizeModuleName(moduleName: String) {
		// replace backslashes with forward slashes to normalize for windows paths
		moduleName.replace('\\', '/');
		var moduleNameParts = moduleName.split('/');
		// remove @types prefix
		if (moduleNameParts[0] == '@types' && moduleNameParts.length > 1) {
			moduleNameParts.shift();
		}
		return moduleNameParts.join('/');
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

class HaxePrimitives {
	static public final string: ComplexType = TPath({pack: [], name: 'String'});
	static public final float: ComplexType = TPath({pack: [], name: 'Float'});
	static public final int: ComplexType = TPath({pack: [], name: 'Int'});
	static public final any: ComplexType = TPath({pack: [], name: 'Any'});
	static public final void: ComplexType = TPath({pack: [], name: 'Void'});
}

typedef ConvertedTypeDefinition = TypeDefinition & {
	tsSymbol: Symbol,
	tsSymbolAccess: SymbolAccess,
}

typedef HaxeModule = ConvertedTypeDefinition & {
	subTypes: Array<ConvertedTypeDefinition>,
}

class OnceOnlySymbolQueue {

	final allItemsSeen = new Map<Int, Bool>();
	final currentQueue = new Array<Symbol>();

	public function new() {}

	/**
		Returns `true` if the item has not been seen before (and therefore added to the queue), and `false` if it has been seen before (and therefore ignored)
	**/
	public function tryEnqueue(item: Symbol): Bool {
		var id = item.getId();
		if (!allItemsSeen.exists(id)) {
			allItemsSeen.set(id, true);
			currentQueue.push(item);
			return true;
		}
		return false;
	}

	public function dequeue(): Null<Symbol> {
		return currentQueue.shift();
	}

	public function empty(): Bool {
		return currentQueue.length == 0;
	}

}

/**
	Notes
	-----

	**Symbols**
	In the typescript compiler, declarations are grouped into Symbols. A Symbol can have 3 kinds of declaration, as a Type, a Variable/Function and a Module.
	For example, the following declarations are grouped into one symbol with the name 'Example'
	```typescript
	declare const Example: string;    // Value named X

	declare type Example = number;  // Type named X

	declare namespace Example {     // Namespace named X  
				type Y = string;  
	}
	```
	See https://github.com/microsoft/TypeScript/blob/master/doc/spec.md#23-declarations

	**SymbolAccess**
	The reason we track symbol access rather than always using the sourceFile of the symbol's declaration in is because doing so can lead to runtime errors in some cases
	For example, the following typescript program fails at both runtime and compiletime:

	```typescript
	// import via module root
	import * as THREE from 'three';
	console.log(new THREE.Quaternion(1,2,3,4));
	// import via source file that the symbol is defined in
	import { Quaternion } from './node_modules/three/src/math/Quaternion';
	// ^ import { _Math } from './Math.js'; SyntaxError: Unexpected token {
	console.log(new Quaternion(1,2,3,4));
	```

	The failure is because THREE.Quaternion is accessed from the bundled es5 javascript, whereas the source file Quaternion.js. Moreover, if we have require('three') alongside require('three/src/math/quaternion') then we have two implementations of Quaternion

	On the other hand, it's possible that importing from the individual source files (rather than module) could lead to smaller bundled code because unused code isn't imported.
	I may add an option for this in the future.

	**SymbolFlags**
	https://github.com/microsoft/TypeScript/blob/0ae938b718bae3367bff26369adac1ecef56f212/src/compiler/types.ts#L4007

	enum SymbolFlags {
		None                    = 0,
		FunctionScopedVariable  = 1 << 0,   // Variable (var) or parameter
		BlockScopedVariable     = 1 << 1,   // A block-scoped variable (let or const)
		Property                = 1 << 2,   // Property or enum member
		EnumMember              = 1 << 3,   // Enum member
		Function                = 1 << 4,   // Function
		Class                   = 1 << 5,   // Class
		Interface               = 1 << 6,   // Interface
		ConstEnum               = 1 << 7,   // Const enum
		RegularEnum             = 1 << 8,   // Enum
		ValueModule             = 1 << 9,   // Instantiated module
		NamespaceModule         = 1 << 10,  // Uninstantiated module
		TypeLiteral             = 1 << 11,  // Type Literal or mapped type
		ObjectLiteral           = 1 << 12,  // Object Literal
		Method                  = 1 << 13,  // Method
		Constructor             = 1 << 14,  // Constructor
		GetAccessor             = 1 << 15,  // Get accessor
		SetAccessor             = 1 << 16,  // Set accessor
		Signature               = 1 << 17,  // Call, construct, or index signature
		TypeParameter           = 1 << 18,  // Type parameter
		TypeAlias               = 1 << 19,  // Type alias
		ExportValue             = 1 << 20,  // Exported value marker (see comment in declareModuleMember in binder)
		Alias                   = 1 << 21,  // An alias for another symbol (see comment in isAliasSymbolDeclaration in checker)
		Prototype               = 1 << 22,  // Prototype property (no source representation)
		ExportStar              = 1 << 23,  // Export * declaration
		Optional                = 1 << 24,  // Optional property
		Transient               = 1 << 25,  // Transient symbol (created during type check)
		Assignment              = 1 << 26,  // Assignment treated as declaration (eg `this.prop = 1`)
		ModuleExports           = 1 << 27,  // Symbol for CommonJS `module` of `module.exports`

		Enum = RegularEnum | ConstEnum,
		Variable = FunctionScopedVariable | BlockScopedVariable,
		Value = Variable | Property | EnumMember | ObjectLiteral | Function | Class | Enum | ValueModule | Method | GetAccessor | SetAccessor,
		Type = Class | Interface | Enum | EnumMember | TypeLiteral | TypeParameter | TypeAlias,
		Namespace = ValueModule | NamespaceModule | Enum,
		Module = ValueModule | NamespaceModule,
		Accessor = GetAccessor | SetAccessor,

		ModuleMember = Variable | Function | Class | Interface | Enum | Module | TypeAlias | Alias,

		ExportHasLocal = Function | Class | Enum | ValueModule,

		BlockScoped = BlockScopedVariable | Class | Enum,

		PropertyOrAccessor = Property | Accessor,

		ClassMember = Method | Accessor | Property,

		// @internal
		ExportSupportsDefaultModifier = Class | Function | Interface,

		// @internal
		ExportDoesNotSupportDefaultModifier = ~ExportSupportsDefaultModifier,

		// @internal
		// The set of things we consider semantically classifiable.  Used to speed up the LS during
		// classification.
		Classifiable = Class | Enum | TypeAlias | Interface | TypeParameter | Module | Alias,

		// @internal
		LateBindingContainer = Class | Interface | TypeLiteral | ObjectLiteral | Function,
	}

	**Alias Symbols**
	An 'alias symbol' is different from a TypeAlias and is created by one of the following declarations:
	```typescript
	import <symbol> = ...
	import <symbol> from ...
	import * as <symbol> from ...
	import { x as <symbol> } from ...
	export { x as <symbol> } from ...
	export * as ns <symbol> from ...
	export = <EntityNameExpression>
	export default <EntityNameExpression>
	module.exports = <EntityNameExpression>
	{<Identifier>}
	{name: <EntityNameExpression>}
	```
	
	For a discussion on the different types of exports and imports
	https://github.com/microsoft/TypeScript/issues/7185#issuecomment-421632656
**/