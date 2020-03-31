package tool;

import typescript.ts.SourceFile;
import typescript.Ts;
import typescript.ts.SyntaxKind;
import typescript.ts.SymbolFlags;
import typescript.ts.Symbol;

class TsSymbolTools {
	
	/**
		Shockingly, the way to detect for an external module is to check for double quote at the start of the name
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
	public static function symbolFlagsInfo(symbolFlags: Int, compositeFlags: Bool = false): Array<String> {
		var activeFlags = new Array<String>();

		var symbolFlagsEnum = getSymbolFlagsMap();
		for (key => value in symbolFlagsEnum) {
			if (!compositeFlags && !isPowerOfTwo(value)) continue;
			if (symbolFlags & value != 0) {
				activeFlags.push(key);
			}
		}

		return activeFlags;
	}

	public static function getSymbolPosition(symbol: Symbol): haxe.macro.Expr.Position {
		var node = if (symbol.valueDeclaration != null) {
			symbol.valueDeclaration;
		} else if (symbol.declarations != null) {
			symbol.declarations[0];
		} else {
			null;
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

	public static function getDeclarationSymbolsInSourceFile(tc: typescript.ts.TypeChecker, sourceFile: SourceFile) {
		// get all globally visible symbols and filter for those that have a declaration in the sourceFile
		return tc.getSymbolsInScope(sourceFile, 0xFFFFFF).filter(
			symbol -> {
				if (symbol.declarations != null) for (declaration in symbol.declarations)
					if (declaration.getSourceFile() == sourceFile)
						return true;
				return false;
			}
		).map(tc.getExportSymbolOfSymbol);
	}

	static function isPowerOfTwo(x: Int) {
		return (x & (x - 1)) == 0;
	}

	static var _symbolFlagsMap: Null<Map<String, Int>> = null;
	static function getSymbolFlagsMap() {
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