package tool;

import typescript.ts.TypeChecker;

using tool.HaxeTools;

private typedef TsType = typescript.ts.Type;

class TsTypeTools {

	/**
		Adds underscore suffix repeatedly to find a name that doesn't clash with existing property names
	**/
	public static function getFreePropertyName(tc: TypeChecker, type: TsType, suggestedName: String): String {
		var currentName = suggestedName;
		var takenNames = [
			for (property in tc.getPropertiesOfType(type))
				property.name.toSafeIdent() => true
		];
		while (takenNames.exists(currentName)) {
			currentName = currentName + '_';
		}
		return currentName;
	}

	/**
		An array of matched TypeFlags
		If `compositeFlags` is true, TypeFlags that are unions of other flags are included, for example:
			TypeFlags Module = ValueModule | NamespaceModule
	**/
	public static function getFlagsInfo(type: TsType, compositeFlags: Bool = false): Array<String> {
		var activeFlags = new Array<String>();

		for (key => value in getTypeFlagsMap()) {
			if (!compositeFlags && !isPowerOfTwo(value)) continue;
			if (type.flags & value != 0) {
				activeFlags.push(key);
			}
		}

		return activeFlags;
	}

	public static function getObjectFlagsInfo(type: typescript.ts.ObjectType, compositeFlags: Bool = false): Array<String> {
		var activeFlags = new Array<String>();

		for (key => value in getObjectFlagsMap()) {
			if (!compositeFlags && !isPowerOfTwo(value)) continue;
			if (type.objectFlags & value != 0) {
				activeFlags.push(key);
			}
		}

		return activeFlags;
	}

	/**
		Returns true if type has Construct signatures.
		See https://github.com/microsoft/TypeScript/blob/master/doc/spec.md#335-constructor-types
	**/
	public static function isConstructorType(tc: TypeChecker, type: TsType): Bool {
		return tc.getSignaturesOfType(type, Construct).length > 0;
	}

	public static function getIndexSignaturesOfType(tc: TypeChecker, type: TsType) {
		var indexDeclarations = new Array<typescript.ts.IndexSignatureDeclaration>();
		var numberInfo = tc.getIndexInfoOfType(type, typescript.ts.IndexKind.Number);
		var stringInfo = tc.getIndexInfoOfType(type, typescript.ts.IndexKind.String);
		if (numberInfo != null && numberInfo.declaration != null) indexDeclarations.push(numberInfo.declaration);
		if (stringInfo != null && stringInfo.declaration != null) indexDeclarations.push(stringInfo.declaration);
		return indexDeclarations.map(d -> cast tc.getSignatureFromDeclaration(d));
	}

	static inline function isPowerOfTwo(x: Int) {
		return (x & (x - 1)) == 0;
	}

	static var _typeFlagsMap: Null<Map<String, Int>> = null;
	static function getTypeFlagsMap() {
		if (_typeFlagsMap == null) {
			_typeFlagsMap = new Map<String, Int>();
			var typeFlagsStringKeys = js.lib.Object.keys(js.Syntax.code('require("typescript").TypeFlags')).filter(key -> ~/[a-z_]/i.match(key));
			for (key in typeFlagsStringKeys) {
				var value: Int = js.Syntax.field(js.Syntax.code('require("typescript").TypeFlags'), key);
				_typeFlagsMap.set(key, value);
			}
		}
		return _typeFlagsMap;
	}

	static var _objectFlagsMap: Null<Map<String, Int>> = null;
	static function getObjectFlagsMap() {
		if (_objectFlagsMap == null) {
			_objectFlagsMap = new Map<String, Int>();
			var objectFlagsStringKeys = js.lib.Object.keys(js.Syntax.code('require("typescript").ObjectFlags')).filter(key -> ~/[a-z_]/i.match(key));
			for (key in objectFlagsStringKeys) {
				var value: Int = js.Syntax.field(js.Syntax.code('require("typescript").ObjectFlags'), key);
				_objectFlagsMap.set(key, value);
			}
		}
		return _objectFlagsMap;
	}

}