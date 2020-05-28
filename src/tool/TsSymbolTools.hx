package tool;

import typescript.ts.__String;
import typescript.ts.SyntaxKind;
import typescript.ts.TypeParameterDeclaration;
import typescript.ts.ExpressionWithTypeArguments;
import haxe.DynamicAccess;
import haxe.ds.ReadOnlyArray;
import typescript.Ts;
import typescript.ts.ClassDeclaration;
import typescript.ts.Declaration;
import typescript.ts.HeritageClause;
import typescript.ts.InterfaceDeclaration;
import typescript.ts.InternalSymbolName;
import typescript.ts.Signature;
import typescript.ts.Symbol;
import typescript.ts.SymbolFlags;
import typescript.ts.TypeChecker;

using Lambda;
using TsInternal;
using tool.HaxeTools;

typedef TsType = typescript.ts.Type;

@:nullSafety
class TsSymbolTools {

	public static function getId(symbol: Symbol) {
		return Std.int(Ts.getSymbolId(symbol));
	}

	/**
		Return `true` if symbol is a normal field: functions and variables, but excluding `Prototype`
		It also skips ES5Symbol fields like `[Symbol.iterator]`
	**/
	public static function isAccessibleField(symbol: Symbol) {
		var isKnownSymbol = std.StringTools.startsWith(symbol.escapedName, '__@'); // see typescript's utilities.ts
		final FieldSymbolFlags = SymbolFlags.Variable | SymbolFlags.Function | SymbolFlags.ClassMember;

		if (symbol.name == '__promisify__') {
			return false;
		}

		return !isKnownSymbol && symbol.flags & FieldSymbolFlags != 0;
	}
	
	/**
		Apparently the way to detect for an external module is to check for double quote at the start of the name
		https://github.com/microsoft/TypeScript/blob/5e9c43607f8732bc94374c95fddd8b1fd9881122/src/services/utilities.ts#L1657
	**/
	public static function isExternalModuleSymbol(symbol: Symbol): Bool {
		return (symbol.flags & SymbolFlags.Module != 0) &&
				symbol.name.charCodeAt(0) == '"'.code;
	}

	public static function isSourceFileSymbol(symbol: Symbol): Bool {
		return (symbol.flags & SymbolFlags.Module != 0) &&
				symbol.valueDeclaration != null &&
				Ts.isSourceFile(symbol.valueDeclaration);
	}

	/**
		A construct-type variable is a variable who's type has _construct_ signatures, for example
		```typescript
		const ExampleConstructor: {
			new(): Example;
			field: string;
		}
		```
		This is a special pattern in typescript and roughly maps to a class in haxe
		https://github.com/microsoft/TypeScript/blob/master/doc/spec.md#335-constructor-types
	**/
	public static function isConstructorTypeVariableSymbol(tc: TypeChecker, symbol: Symbol): Bool {
		return if (symbol.flags & SymbolFlags.Variable != 0 && symbol.valueDeclaration != null) {
			var varType = tc.getTypeOfSymbolAtLocation(symbol, symbol.valueDeclaration);
			TsTypeTools.isConstructorType(tc, varType);
		} else false;
	}

	public static function getSymbolRootParent(symbol: Symbol): Null<Symbol> {
		var rootParent: Null<Symbol> = null;
		var parentSymbol = getSymbolParent(symbol);
		while(parentSymbol != null) {
			rootParent = parentSymbol;
			parentSymbol = getSymbolParent(parentSymbol);
		}
		return rootParent;
	}

	public static function getSymbolParents(symbol: Symbol): Array<Symbol> {
		var parentChain = new Array<Symbol>();
		var currentSymbol: Null<Symbol> = symbol;
		while (currentSymbol != null) {
			currentSymbol = getSymbolParent(currentSymbol);
			if (currentSymbol != null) {
				parentChain.unshift(currentSymbol);
			}
		}
		return parentChain;
	}

	public static function getSymbolParent(symbol: Symbol): Null<Symbol> {
		return Reflect.field(symbol, 'parent');
	}

