package tool;

class TsTypeTools {

	/**
		An array of matched TypeFlags
		If `compositeFlags` is true, TypeFlags that are unions of other flags are included, for example:
			TypeFlags Module = ValueModule | NamespaceModule
	**/
	public static function getFlagsInfo(type: typescript.ts.Type, compositeFlags: Bool = false): Array<String> {
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