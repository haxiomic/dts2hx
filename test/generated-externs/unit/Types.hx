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

Generated from: test/unit/types.d.ts:20
**/
@:native('Types')
final extern class Types {
	static function functionImplicit(x: Any, y: Any): Any;
	static function functionNumberStringVoidAlt(a: Float, b: String): Void;
	static function functionNumberTVoidTypeParamAlt<T>(a: Float, tparam: T): Void;
	@:overload(function(a: String): Any { })
	@:overload(function(a: Array<js.lib.Symbol>): Any { })
	@:overload(function<T, U>(a: Array<js.lib.Symbol>, u: U): T { })
	static function overloadedFunction(a: Float): Any;
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
	static var unionInParentheses: haxe.io.EitherType<Float, String>;
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
	static var arrayNumberStringUnion: Array<haxe.io.EitherType<Float, String>>;
	static var tupleNumberString: Array<Any>;
	static var stringNumberMap: haxe.DynamicAccess<Float>;
	static var readonlyStringNumberMap: haxe.DynamicAccess<Float>;
	static var stringNumberMapWithField: {	var field: Float;};
	static var numberStringMap: Array<String>;
	static var readonlyNumberStringMap: haxe.ds.ReadOnlyArray<String>;
	static var numberStringMapWithField: {	var field: String;};
	static var stringAndNumberMapWithField: {	var length: String;};
	static var arrowNumberStringVoid: (a: Float, noType: Any) -> Void;
	static var arrowNumberTVoidTypeParam: (a: Float, tparam: Any) -> Void;
	static var arrowParamWithRest: (a: Float, b: Float, rest: haxe.externs.Rest<Float>) -> Void;
	static var arrowParamObjectBindingPattern: (<UNHANDLED ObjectBindingPattern>: {	var x: Any; 	var y: Any;}) -> Void;
	static var constructorType: <UNHANDLED SyntaxKind: ConstructorType>;
	static var nullableNumber: Null<Float>;
	static var undefineableNumber: Null<Float>;
	static var undefineableNullableNumber: Null<Float>;
	static var intersectionWithSubIntersection: {	var x: {	var a: Float;}; 	var x: {	var b: String;};};
	static var intersectionXY: {	var x: Float; 	var y: Float;};
	static var intersectionRedefinitionSame: {	var x: Float; 	var x: Float;};
	static var intersectionInvalidRedefinition: {	var x: Float; 	var x: String;};
	static var extendedObject: {	var fieldA: Float; 	var fieldB: Float; 	var fieldArrayAlias: unit.types.ArrayAlias; 	@:optional var fieldOptional: Float; 	var computedFieldName: String; 	var sub: {	var a: Float; 	var b: Float;}; 	@:overload(function(a: Float): Void { }) function methodSignature<T>(a: T): Void; 	@:overload(function(a: Float): Void { }) function methodSignature<T>(a: T): Void; 	var methodProperty: (a: Any) -> Void; 	@:optional function methodSignatureOptional(): String; 	final readonlyField: String; 	var extendedField: Float;};
	static var intersectionWithAny: {};
	static var intersectionWithArray: {	var x: Float; 	/**
		Gets or sets the length of the array. This is a number one higher than the highest element defined in an array.
		**/ var length: Float; 	/**
		Returns a string representation of an object.
		**/ function toString(): String; 	/**
		Returns a string representation of an array.
		**/ function toString(): String; 	/**
		Returns a date converted to a string using the current locale.
		**/ function toLocaleString(): String; 	/**
		Returns a string representation of an array. The elements are converted to string using their toLocalString methods.
		**/ function toLocaleString(): String; 	/**
		Removes the last element from an array and returns it.
		**/ function pop(): Null<T>; 	/**
		Appends new elements to an array, and returns the new length of the array.
		**/ function push(items: haxe.externs.Rest<T>): Float; 	/**
		Combines two or more arrays.
		
		Combines two or more arrays.
		**/ @:overload(function(items: haxe.externs.Rest<haxe.io.EitherType<T, Any<T>>>): Array<T> { }) function concat(items: haxe.externs.Rest<Any<T>>): Array<T>; 	/**
		Combines two or more arrays.
		
		Combines two or more arrays.
		**/ @:overload(function(items: haxe.externs.Rest<haxe.io.EitherType<T, Any<T>>>): Array<T> { }) function concat(items: haxe.externs.Rest<Any<T>>): Array<T>; 	/**
		Adds all the elements of an array separated by the specified separator string.
		**/ function join(?separator: String): String; 	/**
		Reverses the elements in an Array.
		**/ function reverse(): Array<T>; 	/**
		Removes the first element from an array and returns it.
		**/ function shift(): Null<T>; 	/**
		Returns a section of an array.
		**/ function slice(?start: Float, ?end: Float): Array<T>; 	/**
		Sorts an array.
		**/ function sort(?compareFn: (a: T, b: T) -> Float): Array; 	/**
		Removes elements from an array and, if necessary, inserts new elements in their place, returning the deleted elements.
		
		Removes elements from an array and, if necessary, inserts new elements in their place, returning the deleted elements.
		**/ @:overload(function(start: Float, deleteCount: Float, items: haxe.externs.Rest<T>): Array<T> { }) function splice(start: Float, ?deleteCount: Float): Array<T>; 	/**
		Removes elements from an array and, if necessary, inserts new elements in their place, returning the deleted elements.
		
		Removes elements from an array and, if necessary, inserts new elements in their place, returning the deleted elements.
		**/ @:overload(function(start: Float, deleteCount: Float, items: haxe.externs.Rest<T>): Array<T> { }) function splice(start: Float, ?deleteCount: Float): Array<T>; 	/**
		Inserts new elements at the start of an array.
		**/ function unshift(items: haxe.externs.Rest<T>): Float; 	/**
		Returns the index of the first occurrence of a value in an array.
		**/ function indexOf(searchElement: T, ?fromIndex: Float): Float; 	/**
		Returns the index of the last occurrence of a specified value in an array.
		**/ function lastIndexOf(searchElement: T, ?fromIndex: Float): Float; 	/**
		Determines whether all the members of an array satisfy the specified test.
		**/ function every(callbackfn: (value: T, index: Float, array: Array<T>) -> Bool, ?thisArg: Any): Bool; 	/**
		Determines whether the specified callback function returns true for any element of an array.
		**/ function some(callbackfn: (value: T, index: Float, array: Array<T>) -> Bool, ?thisArg: Any): Bool; 	/**
		Performs the specified action for each element in an array.
		**/ function forEach(callbackfn: (value: T, index: Float, array: Array<T>) -> Void, ?thisArg: Any): Void; 	/**
		Calls a defined callback function on each element of an array, and returns an array that contains the results.
		**/ function map<U>(callbackfn: (value: T, index: Float, array: Array<T>) -> U, ?thisArg: Any): Array<U>; 	/**
		Returns the elements of an array that meet the condition specified in a callback function.
		
		Returns the elements of an array that meet the condition specified in a callback function.
		**/ @:overload(function(callbackfn: (value: T, index: Float, array: Array<T>) -> Any, ?thisArg: Any): Array<T> { }) function filter<S>(callbackfn: (value: T, index: Float, array: Array<T>) -> Bool, ?thisArg: Any): Array<S>; 	/**
		Returns the elements of an array that meet the condition specified in a callback function.
		
		Returns the elements of an array that meet the condition specified in a callback function.
		**/ @:overload(function(callbackfn: (value: T, index: Float, array: Array<T>) -> Any, ?thisArg: Any): Array<T> { }) function filter<S>(callbackfn: (value: T, index: Float, array: Array<T>) -> Bool, ?thisArg: Any): Array<S>; 	/**
		Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
		
		Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
		**/ @:overload(function(callbackfn: (previousValue: T, currentValue: T, currentIndex: Float, array: Array<T>) -> T, initialValue: T): T { }) @:overload(function<U>(callbackfn: (previousValue: U, currentValue: T, currentIndex: Float, array: Array<T>) -> U, initialValue: U): U { }) function reduce(callbackfn: (previousValue: T, currentValue: T, currentIndex: Float, array: Array<T>) -> T): T; 	/**
		Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
		
		Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
		**/ @:overload(function(callbackfn: (previousValue: T, currentValue: T, currentIndex: Float, array: Array<T>) -> T, initialValue: T): T { }) @:overload(function<U>(callbackfn: (previousValue: U, currentValue: T, currentIndex: Float, array: Array<T>) -> U, initialValue: U): U { }) function reduce(callbackfn: (previousValue: T, currentValue: T, currentIndex: Float, array: Array<T>) -> T): T; 	/**
		Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
		
		Calls the specified callback function for all the elements in an array. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
		**/ @:overload(function(callbackfn: (previousValue: T, currentValue: T, currentIndex: Float, array: Array<T>) -> T, initialValue: T): T { }) @:overload(function<U>(callbackfn: (previousValue: U, currentValue: T, currentIndex: Float, array: Array<T>) -> U, initialValue: U): U { }) function reduce(callbackfn: (previousValue: T, currentValue: T, currentIndex: Float, array: Array<T>) -> T): T; 	/**
		Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
		
		Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
		**/ @:overload(function(callbackfn: (previousValue: T, currentValue: T, currentIndex: Float, array: Array<T>) -> T, initialValue: T): T { }) @:overload(function<U>(callbackfn: (previousValue: U, currentValue: T, currentIndex: Float, array: Array<T>) -> U, initialValue: U): U { }) function reduceRight(callbackfn: (previousValue: T, currentValue: T, currentIndex: Float, array: Array<T>) -> T): T; 	/**
		Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
		
		Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
		**/ @:overload(function(callbackfn: (previousValue: T, currentValue: T, currentIndex: Float, array: Array<T>) -> T, initialValue: T): T { }) @:overload(function<U>(callbackfn: (previousValue: U, currentValue: T, currentIndex: Float, array: Array<T>) -> U, initialValue: U): U { }) function reduceRight(callbackfn: (previousValue: T, currentValue: T, currentIndex: Float, array: Array<T>) -> T): T; 	/**
		Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
		
		Calls the specified callback function for all the elements in an array, in descending order. The return value of the callback function is the accumulated result, and is provided as an argument in the next call to the callback function.
		**/ @:overload(function(callbackfn: (previousValue: T, currentValue: T, currentIndex: Float, array: Array<T>) -> T, initialValue: T): T { }) @:overload(function<U>(callbackfn: (previousValue: U, currentValue: T, currentIndex: Float, array: Array<T>) -> U, initialValue: U): U { }) function reduceRight(callbackfn: (previousValue: T, currentValue: T, currentIndex: Float, array: Array<T>) -> T): T; 	/**
		Returns the value of the first element in the array where predicate is true, and undefined
		otherwise.
		**/ @:overload(function(predicate: (value: T, index: Float, obj: Array<T>) -> Bool, ?thisArg: Any): Null<T> { }) function find<S>(predicate: (this_: Void, value: T, index: Float, obj: Array<T>) -> Bool, ?thisArg: Any): Null<S>; 	/**
		Returns the value of the first element in the array where predicate is true, and undefined
		otherwise.
		**/ @:overload(function(predicate: (value: T, index: Float, obj: Array<T>) -> Bool, ?thisArg: Any): Null<T> { }) function find<S>(predicate: (this_: Void, value: T, index: Float, obj: Array<T>) -> Bool, ?thisArg: Any): Null<S>; 	/**
		Returns the index of the first element in the array where predicate is true, and -1
		otherwise.
		**/ function findIndex(predicate: (value: T, index: Float, obj: Array<T>) -> Bool, ?thisArg: Any): Float; 	/**
		Returns the this object after filling the section identified by start and end with value
		**/ function fill(value: T, ?start: Float, ?end: Float): Array; 	/**
		Returns the this object after copying a section of the array identified by start and end
		to the same array starting at position target
		**/ function copyWithin(target: Float, start: Float, ?end: Float): Array; 	/**
		Iterator
		**/ @:native('__@iterator') function __Atiterator(): Any<T>; 	/**
		Returns an iterable of key, value pairs for every entry in the array
		**/ function entries(): Any<Array<Any>>; 	/**
		Returns an iterable of keys in the array
		**/ function keys(): Any<Float>; 	/**
		Returns an iterable of values in the array
		**/ function values(): Any<T>; 	/**
		Returns an object whose properties have the value 'true'
		when they will be absent when used in a 'with' statement.
		**/ @:native('__@unscopables') function __Atunscopables(): {	var copyWithin: Bool; 	var entries: Bool; 	var fill: Bool; 	var find: Bool; 	var findIndex: Bool; 	var keys: Bool; 	var values: Bool;}; 	/**
		Determines whether an array includes a certain element, returning true or false as appropriate.
		**/ function includes(searchElement: T, ?fromIndex: Float): Bool;};
	static var typeQueryImplicitStr: Any;
	static var typeQueryObject: {	var fieldA: Float; 	var fieldB: Float; 	var fieldArrayAlias: Array<String>; 	@:optional var fieldOptional: Float; 	var computedFieldName: String; 	var sub: {	var a: Float; 	var b: Float;}; 	function methodSignature<T>(a: T): Void; 	function methodSignature(a: Float): Void; 	var methodProperty: (a: Any) -> Void; 	@:optional function methodSignatureOptional(): String; 	final readonlyField: String;};
	static var typeQueryNoType: Any;
}