	/**
		An array of matched SymbolFlags
		If `compositeFlags` is true, SymbolFlags that are unions of other flags are included, for example:
			SymbolFlags Module = ValueModule | NamespaceModule
	**/
	public static function getFlagsInfo(symbol: Symbol, compositeFlags: Bool = false): Array<String> {
		var activeFlags = new Array<String>();

		var symbolFlagsEnum = getSymbolFlagsMap();
		for (key => value in symbolFlagsEnum) {
			if (!compositeFlags && !isPowerOfTwo(value)) continue;
			if (symbol.flags & value != 0) {
				activeFlags.push(key);
			}
		}

		return activeFlags;
	}

	public static function getPosition(symbol: Symbol): haxe.macro.Expr.Position {
		var node = if (symbol.valueDeclaration != null) {
			symbol.valueDeclaration;
		} else {
			getDeclarationsArray(symbol)[0];
		}

		return if (node != null) {
			file: node.getSourceFile().fileName,
			min: Std.int(node.getStart()),
			max: Std.int(node.getEnd()),
		} else {
			file: '<unknown location>',
			min: -1,
			max: -1,
		}
	}

	public static function getExports(symbol: Symbol): Array<Symbol> {
		var exports = [];
		if (symbol.exports != null) symbol.exports.forEach((s, _) -> exports.push(s));
		return exports;
	}

	public static function getMembers(symbol: Symbol): Array<Symbol> {
		var members = [];
		if (symbol.members != null) symbol.members.forEach((s, _) -> members.push(s));
		return members;
	}

	/**
		Return TsType of super class (`extends T`) if there is one
	**/
	public static function getClassExtendsType(tc: TypeChecker, symbol: Symbol): Null<TsType> {
		// determine super type (if class declaration)
		var classDeclaration: Null<ClassDeclaration> = symbol.valueDeclaration != null && Ts.isClassDeclaration(symbol.valueDeclaration) ? cast symbol.valueDeclaration : null;

		if (classDeclaration != null && classDeclaration.heritageClauses != null) {
			// classes can only extend one class in TypeScript
			var extendsClause = (cast classDeclaration.heritageClauses: Array<HeritageClause>).find(h -> h.token == ExtendsKeyword);
			if (extendsClause != null) {
				var superTypeNode = (cast extendsClause.types: Array<ExpressionWithTypeArguments>)[0];
				var superType = tc.getTypeFromTypeNode(superTypeNode);
				return superType;
			}
		}

		return null;
	}

	/**
		symbol.declarations may be null, this method always returns an array
	**/
	public static function getDeclarationsArray(symbol: Symbol): Array<Declaration> {
		return symbol.declarations != null ? symbol.declarations : [];
	}

