package tool;

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