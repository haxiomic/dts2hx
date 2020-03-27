package tool;

import typescript.ts.SymbolFlags;
import typescript.ts.Symbol;

class TsSymbolTools {
	
	/**
		Shockingly, the way to detect for an external module is to check for double quote at the start of the name
		https://github.com/microsoft/TypeScript/blob/5e9c43607f8732bc94374c95fddd8b1fd9881122/src/services/utilities.ts#L1657
	**/
	public static function isExternalModuleSymbol(symbol: Symbol): Bool {
		return (symbol.flags & SymbolFlags.Module != 0) && symbol.name.charCodeAt(0) == '"'.code;
	}

	public static function symbolFlagsInfo(symbolFlags: Int): Array<String> {
		var activeFlags = new Array<String>();
		// fundamentals
		if (symbolFlags & SymbolFlags.None != 0) activeFlags.push('None');
		if (symbolFlags & SymbolFlags.FunctionScopedVariable != 0) activeFlags.push('FunctionScopedVariable');
		if (symbolFlags & SymbolFlags.BlockScopedVariable != 0) activeFlags.push('BlockScopedVariable');
		if (symbolFlags & SymbolFlags.Property != 0) activeFlags.push('Property');
		if (symbolFlags & SymbolFlags.EnumMember != 0) activeFlags.push('EnumMember');
		if (symbolFlags & SymbolFlags.Function != 0) activeFlags.push('Function');
		if (symbolFlags & SymbolFlags.Class != 0) activeFlags.push('Class');
		if (symbolFlags & SymbolFlags.Interface != 0) activeFlags.push('Interface');
		if (symbolFlags & SymbolFlags.ConstEnum != 0) activeFlags.push('ConstEnum');
		if (symbolFlags & SymbolFlags.RegularEnum != 0) activeFlags.push('RegularEnum');
		if (symbolFlags & SymbolFlags.ValueModule != 0) activeFlags.push('ValueModule');
		if (symbolFlags & SymbolFlags.NamespaceModule != 0) activeFlags.push('NamespaceModule');
		if (symbolFlags & SymbolFlags.TypeLiteral != 0) activeFlags.push('TypeLiteral');
		if (symbolFlags & SymbolFlags.ObjectLiteral != 0) activeFlags.push('ObjectLiteral');
		if (symbolFlags & SymbolFlags.Method != 0) activeFlags.push('Method');
		if (symbolFlags & SymbolFlags.Constructor != 0) activeFlags.push('Constructor');
		if (symbolFlags & SymbolFlags.GetAccessor != 0) activeFlags.push('GetAccessor');
		if (symbolFlags & SymbolFlags.SetAccessor != 0) activeFlags.push('SetAccessor');
		if (symbolFlags & SymbolFlags.Signature != 0) activeFlags.push('Signature');
		if (symbolFlags & SymbolFlags.TypeParameter != 0) activeFlags.push('TypeParameter');
		if (symbolFlags & SymbolFlags.TypeAlias != 0) activeFlags.push('TypeAlias');
		if (symbolFlags & SymbolFlags.ExportValue != 0) activeFlags.push('ExportValue');
		if (symbolFlags & SymbolFlags.Alias != 0) activeFlags.push('Alias');
		if (symbolFlags & SymbolFlags.Prototype != 0) activeFlags.push('Prototype');
		if (symbolFlags & SymbolFlags.ExportStar != 0) activeFlags.push('ExportStar');
		if (symbolFlags & SymbolFlags.Optional != 0) activeFlags.push('Optional');
		if (symbolFlags & SymbolFlags.Transient != 0) activeFlags.push('Transient');
		if (symbolFlags & SymbolFlags.Assignment != 0) activeFlags.push('Assignment');
		if (symbolFlags & SymbolFlags.ModuleExports != 0) activeFlags.push('ModuleExports');
		return activeFlags;
	}

}