	/**
		Walks key symbols that have the following flags:
			- Type
			- Alias
			- Variable
			- Function
			- Module

		It **does not** walk into types, or explore type information. For example, it will not walk class fields or the type in this declaration `const X: Type;`

		If a symbol has multiple matching flags, multiple callbacks will fire with the same symbol

		The input symbol will be walked

		`accessChain` represents that path to traversed to reach the symbol and it includes the symbol itself as well as aliases (without resolving)

		For example, consider the symbol `EventEmitter` in node.js

		```typescript
		declare module "events" {
			class internal extends NodeJS.EventEmitter { }

			namespace internal {
				class EventEmitter extends internal { }
			}

			export = internal;
		}
		```

		While the symbol's parent path is [Module("events"), internal, EventEmitter], the accessChain is [Module("events"), EventEmitter]
	**/
	public static function walkDeclarationSymbols(tc: TypeChecker, symbol: Symbol, onSymbol: (Symbol, accessChain: ReadOnlyArray<Symbol>) -> Void, ?accessChain: ReadOnlyArray<Symbol>, depth: Int = 0) {
		accessChain = accessChain != null ? accessChain : [symbol];

		// prevent cycles by terminating if the current symbol appears in the parent access chain
		for (i in 0...accessChain.length - 1) {
			if (accessChain[i] == symbol) {
				return;
			}
		}

		// explicitly ignored symbols
		var ignoredSymbolFlags = SymbolFlags.ExportStar;

		// Log.log('${[for (i in 0...depth) '\t'].join('')}<b>walkDeclarationSymbols()</b> <yellow>${accessChain.map(s -> s.name)}</>', symbol);

		// handle module replacement: `export =`, for example, the module symbol
		// `declare module "module" { export = Class; }`
		// will be replaced with `Class`
		if (symbol.flags & SymbolFlags.Module != 0) {
			// internal method used to resolve `export =` modules
			var resolvedSymbol = tc.resolveExternalModuleSymbol(symbol);

			if (resolvedSymbol != symbol) {
				// accessChain remains the same, we access the `export = symbol through the module symbol
				// Log.log('<magenta>Module <b>${symbol.name} ${symbol.getFlags()}</b> mapped via `<i>export =</>` to <b>${resolvedSymbol.name} ${resolvedSymbol.getFlags()}</b></>', symbol);
				walkDeclarationSymbols(tc, resolvedSymbol, onSymbol, accessChain, depth);
				return;
			}
		}

		var handled = symbol.flags & ignoredSymbolFlags != 0;

		if (symbol.flags & SymbolFlags.Alias != 0) {
			handled = true;
			onSymbol(symbol, accessChain);
			var aliasedSymbol = tc.getAliasedSymbol(symbol);
			walkDeclarationSymbols(tc, aliasedSymbol, onSymbol, accessChain.concat([aliasedSymbol]), depth + 1);
		}

		if (symbol.flags & (SymbolFlags.Type | SymbolFlags.Variable | SymbolFlags.Function | SymbolFlags.Property) != 0) {
			// Class | Interface | Enum | EnumMember | TypeLiteral | TypeParameter | TypeAlias |
			// FunctionScopedVariable | BlockScopedVariable | Function | Property
			handled = true;
			onSymbol(symbol, accessChain);
		}

		if (symbol.flags & SymbolFlags.Module != 0) {
			// ValueModule | NamespaceModule
			handled = true;
			onSymbol(symbol, accessChain);

			var moduleMembers: Array<Symbol> = tc.getExportsOfModule(symbol).filter(s -> s.flags & SymbolFlags.ModuleMember != 0);
			for (moduleExport in moduleMembers) {
				walkDeclarationSymbols(tc, moduleExport, onSymbol, accessChain.concat([moduleExport]), depth + 1);
			}
		}

		if (!handled) {
			Log.warn('Symbol was not handled in <b>walkDeclarationSymbols()</>', symbol);
		}
	}

	static public function getCallSignatures(symbol: Symbol, tc: TypeChecker): Array<Signature> {
		var symbols = getMembers(symbol).filter(s -> s.flags & SymbolFlags.Signature != 0 && s.escapedName == InternalSymbolName.Call);
		var declarations = symbols.map(s -> getDeclarationsArray(s).filter(d -> Ts.isCallSignatureDeclaration(d))).flatten();
		var signatures = declarations.map(d -> tc.getSignatureFromDeclaration(cast d));
		return cast signatures.filter(s -> s != null);
	}

	/**
		**Construct** signatures: `new(): T`, not _constructor_ signatures
	**/
	static public function getConstructSignatures(symbol: Symbol, tc: TypeChecker): Array<Signature> {
		var symbols = getMembers(symbol).filter(s -> s.flags & SymbolFlags.Signature != 0 && s.escapedName == InternalSymbolName.New);
		var declarations = symbols.map(s -> getDeclarationsArray(s).filter(d -> Ts.isConstructSignatureDeclaration(d))).flatten();
		var signatures = declarations.map(d -> tc.getSignatureFromDeclaration(cast d));
		return cast signatures.filter(s -> s != null);
	}

	static public function getIndexSignatures(symbol: Symbol, tc: TypeChecker): Array<Signature> {
		var symbols = getMembers(symbol).filter(s -> s.flags & SymbolFlags.Signature != 0 && s.escapedName == InternalSymbolName.Index);
		var declarations = symbols.map(s -> getDeclarationsArray(s).filter(d -> Ts.isIndexSignatureDeclaration(d))).flatten();
		var signatures = declarations.map(d -> tc.getSignatureFromDeclaration(cast d));
		return cast signatures.filter(s -> s != null);
	}
	
