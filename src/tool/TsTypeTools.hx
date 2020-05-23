package tool;

import typescript.ts.UnionType;
import typescript.ts.ObjectFlags;
import typescript.ts.TypeFlags;
import typescript.ts.ObjectType;
import typescript.ts.TupleTypeReference;
import typescript.ts.TypeChecker;

using Lambda;
using TsInternal;

private typedef TsType = typescript.ts.Type;

class TsTypeTools {

	public static function getId(type: TsType): Int {
		return untyped type.id;
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

	public static function isThisType(type: TsType): Bool {
		return untyped !!type.isThisType;
	}

	public static function getThisTypeTarget(type: TsType): Null<TsType> {
		return untyped type.constraint; // don't use getConstraint()
	}

	/**
		Returns true if type is a union that contains `null` or `undefined`
	**/
	public static function isNullishUnion(type: TsType) {
		return if (type.isUnion()) {
			var unionType = (cast type: UnionType);
			unionType.types.exists(t -> t.flags & (TypeFlags.Null | TypeFlags.Undefined) != 0);
		} else false;
	}

	/**
		Returns true if type has Construct signatures.
		See https://github.com/microsoft/TypeScript/blob/master/doc/spec.md#335-constructor-types
	**/
	public static function isConstructorType(tc: TypeChecker, type: TsType): Bool {
		return tc.getSignaturesOfType(type, Construct).length > 0;
	}

	public static function isReferenceType(tc: TypeChecker, type: TsType): Bool {
		return if (type.flags & TypeFlags.Object != 0) {
			return (cast type: ObjectType).objectFlags & ObjectFlags.Reference != 0;
		} else false;
	}

	/** Translated from checker.ts (typescript 3.7.4) **/
	public static function getEffectiveRestType(tc: TypeChecker, restType: TsType): Null<TsType> {
		return tc.isTupleType(restType) ? getRestArrayTypeOfTupleType(tc, cast restType) : restType;
	}

	/** Translated from checker.ts (typescript 3.7.4) **/
	public static function getRestArrayTypeOfTupleType(tc: TypeChecker, type: TupleTypeReference): Null<TsType> {
		// const restType = getRestTypeOfTupleType(type);
		// return restType && createArrayType(restType);
		var restType = getRestTypeOfTupleType(tc, type);
		return if (restType != null) {
			tc.createArrayType(restType);
		} else null;
	}
	
	/** Translated from checker.ts (typescript 3.7.4) **/
	public static function getRestTypeOfTupleType(tc: TypeChecker, type: TupleTypeReference): Null<TsType> {
		// return type.target.hasRestElement ? getTypeArguments(type)[type.target.typeParameters!.length - 1] : undefined;
		return type.target.hasRestElement() ? tc.getTypeArguments(type)[type.target.typeParameters.length - 1] : null;
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