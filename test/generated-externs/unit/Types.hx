package unit;


/**
See https://github.com/microsoft/TypeScript/blob/master/doc/spec.md#3-types

  # Type Categories
  - primitive types
      Number, Boolean, String, Symbol (Void, Null, and Undefined are not referenceable)
  - object types
      composed from *properties*, *call signatures*, *construct signatures*, and *index signatures* (collectively called members)
      - Object type literals
      - Array type literals
      - Tuple type literals
      - Function type literals
      - Constructor type literals 
      - Constructor function types created by class declarations (section 8.2.5).
      - Namespace instance types created by namespace declarations (section 10.3).
  - union types
  - intersection types
  - type parameters
**/
@:native('Types')
final extern class Types {
	static function partialTypeParam<T>(x: unit.Partial<T>): Void;
	static function functionImplicit(x: Any, y: Any): Any;
	static function functionNumberStringVoidAlt(a: Float, b: String): Void;
	static function functionNumberTVoidTypeParamAlt<T>(a: Float, tparam: T): Void;
	@:overload(function(a: String): Any { })
	@:overload(function(a: Array<js.lib.Symbol>): Any { })
	@:overload(function<T, U>(a: Array<js.lib.Symbol>, u: U): T { })
	static function overloadedFunction(a: Float): Any;
	static function typeParameterWithConstraint<T>(x: T): Any;
	static function firstTypeFunction(node: {}): Bool;
	static var implicitInt: Float;
	static var implicitFloat: Float;
	static var implicitBool: Bool;
	static var implicitStr: String;
	static var noType: Any;
	static var numberPrimitive: Float;
	static var booleanPrimitive: Bool;
	static var stringPrimitive: String;
	static var stringObjectPrimitive: String;
	static var numberObjectPrimitive: js.lib.Number;
	static var symbolPrimitive: js.lib.Symbol;
	static var any: Any;
	static var typeInParentheses: Float;
	static var unionInParentheses: haxe.extern.EitherType<Float, String>;
	static var intLiteral: Int;
	static var intLiteralAlt: Int;
	static var floatLiteral: Float;
	static var booleanLiteral: Bool;
	static var stringLiteral: String;
	static var typeReferenceStringAlias: unit.types.StringAlias;
	static var typeReferenceArrayAlias: unit.types.ArrayAlias;
	static var typeReferenceObjectAlias: unit.types.ObjectAlias;
	static var typeReferenceAliasWithTypeParam: unit.types.AliasWithTypeParam<String, Float>;
	static var object: {	var fieldA: Float; 	var fieldB: Float; 	var fieldArrayAlias: unit.types.ArrayAlias; 	@:optional var fieldOptional: Float; 	var computedFieldName: String; 	var sub: {	var a: Float; 	var b: Float;}; 	@:overload(function(a: Float): Void { }) function methodSignature<T>(a: T): Void; 	@:overload(function(a: Float): Void { }) function methodSignature<T>(a: T): Void; 	var methodProperty: (a: Any) -> Void; 	@:optional function methodSignatureOptional(): String; 	final readonlyField: String;};
	static var objectSingleField: {	var a: Any;};
	static var arrayString: Array<String>;
	static var arrayStringAlt: Array<String>;
	static var stringObj: String;
	static var arrayNumberStringUnion: Array<haxe.extern.EitherType<Float, String>>;
	static var tupleNumberString: Array<Any>;
	static var stringNumberMap: haxe.DynamicAccess<Float>;
	static var readonlyStringNumberMap: haxe.DynamicAccess<Float>;
	static var stringNumberMapWithField: {	var field: Float;};
	static var numberStringMap: ArrayAccess<String>;
	static var readonlyNumberStringMap: ArrayAccess<String>;
	static var numberStringMapWithField: {	var field: String;};
	static var stringAndNumberMapWithField: {	var length: String;};
	static var mappedStringIndex: /*<UNHANDLED SyntaxKind: MappedType>*/Any;
	static var partial: unit.Partial<{	var a: Float; 	var b: String;}>;
	static var arrowNumberStringVoid: (a: Float, noType: Any) -> Void;
	static var arrowNumberTVoidTypeParam: (a: Float, tparam: Any) -> Void;
	static var arrowParamWithRest: (a: Float, b: Float, rest: haxe.extern.Rest<Float>) -> Void;
	static var arrowParamObjectBindingPattern: (/* <UNHANDLED ObjectBindingPattern>*/ bindingIdent: {	var x: Any; 	var y: Any;}) -> Void;
	static var constructorType: /*<UNHANDLED SyntaxKind: ConstructorType>*/Any;
	static var nullableNumber: Null<Float>;
	static var undefineableNumber: Null<Float>;
	static var undefineableNullableNumber: Null<Float>;
	static var intersectionWithSubIntersection: Any;
	static var intersectionXY: Any;
	static var intersectionRedefinitionSame: Any;
	static var intersectionInvalidRedefinition: Any;
	static var extendedObject: Any;
	static var intersectionWithAny: Any;
	static var intersectionWithArray: Any;
	static var typeQueryImplicitStr: Any;
	static var typeQueryObject: {	var fieldA: Float; 	var fieldB: Float; 	var fieldArrayAlias: unit.types.ArrayAlias; 	@:optional var fieldOptional: Float; 	var computedFieldName: String; 	var sub: {	var a: Float; 	var b: Float;}; 	function methodSignature<T>(a: T): Void; 	function methodSignature(a: Float): Void; 	var methodProperty: (a: Any) -> Void; 	@:optional function methodSignatureOptional(): String; 	final readonlyField: String;};
	static var typeQueryNoType: Any;
	static var typeQueryFunction: (x: Any, y: Any) -> Any;
	static var typeQueryFunctionWithOverloads: Any;
}