	/**
		Different from construct signatures
	**/
	static public function getConstructorSignatures(symbol: Symbol, tc: TypeChecker): Array<Signature> {
		var symbols = getMembers(symbol).filter(s -> s.flags & SymbolFlags.Constructor != 0 && s.escapedName == InternalSymbolName.Constructor);
		var declarations = symbols.map(s -> getDeclarationsArray(s).filter(d -> Ts.isConstructorDeclaration(d))).flatten();
		var signatures = declarations.map(d -> tc.getSignatureFromDeclaration(cast d));
		return cast signatures.filter(s -> s != null);
	}

	static public function getClassMembers(symbol: Symbol): Array<Symbol> {
		return getMembers(symbol).filter(s -> isAccessibleField(s) && s.flags & SymbolFlags.ClassMember != 0);
	}

	/**
		Symbol must declare a `Class`, `Interface` or `TypeAlias`
	**/
	static public function getDeclarationTypeParameters(symbol: Symbol): Array<TypeParameterDeclaration> {
		var tsTypeParameterDeclarations = new Array<TypeParameterDeclaration>();

		// filter type-declarations
		var typeDeclarations = getDeclarationsArray(symbol).filter(d -> {
			switch d.kind {
				// declarations with type parameters
				case SyntaxKind.ClassDeclaration |
					SyntaxKind.InterfaceDeclaration |
					SyntaxKind.TypeAliasDeclaration
					: true;
				default: false;
			}
		});

		for (declaration in typeDeclarations) {
			// find the first declaration with more than 0 type parameters
			// here we make the assumption that all declarations have the same type parameters
			var declarationTypeParameters = Ts.getEffectiveTypeParameterDeclarations(cast declaration);

			// not all declarations will have the same number of type-parameters, use the one with the longest
			if (declarationTypeParameters.length > 0 && declarationTypeParameters.length > tsTypeParameterDeclarations.length) {
				tsTypeParameterDeclarations = declarationTypeParameters;
			}

		}

		return tsTypeParameterDeclarations;
	}

	static public function getParentModuleNames(symbol: Symbol): Array<String> {
		var declaredInModules = new Array<String>();
		for (d in getDeclarationsArray(symbol)) {
			var declaredInParentModule = TsProgramTools.getParentModuleName(d.getSourceFile());
			if (!declaredInModules.has(declaredInParentModule)) {
				declaredInModules.push(declaredInParentModule);
			}
		}
		return declaredInModules;
	}

	static public function isInternalSymbol(symbol: Symbol) {
		return isInternalSymbolName(symbol.name);
	}
	
	static public function isInternalSymbolName(name: __String) {
		var internalSymbolName = js.Syntax.code('require("typescript").InternalSymbolName');
		var internalSymbolNames = js.lib.Object.values(internalSymbolName);
		return internalSymbolNames.indexOf(name) != -1;
	}

	static public function isBuiltIn(symbol: Symbol) {
		// if the symbol is declared (at least once) in a built-in library, js.html or js.lib
		var isBuiltIn = false; // symbol is declared in a built-in lib file (but may be extended in user-code)
		var defaultLibOnlyDeclarations = true; // symbol is declared in a built-in lib file and **is not** extended in user-code
		for (declaration in getDeclarationsArray(symbol)) {
			var sourceFile = declaration.getSourceFile();
			if (sourceFile.hasNoDefaultLib) {
				isBuiltIn = true;
			} else {
				defaultLibOnlyDeclarations = false;
			}
		}
		return isBuiltIn;
	}

	static inline function isPowerOfTwo(x: Int) {
		return (x & (x - 1)) == 0;
	}

	static var _symbolFlagsMap: Null<Map<String, Int>> = null;
	static function getSymbolFlagsMap(): Map<String, Int> {
		if (_symbolFlagsMap == null) {
			_symbolFlagsMap = new Map<String, Int>();
			var symbolFlagsStringKeys = js.lib.Object.keys(js.Syntax.code('require("typescript").SymbolFlags')).filter(key -> ~/[a-z_]/i.match(key));
			for (key in symbolFlagsStringKeys) {
				var value: Int = js.Syntax.field(js.Syntax.code('require("typescript").SymbolFlags'), key);
				_symbolFlagsMap.set(key, value);
			}
		}
		return _symbolFlagsMap;
	}

}