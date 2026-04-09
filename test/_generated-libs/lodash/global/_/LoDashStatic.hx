package global._;

typedef LoDashStatic = {
	/**
		Creates a lodash object which wraps value to enable implicit method chain sequences.
		Methods that operate on and return arrays, collections, and functions can be chained together.
		Methods that retrieve a single value or may return a primitive value will automatically end the
		chain sequence and return the unwrapped value. Otherwise, the value must be unwrapped with value().
		
		Explicit chain sequences, which must be unwrapped with value(), may be enabled using _.chain.
		
		The execution of chained methods is lazy, that is, it's deferred until value() is
		implicitly or explicitly called.
		
		Lazy evaluation allows several methods to support shortcut fusion. Shortcut fusion
		is an optimization to merge iteratee calls; this avoids the creation of intermediate
		arrays and can greatly reduce the number of iteratee executions. Sections of a chain
		sequence qualify for shortcut fusion if the section is applied to an array and iteratees
		accept only one argument. The heuristic for whether a section qualifies for shortcut
		fusion is subject to change.
		
		Chaining is supported in custom builds as long as the value() method is directly or
		indirectly included in the build.
		
		In addition to lodash methods, wrappers have Array and String methods.
		The wrapper Array methods are:
		concat, join, pop, push, shift, sort, splice, and unshift.
		The wrapper String methods are:
		replace and split.
		
		The wrapper methods that support shortcut fusion are:
		at, compact, drop, dropRight, dropWhile, filter, find, findLast, head, initial, last,
		map, reject, reverse, slice, tail, take, takeRight, takeRightWhile, takeWhile, and toArray
		
		The chainable wrapper methods are:
		after, ary, assign, assignIn, assignInWith, assignWith, at, before, bind, bindAll, bindKey,
		castArray, chain, chunk, commit, compact, concat, conforms, constant, countBy, create,
		curry, debounce, defaults, defaultsDeep, defer, delay, difference, differenceBy, differenceWith,
		drop, dropRight, dropRightWhile, dropWhile, extend, extendWith, fill, filter, flatMap,
		flatMapDeep, flatMapDepth, flatten, flattenDeep, flattenDepth, flip, flow, flowRight,
		fromPairs, functions, functionsIn, groupBy, initial, intersection, intersectionBy, intersectionWith,
		invert, invertBy, invokeMap, iteratee, keyBy, keys, keysIn, map, mapKeys, mapValues,
		matches, matchesProperty, memoize, merge, mergeWith, method, methodOf, mixin, negate,
		nthArg, omit, omitBy, once, orderBy, over, overArgs, overEvery, overSome, partial, partialRight,
		partition, pick, pickBy, plant, property, propertyOf, pull, pullAll, pullAllBy, pullAllWith, pullAt,
		push, range, rangeRight, rearg, reject, remove, rest, reverse, sampleSize, set, setWith,
		shuffle, slice, sort, sortBy, sortedUniq, sortedUniqBy, splice, spread, tail, take,
		takeRight, takeRightWhile, takeWhile, tap, throttle, thru, toArray, toPairs, toPairsIn,
		toPath, toPlainObject, transform, unary, union, unionBy, unionWith, uniq, uniqBy, uniqWith,
		unset, unshift, unzip, unzipWith, update, updateWith, values, valuesIn, without, wrap,
		xor, xorBy, xorWith, zip, zipObject, zipObjectDeep, and zipWith.
		
		The wrapper methods that are not chainable by default are:
		add, attempt, camelCase, capitalize, ceil, clamp, clone, cloneDeep, cloneDeepWith, cloneWith,
		conformsTo, deburr, defaultTo, divide, each, eachRight, endsWith, eq, escape, escapeRegExp,
		every, find, findIndex, findKey, findLast, findLastIndex, findLastKey, first, floor, forEach,
		forEachRight, forIn, forInRight, forOwn, forOwnRight, get, gt, gte, has, hasIn, head,
		identity, includes, indexOf, inRange, invoke, isArguments, isArray, isArrayBuffer,
		isArrayLike, isArrayLikeObject, isBoolean, isBuffer, isDate, isElement, isEmpty, isEqual, isEqualWith,
		isError, isFinite, isFunction, isInteger, isLength, isMap, isMatch, isMatchWith, isNaN,
		isNative, isNil, isNull, isNumber, isObject, isObjectLike, isPlainObject, isRegExp,
		isSafeInteger, isSet, isString, isUndefined, isTypedArray, isWeakMap, isWeakSet, join,
		kebabCase, last, lastIndexOf, lowerCase, lowerFirst, lt, lte, max, maxBy, mean, meanBy,
		min, minBy, multiply, noConflict, noop, now, nth, pad, padEnd, padStart, parseInt, pop,
		random, reduce, reduceRight, repeat, result, round, runInContext, sample, shift, size,
		snakeCase, some, sortedIndex, sortedIndexBy, sortedLastIndex, sortedLastIndexBy, startCase,
		startsWith, stubArray, stubFalse, stubObject, stubString, stubTrue, subtract, sum, sumBy,
		template, times, toFinite, toInteger, toJSON, toLength, toLower, toNumber, toSafeInteger,
		toString, toUpper, trim, trimEnd, trimStart, truncate, unescape, uniqueId, upperCase,
		upperFirst, value, and words.
	**/
	@:overload(function<T:(Null<ts.Never>)>(value:T):Primitive<T> { })
	@:overload(function(value:Null<String>):String_ { })
	@:overload(function<T:((args:haxe.extern.Rest<Any>) -> Dynamic)>(value:T):Function<T> { })
	@:overload(function<T>(value:Null<List_<T>>):Collection<T> { })
	@:overload(function<T:(Dynamic)>(value:Null<T>):Object<T> { })
	@:overload(function<T>(value:T):Primitive<T> { })
	@:selfCall
	function call<TrapAny:({
		var __trapAny : Dynamic;
	})>(value:TrapAny):{
		function pop():Dynamic;
		function push(items:haxe.extern.Rest<Dynamic>):Dynamic;
		function shift():Dynamic;
		function sort(?compareFn:(a:Dynamic, b:Dynamic) -> Float):Dynamic;
		function splice(start:Float, ?deleteCount:Float, items:haxe.extern.Rest<Dynamic>):Dynamic;
		function unshift(items:haxe.extern.Rest<Dynamic>):Dynamic;
		function chunk(?size:Float):Collection<Array<Dynamic>>;
		function compact():Collection<Dynamic>;
		dynamic function concat(values:haxe.extern.Rest<Dynamic>):Collection<Dynamic>;
		function difference(values:haxe.extern.Rest<List_<Dynamic>>):Collection<Dynamic>;
		@:overload(function(values:haxe.extern.Rest<ts.AnyOf7<String, Float, js.lib.Symbol, ts.Tuple2<PropertyName, Dynamic>, (value:Dynamic) -> Any, haxe.DynamicAccess<Dynamic>, List_<Any>>>):Collection<Dynamic> { })
		function differenceBy<T2>(values1:List_<T2>, ?iteratee:ValueIteratee<Dynamic>):Collection<Dynamic>;
		@:overload(function<T2, T3, T4>(values:haxe.extern.Rest<ts.AnyOf2<List_<Any>, Comparator2<Dynamic, ts.Never>>>):Collection<Dynamic> { })
		function differenceWith<T2>(values:List_<T2>, comparator:Comparator2<Dynamic, T2>):Collection<Dynamic>;
		function drop(?n:Float):Collection<Dynamic>;
		function dropRight(?n:Float):Collection<Dynamic>;
		function dropRightWhile(?predicate:ListIteratee<Dynamic>):Collection<Dynamic>;
		function dropWhile(?predicate:ListIteratee<Dynamic>):Collection<Dynamic>;
		function fill<U>(value:U, ?start:Float, ?end:Float):Collection<Dynamic>;
		function findIndex(?predicate:ListIterateeCustom<Dynamic, Bool>, ?fromIndex:Float):Float;
		function findLastIndex(?predicate:ListIterateeCustom<Dynamic, Bool>, ?fromIndex:Float):Float;
		@:overload(function():Null<String> { })
		dynamic function first():Dynamic;
		@:overload(function():Collection<String> { })
		dynamic function flatten():Collection<Dynamic>;
		function flattenDeep():ts.AnyOf2<Collection<Dynamic>, Collection<Any>>;
		function flattenDepth(?depth:Float):Collection<Dynamic>;
		function fromPairs():Object<Dictionary<Dynamic>>;
		@:overload(function():Null<String> { })
		dynamic function head():Dynamic;
		function indexOf(value:Dynamic, ?fromIndex:Float):Float;
		function initial():Collection<Dynamic>;
		function intersection(arrays:haxe.extern.Rest<Null<List_<Dynamic>>>):Collection<Dynamic>;
		@:overload(function(values:haxe.extern.Rest<ts.AnyOf7<String, Float, js.lib.Symbol, ts.Tuple2<PropertyName, Dynamic>, (value:Dynamic) -> Any, haxe.DynamicAccess<Dynamic>, List_<Any>>>):Collection<Dynamic> { })
		function intersectionBy<T2>(values:List_<T2>, iteratee:ValueIteratee<Dynamic>):Collection<Dynamic>;
		@:overload(function(values:haxe.extern.Rest<ts.AnyOf2<List_<Any>, Comparator2<Dynamic, ts.Never>>>):Collection<Dynamic> { })
		function intersectionWith<T2>(values:List_<T2>, comparator:Comparator2<Dynamic, T2>):Collection<Dynamic>;
		dynamic function join(?separator:String):String;
		@:overload(function():Null<String> { })
		dynamic function last():Dynamic;
		function lastIndexOf(value:Dynamic, ?fromIndex:ts.AnyOf2<Float, Bool>):Float;
		function nth(?n:Float):Dynamic;
		function pull(values:haxe.extern.Rest<Dynamic>):Collection<Dynamic>;
		function pullAll(?values:List_<Dynamic>):Collection<Dynamic>;
		function pullAllBy<T2>(?values:List_<T2>, ?iteratee:ValueIteratee<Dynamic>):Collection<Dynamic>;
		function pullAllWith<T2>(?values:List_<T2>, ?comparator:Comparator2<Dynamic, T2>):Collection<Dynamic>;
		function pullAt(indexes:haxe.extern.Rest<Many<Float>>):Collection<Dynamic>;
		function remove(?predicate:ListIteratee<Dynamic>):Collection<Dynamic>;
		function slice(?start:Float, ?end:Float):Collection<Dynamic>;
		@:overload(function(value:Dynamic):Float { })
		function sortedIndex(value:Dynamic):Float;
		function sortedIndexBy(value:Dynamic, ?iteratee:ValueIteratee<Dynamic>):Float;
		function sortedIndexOf(value:Dynamic):Float;
		function sortedLastIndex(value:Dynamic):Float;
		function sortedLastIndexBy(value:Dynamic, iteratee:ValueIteratee<Dynamic>):Float;
		function sortedLastIndexOf(value:Dynamic):Float;
		function sortedUniq():Collection<Dynamic>;
		function sortedUniqBy(iteratee:ValueIteratee<Dynamic>):Collection<Dynamic>;
		function tail():Collection<Dynamic>;
		function take(?n:Float):Collection<Dynamic>;
		function takeRight(?n:Float):Collection<Dynamic>;
		function takeRightWhile(?predicate:ListIteratee<Dynamic>):Collection<Dynamic>;
		function takeWhile(?predicate:ListIteratee<Dynamic>):Collection<Dynamic>;
		function union(arrays:haxe.extern.Rest<Null<List_<Dynamic>>>):Collection<Dynamic>;
		@:overload(function(iteratee:haxe.extern.Rest<Null<ts.AnyOf7<String, Float, js.lib.Symbol, List_<Dynamic>, ts.Tuple2<PropertyName, Dynamic>, (value:Dynamic) -> Any, haxe.DynamicAccess<Dynamic>>>>):Collection<Dynamic> { })
		function unionBy(arrays2:Null<List_<Dynamic>>, ?iteratee:ValueIteratee<Dynamic>):Collection<Dynamic>;
		@:overload(function(comparator:haxe.extern.Rest<Null<ts.AnyOf2<List_<Dynamic>, Comparator<Dynamic>>>>):Collection<Dynamic> { })
		function unionWith(arrays2:Null<List_<Dynamic>>, ?comparator:Comparator<Dynamic>):Collection<Dynamic>;
		function uniq():Collection<Dynamic>;
		function uniqBy(iteratee:ValueIteratee<Dynamic>):Collection<Dynamic>;
		function uniqWith(?comparator:Comparator<Dynamic>):Collection<Dynamic>;
		function unzip():Any;
		@:overload(function():Any { })
		function unzipWith<TResult>(iteratee:(values:haxe.extern.Rest<Any>) -> TResult):Collection<TResult>;
		function without(values:haxe.extern.Rest<Dynamic>):Collection<Dynamic>;
		function xor(arrays:haxe.extern.Rest<Null<List_<Dynamic>>>):Collection<Dynamic>;
		@:overload(function(iteratee:haxe.extern.Rest<Null<ts.AnyOf7<String, Float, js.lib.Symbol, List_<Dynamic>, ts.Tuple2<PropertyName, Dynamic>, (value:Dynamic) -> Any, haxe.DynamicAccess<Dynamic>>>>):Collection<Dynamic> { })
		function xorBy(arrays2:Null<List_<Dynamic>>, ?iteratee:ValueIteratee<Dynamic>):Collection<Dynamic>;
		@:overload(function(comparator:haxe.extern.Rest<Null<ts.AnyOf2<List_<Dynamic>, Comparator<Dynamic>>>>):Collection<Dynamic> { })
		function xorWith(arrays2:Null<List_<Dynamic>>, ?comparator:Comparator<Dynamic>):Collection<Dynamic>;
		@:overload(function(arrays:haxe.extern.Rest<Null<List_<Dynamic>>>):Collection<Array<Dynamic>> { })
		function zip<T2>(arrays2:List_<T2>):Collection<ts.Tuple2<Dynamic, Null<T2>>>;
		@:overload(function():Object<Dictionary<Null<Any>>> { })
		function zipObject<U>(values:List_<U>):Object<Dictionary<U>>;
		function zipObjectDeep(?values:List_<Dynamic>):Object<Dynamic>;
		@:overload(function<T2, T3, TResult>(arrays2:List_<T2>, arrays3:List_<T3>, iteratee:(value1:Dynamic, value2:T2, value3:T3) -> TResult):Collection<TResult> { })
		@:overload(function<TResult>(iteratee:haxe.extern.Rest<Null<ts.AnyOf2<List_<Dynamic>, (group:haxe.extern.Rest<Dynamic>) -> TResult>>>):Collection<TResult> { })
		function zipWith<T2, TResult>(arrays2:List_<T2>, iteratee:(value1:Dynamic, value2:T2) -> TResult):Collection<TResult>;
		@:overload(function(?iteratee:ValueIteratee<String>):Object<Dictionary<Float>> { })
		dynamic function countBy(?iteratee:ValueIteratee<Dynamic>):Object<Dictionary<Float>>;
		@:overload(function(?iteratee:ObjectIterator<Dynamic, Dynamic>):Object<Dynamic> { })
		@:overload(function(?iteratee:StringIterator<Dynamic>):String_ { })
		dynamic function each(?iteratee:ListIterator<Dynamic, Dynamic>):Collection<Dynamic>;
		@:overload(function(?iteratee:ObjectIterator<Dynamic, Dynamic>):Object<Dynamic> { })
		@:overload(function(?iteratee:StringIterator<Dynamic>):String_ { })
		dynamic function eachRight(?iteratee:ListIterator<Dynamic, Dynamic>):Collection<Dynamic>;
		@:overload(function(?predicate:ObjectIterateeCustom<Dynamic, Bool>):Bool { })
		dynamic function every(?predicate:ListIterateeCustom<Dynamic, Bool>):Bool;
		@:overload(function(?predicate:ListIterateeCustom<Dynamic, Bool>):Collection<Dynamic> { })
		@:overload(function<S:(Dynamic)>(predicate:ObjectIteratorTypeGuard<Dynamic, S>):Collection<S> { })
		@:overload(function(?predicate:ObjectIterateeCustom<Dynamic, Bool>):Collection<Dynamic> { })
		@:overload(function(?predicate:StringIterator<Bool>):Collection<String> { })
		dynamic function filter<S:(Dynamic)>(predicate:ListIteratorTypeGuard<Dynamic, S>):Collection<S>;
		@:overload(function(?predicate:ListIterateeCustom<Dynamic, Bool>, ?fromIndex:Float):Dynamic { })
		@:overload(function<S:(Dynamic)>(predicate:ObjectIteratorTypeGuard<Dynamic, S>, ?fromIndex:Float):Null<S> { })
		@:overload(function(?predicate:ObjectIterateeCustom<Dynamic, Bool>, ?fromIndex:Float):Dynamic { })
		dynamic function find<S:(Dynamic)>(predicate:ListIteratorTypeGuard<Dynamic, S>, ?fromIndex:Float):Null<S>;
		@:overload(function(?predicate:ListIterateeCustom<Dynamic, Bool>, ?fromIndex:Float):Dynamic { })
		@:overload(function<S:(Dynamic)>(predicate:ObjectIteratorTypeGuard<Dynamic, S>, ?fromIndex:Float):Null<S> { })
		@:overload(function(?predicate:ObjectIterateeCustom<Dynamic, Bool>, ?fromIndex:Float):Dynamic { })
		dynamic function findLast<S:(Dynamic)>(predicate:ListIteratorTypeGuard<Dynamic, S>, ?fromIndex:Float):Null<S>;
		@:overload(function(iteratee:ts.AnyOf2<Dynamic, ts.Tuple2<PropertyName, Dynamic>>):Collection<Bool> { })
		@:overload(function():Collection<Dynamic> { })
		@:overload(function<TResult>(iteratee:ts.AnyOf4<String, Float, js.lib.Symbol, ObjectIterator<Dynamic, Many<TResult>>>):Collection<TResult> { })
		@:overload(function<TResult>(iteratee:StringIterator<Many<TResult>>):Collection<TResult> { })
		@:overload(function():Collection<String> { })
		dynamic function flatMap<TResult>(iteratee:ts.AnyOf4<String, Float, js.lib.Symbol, ListIterator<Dynamic, Many<TResult>>>):Collection<TResult>;
		@:overload(function(iteratee:ts.AnyOf2<Dynamic, ts.Tuple2<PropertyName, Dynamic>>):Collection<Bool> { })
		@:overload(function():Collection<Dynamic> { })
		@:overload(function<TResult>(iteratee:ts.AnyOf4<String, Float, js.lib.Symbol, ObjectIterator<Dynamic, ts.AnyOf2<ListOfRecursiveArraysOrValues<TResult>, TResult>>>):Collection<TResult> { })
		@:overload(function<TResult>(iteratee:StringIterator<ts.AnyOf2<ListOfRecursiveArraysOrValues<TResult>, TResult>>):Collection<TResult> { })
		@:overload(function():Collection<String> { })
		dynamic function flatMapDeep<TResult>(iteratee:ts.AnyOf4<String, Float, js.lib.Symbol, ListIterator<Dynamic, ts.AnyOf2<ListOfRecursiveArraysOrValues<TResult>, TResult>>>):Collection<TResult>;
		@:overload(function(iteratee:ts.AnyOf2<Dynamic, ts.Tuple2<PropertyName, Dynamic>>, ?depth:Float):Collection<Bool> { })
		@:overload(function(?depth:Float):Collection<Dynamic> { })
		@:overload(function<TResult>(iteratee:ts.AnyOf4<String, Float, js.lib.Symbol, ObjectIterator<Dynamic, ts.AnyOf2<ListOfRecursiveArraysOrValues<TResult>, TResult>>>, ?depth:Float):Collection<TResult> { })
		@:overload(function<TResult>(iteratee:StringIterator<ts.AnyOf2<ListOfRecursiveArraysOrValues<TResult>, TResult>>, ?depth:Float):Collection<TResult> { })
		@:overload(function(?depth:Float):Collection<String> { })
		dynamic function flatMapDepth<TResult>(iteratee:ts.AnyOf4<String, Float, js.lib.Symbol, ListIterator<Dynamic, ts.AnyOf2<ListOfRecursiveArraysOrValues<TResult>, TResult>>>, ?depth:Float):Collection<TResult>;
		@:overload(function(?iteratee:ObjectIterator<Dynamic, Dynamic>):Object<Dynamic> { })
		@:overload(function(?iteratee:StringIterator<Dynamic>):String_ { })
		dynamic function forEach(?iteratee:ListIterator<Dynamic, Dynamic>):Collection<Dynamic>;
		@:overload(function(?iteratee:ObjectIterator<Dynamic, Dynamic>):Object<Dynamic> { })
		@:overload(function(?iteratee:StringIterator<Dynamic>):String_ { })
		dynamic function forEachRight(?iteratee:ListIterator<Dynamic, Dynamic>):Collection<Dynamic>;
		@:overload(function(?iteratee:ValueIteratee<String>):Object<Dictionary<Array<String>>> { })
		dynamic function groupBy(?iteratee:ValueIteratee<Dynamic>):Object<Dictionary<Array<Dynamic>>>;
		@:overload(function(target:String, ?fromIndex:Float):Bool { })
		dynamic function includes(target:Dynamic, ?fromIndex:Float):Bool;
		@:overload(function(?iteratee:ValueIterateeCustom<String, PropertyName>):Object<Dictionary<String>> { })
		dynamic function keyBy(?iteratee:ValueIterateeCustom<Dynamic, PropertyName>):Object<Dictionary<Dynamic>>;
		@:overload(function<TResult>(iteratee:ListIterator<Dynamic, TResult>):Collection<TResult> { })
		@:overload(function(iteratee:PropertyName):Collection<Dynamic> { })
		@:overload(function(iteratee:ts.AnyOf2<Dynamic, ts.Tuple2<PropertyName, Dynamic>>):Collection<Bool> { })
		@:overload(function():Collection<Dynamic> { })
		@:overload(function<TResult>(iteratee:ObjectIterator<Dynamic, TResult>):Collection<TResult> { })
		@:overload(function<TResult>(iteratee:StringIterator<TResult>):Collection<TResult> { })
		@:overload(function():Collection<String> { })
		dynamic function map<K:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(key:K):Collection<Dynamic>;
		@:overload(function(?iteratees:Many<ObjectIterator<Dynamic, Any>>, ?orders:Many<ts.AnyOf2<Bool, String>>):Collection<Dynamic> { })
		dynamic function orderBy(?iteratees:Many<ts.AnyOf5<String, Float, js.lib.Symbol, haxe.DynamicAccess<Dynamic>, ListIterator<Dynamic, Any>>>, ?orders:Many<ts.AnyOf2<Bool, String>>):Collection<Dynamic>;
		@:overload(function(callback:ValueIteratee<Dynamic>):LoDashImplicitWrapper<ts.Tuple2<Array<Dynamic>, Array<Dynamic>>> { })
		@:overload(function(callback:StringIterator<Any>):LoDashImplicitWrapper<ts.Tuple2<Array<String>, Array<String>>> { })
		dynamic function partition<U:(Dynamic)>(callback:ValueIteratorTypeGuard<Dynamic, U>):LoDashImplicitWrapper<ts.Tuple2<Array<U>, Array<{ }>>>;
		@:overload(function(callback:MemoListIterator<Dynamic, Dynamic, List_<Dynamic>>):Dynamic { })
		@:overload(function<TResult>(callback:MemoObjectIterator<Dynamic, TResult, Dynamic>, accumulator:TResult):TResult { })
		@:overload(function(callback:MemoObjectIterator<Dynamic, Dynamic, Dynamic>):Dynamic { })
		dynamic function reduce<TResult>(callback:MemoListIterator<Dynamic, TResult, List_<Dynamic>>, accumulator:TResult):TResult;
		@:overload(function(callback:MemoListIterator<Dynamic, Dynamic, List_<Dynamic>>):Dynamic { })
		@:overload(function<TResult>(callback:MemoObjectIterator<Dynamic, TResult, Dynamic>, accumulator:TResult):TResult { })
		@:overload(function(callback:MemoObjectIterator<Dynamic, Dynamic, Dynamic>):Dynamic { })
		dynamic function reduceRight<TResult>(callback:MemoListIterator<Dynamic, TResult, List_<Dynamic>>, accumulator:TResult):TResult;
		@:overload(function(?predicate:ObjectIterateeCustom<Dynamic, Bool>):Collection<Dynamic> { })
		@:overload(function(?predicate:StringIterator<Bool>):Collection<String> { })
		dynamic function reject(?predicate:ListIterateeCustom<Dynamic, Bool>):Collection<Dynamic>;
		@:overload(function():Null<String> { })
		dynamic function sample():Dynamic;
		@:overload(function(?n:Float):Collection<String> { })
		dynamic function sampleSize(?n:Float):Collection<Dynamic>;
		@:overload(function():Collection<String> { })
		dynamic function shuffle():Collection<Dynamic>;
		@:overload(function(?predicate:ObjectIterateeCustom<Dynamic, Bool>):Bool { })
		dynamic function some(?predicate:ListIterateeCustom<Dynamic, Bool>):Bool;
		@:overload(function(iteratees:haxe.extern.Rest<Many<ObjectIteratee<Dynamic>>>):Collection<Dynamic> { })
		dynamic function sortBy(iteratees:haxe.extern.Rest<Many<ListIteratee<Dynamic>>>):Collection<Dynamic>;
		@:overload(function():Collection<String> { })
		dynamic function castArray():Collection<Dynamic>;
		@:overload(function():Collection<String> { })
		dynamic function toArray():Collection<Dynamic>;
		function max():Dynamic;
		function maxBy(?iteratee:ValueIteratee<Dynamic>):Dynamic;
		function meanBy(?iteratee:ValueIteratee<Dynamic>):Float;
		function min():Dynamic;
		function minBy(?iteratee:ValueIteratee<Dynamic>):Dynamic;
		function sumBy(?iteratee:ts.AnyOf2<String, (value:Dynamic) -> Float>):Float;
		dynamic function at(props:haxe.extern.Rest<PropertyPath>):Collection<Dynamic>;
		@:overload(function<TDefault>(path:Float, defaultValue:TDefault):Dynamic { })
		@:overload(function<TKey:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(path:ts.AnyOf2<TKey, ts.Tuple1<TKey>>):Dynamic { })
		@:overload(function<TKey:(ts.AnyOf3<String, Float, js.lib.Symbol>), TDefault>(path:ts.AnyOf2<TKey, ts.Tuple1<TKey>>, defaultValue:TDefault):Dynamic { })
		@:overload(function<TKey1:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey2:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(path:ts.Tuple2<TKey1, TKey2>):Dynamic { })
		@:overload(function<TKey1:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey2:(ts.AnyOf3<String, Float, js.lib.Symbol>), TDefault>(path:ts.Tuple2<TKey1, TKey2>, defaultValue:TDefault):Dynamic { })
		@:overload(function<TKey1:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey2:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey3:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(path:ts.Tuple3<TKey1, TKey2, TKey3>):Dynamic { })
		@:overload(function<TKey1:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey2:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey3:(ts.AnyOf3<String, Float, js.lib.Symbol>), TDefault>(path:ts.Tuple3<TKey1, TKey2, TKey3>, defaultValue:TDefault):Dynamic { })
		@:overload(function<TKey1:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey2:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey3:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey4:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(path:ts.Tuple4<TKey1, TKey2, TKey3, TKey4>):Dynamic { })
		@:overload(function<TKey1:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey2:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey3:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey4:(ts.AnyOf3<String, Float, js.lib.Symbol>), TDefault>(path:ts.Tuple4<TKey1, TKey2, TKey3, TKey4>, defaultValue:TDefault):Dynamic { })
		@:overload(function(path:PropertyPath, ?defaultValue:Dynamic):Dynamic { })
		@:overload(function(path:ts.AnyOf2<Float, Array<Float>>):String { })
		@:overload(function(path:ts.AnyOf2<Float, Array<Float>>, defaultValue:String):String { })
		dynamic function get(path:Float):Dynamic;
		@:overload(function(?iteratee:ValueIteratee<String>):Object<Dictionary<Array<String>>> { })
		dynamic function invertBy(?iteratee:ValueIteratee<Dynamic>):Object<Dictionary<Array<String>>>;
		@:overload(function(?iteratee:ObjectIteratee<Dynamic>):Object<Dictionary<Dynamic>> { })
		dynamic function mapKeys(?iteratee:ListIteratee<Dynamic>):Object<Dictionary<Dynamic>>;
		@:overload(function<TKey:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(iteratee:TKey):Object<Dictionary<Dynamic>> { })
		@:overload(function(iteratee:Dynamic):Object<Dictionary<Bool>> { })
		@:overload(function(iteratee:String):Object<Dictionary<Dynamic>> { })
		@:overload(function():Object<Dictionary<Dynamic>> { })
		@:overload(function<TResult>(callback:ObjectIterator<Dynamic, TResult>):Object<Dynamic> { })
		@:overload(function():Object<Dynamic> { })
		@:overload(function<TResult>(callback:StringIterator<TResult>):Object<NumericDictionary<TResult>> { })
		@:overload(function():Object<NumericDictionary<String>> { })
		dynamic function mapValues<TResult>(callback:DictionaryIterator<Dynamic, TResult>):Object<Dictionary<TResult>>;
		@:overload(function<K:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(paths:haxe.extern.Rest<Many<K>>):Object<{ }> { })
		@:overload(function(paths:haxe.extern.Rest<Many<ts.AnyOf5<String, Float, js.lib.Symbol, ts.Tuple2<PropertyName, Dynamic>, haxe.DynamicAccess<Dynamic>>>>):Object<Dynamic> { })
		dynamic function omit(paths:haxe.extern.Rest<Many<PropertyName>>):Collection<Dynamic>;
		@:overload(function(predicate:ValueKeyIteratee<Dynamic>):Object<Dynamic> { })
		dynamic function omitBy(?predicate:ValueKeyIteratee<Dynamic>):Object<Dictionary<Dynamic>>;
		@:overload(function(?predicate:ValueKeyIteratee<Dynamic>):Object<Dictionary<Dynamic>> { })
		@:overload(function<S:(Dynamic)>(predicate:ValueKeyIterateeTypeGuard<Dynamic, S>):Object<NumericDictionary<S>> { })
		dynamic function pickBy<S:(Dynamic)>(predicate:ValueKeyIterateeTypeGuard<Dynamic, S>):Object<Dictionary<S>>;
		@:overload(function():Collection<Dynamic> { })
		@:overload(function<TResult>(iteratee:MemoVoidDictionaryIterator<Dynamic, TResult>, ?accumulator:TResult):ImpChain<TResult> { })
		@:overload(function():ts.AnyOf6<Function<Dynamic>, Object<Dynamic>, Primitive<Dynamic>, String_, Dynamic, Collection<Any>> { })
		dynamic function transform<TResult>(iteratee:MemoVoidArrayIterator<Dynamic, TResult>, ?accumulator:TResult):ImpChain<TResult>;
		@:overload(function():FunctionChain<Dynamic> { })
		@:overload(function():ObjectChain<Dynamic> { })
		@:overload(function():PrimitiveChain<Dynamic> { })
		@:overload(function():StringChain { })
		dynamic function chain():CollectionChain<Dynamic>;
		@:overload(function():Function<Dynamic> { })
		@:overload(function():Function<(o:Dynamic) -> Bool> { })
		@:overload(function():Function<(o:Dynamic) -> Dynamic> { })
		dynamic function iteratee():Function<(o:Dynamic) -> Bool>;
		@:overload(function<TResult>(iteratees:haxe.extern.Rest<Many<(args:haxe.extern.Rest<Dynamic>) -> TResult>>):Function<(args:haxe.extern.Rest<Dynamic>) -> Array<Dynamic>> { })
		dynamic function over<TResult>(iteratees:haxe.extern.Rest<Many<(args:haxe.extern.Rest<Dynamic>) -> TResult>>):Function<(args:haxe.extern.Rest<Dynamic>) -> Array<TResult>>;
		@:overload(function<TArgs>(iteratees:haxe.extern.Rest<Many<(args:haxe.extern.Rest<TArgs>) -> Bool>>):Function<(args:haxe.extern.Rest<Any>) -> Bool> { })
		dynamic function overEvery<TArgs>(iteratees:haxe.extern.Rest<Many<(args:haxe.extern.Rest<TArgs>) -> Bool>>):Function<(args:haxe.extern.Rest<TArgs>) -> Bool>;
		@:overload(function<TArgs>(iteratees:haxe.extern.Rest<Many<(args:haxe.extern.Rest<TArgs>) -> Bool>>):Function<(args:haxe.extern.Rest<Any>) -> Bool> { })
		dynamic function overSome<TArgs>(iteratees:haxe.extern.Rest<Many<(args:haxe.extern.Rest<TArgs>) -> Bool>>):Function<(args:haxe.extern.Rest<TArgs>) -> Bool>;
		@:overload(function<TResult>(method:(args:haxe.extern.Rest<Dynamic>) -> TResult, args:haxe.extern.Rest<Dynamic>):Collection<TResult> { })
		dynamic function invokeMap(methodName:String, args:haxe.extern.Rest<Dynamic>):Collection<Dynamic>;
		dynamic function size():Float;
		dynamic function now():Float;
		dynamic function bind(thisArg:Dynamic, partials:haxe.extern.Rest<Dynamic>):Function<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
		dynamic function bindKey(key:String, partials:haxe.extern.Rest<Dynamic>):Function<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
		dynamic function defer(args:haxe.extern.Rest<Dynamic>):Primitive<Float>;
		dynamic function delay(wait:Float, args:haxe.extern.Rest<Dynamic>):Primitive<Float>;
		@:overload(function<TArgs, TResult>(wrapper:(value:Dynamic, args:haxe.extern.Rest<TArgs>) -> TResult):Function<(args:haxe.extern.Rest<TArgs>) -> TResult> { })
		@:overload(function<TArgs, TResult>(wrapper:(value:String, args:haxe.extern.Rest<TArgs>) -> TResult):Function<(args:haxe.extern.Rest<TArgs>) -> TResult> { })
		dynamic function wrap<TArgs, TResult>(wrapper:(value:Array<Dynamic>, args:haxe.extern.Rest<TArgs>) -> TResult):Function<(args:haxe.extern.Rest<TArgs>) -> TResult>;
		@:overload(function():Dynamic { })
		@:overload(function():String { })
		dynamic function clone():Array<Dynamic>;
		@:overload(function():Dynamic { })
		@:overload(function():String { })
		dynamic function cloneDeep():Array<Dynamic>;
		@:overload(function():Array<Dynamic> { })
		@:overload(function(customizer:CloneDeepWithCustomizer<Dynamic>):Dynamic { })
		@:overload(function():Dynamic { })
		@:overload(function(customizer:CloneDeepWithCustomizer<String>):Dynamic { })
		@:overload(function():String { })
		dynamic function cloneDeepWith(customizer:CloneDeepWithCustomizer<Array<Dynamic>>):Dynamic;
		@:overload(function<TResult>(customizer:CloneWithCustomizer<Array<Dynamic>, Null<TResult>>):ts.AnyOf2<Array<Dynamic>, TResult> { })
		@:overload(function():Array<Dynamic> { })
		@:overload(function<TResult:(Null<ts.AnyOf4<String, Float, Bool, Dynamic>>)>(customizer:CloneWithCustomizer<Dynamic, TResult>):TResult { })
		@:overload(function<TResult>(customizer:CloneWithCustomizer<Dynamic, Null<TResult>>):Dynamic { })
		@:overload(function():Dynamic { })
		@:overload(function<TResult:(Null<ts.AnyOf4<String, Float, Bool, Dynamic>>)>(customizer:CloneWithCustomizer<String, TResult>):TResult { })
		@:overload(function<TResult>(customizer:CloneWithCustomizer<String, Null<TResult>>):ts.AnyOf2<String, TResult> { })
		@:overload(function():String { })
		dynamic function cloneWith<TResult:(Null<ts.AnyOf4<String, Float, Bool, Dynamic>>)>(customizer:CloneWithCustomizer<Array<Dynamic>, TResult>):TResult;
		@:overload(function(source:haxe.DynamicAccess<Dynamic>):Bool { })
		@:overload(function(source:String):Bool { })
		dynamic function conformsTo(source:Array<Dynamic>):Bool;
		dynamic function eq(other:Dynamic):Bool;
		dynamic function gt(other:Dynamic):Bool;
		dynamic function gte(other:Dynamic):Bool;
		dynamic function isArguments():Bool;
		dynamic function isArray():Bool;
		dynamic function isArrayBuffer():Bool;
		dynamic function isArrayLike():Bool;
		dynamic function isArrayLikeObject():Bool;
		dynamic function isBoolean():Bool;
		dynamic function isBuffer():Bool;
		dynamic function isDate():Bool;
		dynamic function isElement():Bool;
		dynamic function isEmpty():Bool;
		dynamic function isEqual(other:Dynamic):Bool;
		dynamic function isEqualWith(other:Dynamic, ?customizer:IsEqualCustomizer):Bool;
		dynamic function isError():Bool;
		dynamic function isFinite():Bool;
		dynamic function isFunction():Bool;
		dynamic function isInteger():Bool;
		dynamic function isLength():Bool;
		dynamic function isMap():Bool;
		dynamic function isMatch(source:Dynamic):Bool;
		dynamic function isMatchWith(source:Dynamic, customizer:IsMatchWithCustomizer):Bool;
		dynamic function isNaN():Bool;
		dynamic function isNative():Bool;
		dynamic function isNil():Bool;
		dynamic function isNull():Bool;
		dynamic function isNumber():Bool;
		dynamic function isObject():Bool;
		dynamic function isObjectLike():Bool;
		dynamic function isPlainObject():Bool;
		dynamic function isRegExp():Bool;
		dynamic function isSafeInteger():Bool;
		dynamic function isSet():Bool;
		dynamic function isString():Bool;
		dynamic function isSymbol():Bool;
		dynamic function isTypedArray():Bool;
		dynamic function isUndefined():Bool;
		dynamic function isWeakMap():Bool;
		dynamic function isWeakSet():Bool;
		dynamic function lt(other:Dynamic):Bool;
		dynamic function lte(other:Dynamic):Bool;
		dynamic function toFinite():Float;
		dynamic function toInteger():Float;
		dynamic function toLength():Float;
		dynamic function toNumber():Float;
		dynamic function toPlainObject():Object<Dynamic>;
		dynamic function toSafeInteger():Float;
		dynamic function add(addend:Float):Float;
		dynamic function ceil(?precision:Float):Float;
		dynamic function divide(divisor:Float):Float;
		dynamic function floor(?precision:Float):Float;
		dynamic function mean():Float;
		dynamic function multiply(multiplicand:Float):Float;
		dynamic function round(?precision:Float):Float;
		dynamic function subtract(subtrahend:Float):Float;
		dynamic function sum():Float;
		@:overload(function(upper:Float):Float { })
		dynamic function clamp(lower:Float, upper:Float):Float;
		dynamic function inRange(start:Float, ?end:Float):Bool;
		@:overload(function(max:Float, ?floating:Bool):Float { })
		dynamic function random(?floating:Bool):Float;
		dynamic function entries():Collection<ts.Tuple2<String, Dynamic>>;
		dynamic function entriesIn():Collection<ts.Tuple2<String, Dynamic>>;
		@:overload(function(?predicate:ObjectIteratee<Dynamic>):Null<String> { })
		@:overload(function(?predicate:ObjectIteratee<String>):Null<String> { })
		dynamic function findKey(?predicate:ObjectIteratee<Array<Dynamic>>):Null<String>;
		@:overload(function(?predicate:ObjectIteratee<Dynamic>):Null<String> { })
		@:overload(function(?predicate:ObjectIteratee<String>):Null<String> { })
		dynamic function findLastKey(?predicate:ObjectIteratee<Array<Dynamic>>):Null<String>;
		@:overload(function(?iteratee:ObjectIterator<Dynamic, Dynamic>):Dynamic { })
		@:overload(function(?iteratee:ObjectIterator<String, Dynamic>):Dynamic { })
		dynamic function forIn(?iteratee:ObjectIterator<Array<Dynamic>, Dynamic>):Dynamic;
		@:overload(function(?iteratee:ObjectIterator<Dynamic, Dynamic>):Dynamic { })
		@:overload(function(?iteratee:ObjectIterator<String, Dynamic>):Dynamic { })
		dynamic function forInRight(?iteratee:ObjectIterator<Array<Dynamic>, Dynamic>):Dynamic;
		@:overload(function(?iteratee:ObjectIterator<Dynamic, Dynamic>):Dynamic { })
		@:overload(function(?iteratee:ObjectIterator<String, Dynamic>):Dynamic { })
		dynamic function forOwn(?iteratee:ObjectIterator<Array<Dynamic>, Dynamic>):Dynamic;
		@:overload(function(?iteratee:ObjectIterator<Dynamic, Dynamic>):Dynamic { })
		@:overload(function(?iteratee:ObjectIterator<String, Dynamic>):Dynamic { })
		dynamic function forOwnRight(?iteratee:ObjectIterator<Array<Dynamic>, Dynamic>):Dynamic;
		dynamic function functions():Collection<String>;
		dynamic function functionsIn():Collection<String>;
		dynamic function has(path:PropertyPath):Bool;
		dynamic function hasIn(path:PropertyPath):Bool;
		dynamic function invert():Object<Dictionary<String>>;
		dynamic function invoke(path:PropertyPath, args:haxe.extern.Rest<Dynamic>):Dynamic;
		dynamic function keys():Collection<String>;
		dynamic function keysIn():Collection<String>;
		dynamic function result<TResult>(path:PropertyPath, ?defaultValue:ts.AnyOf2<(args:haxe.extern.Rest<Dynamic>) -> TResult, TResult>):TResult;
		@:overload(function<TResult>(path:PropertyPath, value:Dynamic):ImpChain<TResult> { })
		dynamic function set(path:PropertyPath, value:Dynamic):Dynamic;
		@:overload(function<TResult>(path:PropertyPath, value:Dynamic, ?customizer:SetWithCustomizer<Array<Dynamic>>):ImpChain<TResult> { })
		@:overload(function(path:PropertyPath, value:Dynamic, ?customizer:SetWithCustomizer<Dynamic>):Dynamic { })
		@:overload(function<TResult>(path:PropertyPath, value:Dynamic, ?customizer:SetWithCustomizer<Dynamic>):ImpChain<TResult> { })
		@:overload(function(path:PropertyPath, value:Dynamic, ?customizer:SetWithCustomizer<String>):Dynamic { })
		@:overload(function<TResult>(path:PropertyPath, value:Dynamic, ?customizer:SetWithCustomizer<String>):ImpChain<TResult> { })
		dynamic function setWith(path:PropertyPath, value:Dynamic, ?customizer:SetWithCustomizer<Array<Dynamic>>):Dynamic;
		@:overload(function():Collection<ts.Tuple2<String, String>> { })
		dynamic function toPairs():Collection<ts.Tuple2<String, Dynamic>>;
		@:overload(function():Collection<ts.Tuple2<String, String>> { })
		dynamic function toPairsIn():Collection<ts.Tuple2<String, Dynamic>>;
		dynamic function unset(path:PropertyPath):Primitive<Bool>;
		dynamic function update(path:PropertyPath, updater:(value:Dynamic) -> Dynamic):Object<Dynamic>;
		dynamic function commit():Dynamic;
		dynamic function plant(value:Any):Dynamic;
		dynamic function reverse():Dynamic;
		@:overload(function():Dynamic { })
		@:overload(function():String { })
		dynamic function toJSON():Array<Dynamic>;
		@:overload(function():Dynamic { })
		@:overload(function():String { })
		dynamic function value():Array<Dynamic>;
		@:overload(function():Dynamic { })
		@:overload(function():String { })
		dynamic function valueOf():Array<Dynamic>;
		@:overload(function(interceptor:(value:Dynamic) -> Void):Dynamic { })
		@:overload(function(interceptor:(value:String) -> Void):Dynamic { })
		dynamic function tap(interceptor:(value:Array<Dynamic>) -> Void):Dynamic;
		@:overload(function<TResult>(interceptor:(value:Dynamic) -> TResult):ImpChain<TResult> { })
		@:overload(function<TResult>(interceptor:(value:String) -> TResult):ImpChain<TResult> { })
		dynamic function thru<TResult>(interceptor:(value:Array<Dynamic>) -> TResult):ImpChain<TResult>;
		dynamic function camelCase():String;
		dynamic function capitalize():String;
		dynamic function deburr():String;
		dynamic function endsWith(?target:String, ?position:Float):Bool;
		dynamic function escape():String;
		dynamic function escapeRegExp():String;
		dynamic function kebabCase():String;
		dynamic function lowerCase():String;
		dynamic function lowerFirst():String;
		dynamic function pad(?length:Float, ?chars:String):String;
		dynamic function padEnd(?length:Float, ?chars:String):String;
		dynamic function padStart(?length:Float, ?chars:String):String;
		dynamic function parseInt(?radix:Float):Float;
		dynamic function repeat(?n:Float):String;
		@:overload(function(replacement:ts.AnyOf2<String, ReplaceFunction>):String { })
		dynamic function replace(pattern:ts.AnyOf2<String, js.lib.RegExp>, replacement:ts.AnyOf2<String, ReplaceFunction>):String;
		dynamic function snakeCase():String;
		dynamic function split(?separator:ts.AnyOf2<String, js.lib.RegExp>, ?limit:Float):Collection<String>;
		dynamic function startCase():String;
		dynamic function startsWith(?target:String, ?position:Float):Bool;
		dynamic function template(?options:TemplateOptions):TemplateExecutor;
		dynamic function toLower():String;
		dynamic function toUpper():String;
		dynamic function trim(?chars:String):String;
		dynamic function trimEnd(?chars:String):String;
		dynamic function trimStart(?chars:String):String;
		dynamic function truncate(?options:TruncateOptions):String;
		dynamic function unescape():String;
		dynamic function upperCase():String;
		dynamic function upperFirst():String;
		dynamic function words(?pattern:ts.AnyOf2<String, js.lib.RegExp>):Array<String>;
		dynamic function attempt<TResult>(args:haxe.extern.Rest<Dynamic>):ts.AnyOf2<js.lib.Error, TResult>;
		dynamic function bindAll(methodNames:haxe.extern.Rest<Many<String>>):Dynamic;
		@:overload(function():Function<(value:haxe.DynamicAccess<Dynamic>) -> Bool> { })
		@:overload(function():Function<(value:String) -> Bool> { })
		dynamic function conforms():Function<(value:Array<Dynamic>) -> Bool>;
		@:overload(function():Function<() -> Dynamic> { })
		@:overload(function():Function<() -> String> { })
		dynamic function constant():Function<() -> Array<Dynamic>>;
		@:overload(function<TDefault>(defaultValue:TDefault):ts.AnyOf2<Array<Dynamic>, TDefault> { })
		@:overload(function(defaultValue:Dynamic):Dynamic { })
		@:overload(function<TDefault>(defaultValue:TDefault):Dynamic { })
		@:overload(function(defaultValue:String):String { })
		@:overload(function<TDefault>(defaultValue:TDefault):ts.AnyOf2<String, TDefault> { })
		dynamic function defaultTo(defaultValue:Array<Dynamic>):Array<Dynamic>;
		@:overload(function():Dynamic { })
		@:overload(function():String { })
		dynamic function identity():Array<Dynamic>;
		dynamic function matches<V>():Function<(value:V) -> Bool>;
		@:overload(function<SrcValue, Value>(srcValue:SrcValue):Function<(value:Value) -> Bool> { })
		dynamic function matchesProperty<SrcValue>(srcValue:SrcValue):Function<(value:Dynamic) -> Bool>;
		dynamic function method(args:haxe.extern.Rest<Dynamic>):Function<(object:Dynamic) -> Dynamic>;
		dynamic function methodOf(args:haxe.extern.Rest<Dynamic>):LoDashImplicitWrapper<(path:PropertyPath) -> Dynamic>;
		@:overload(function(?options:MixinOptions):LoDashImplicitWrapper<LoDashStatic> { })
		dynamic function mixin(source:Dictionary<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>, ?options:MixinOptions):Dynamic;
		dynamic function noConflict():LoDashStatic;
		dynamic function noop(args:haxe.extern.Rest<Dynamic>):Void;
		dynamic function nthArg():Function<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
		dynamic function property<TObj, TResult>():Function<(obj:TObj) -> TResult>;
		dynamic function propertyOf():LoDashImplicitWrapper<(path:PropertyPath) -> Dynamic>;
		dynamic function range(?end:Float, ?step:Float):Collection<Float>;
		dynamic function rangeRight(?end:Float, ?step:Float):Collection<Float>;
		dynamic function runInContext():LoDashStatic;
		dynamic function stubArray():Array<Dynamic>;
		dynamic function stubFalse():Bool;
		dynamic function stubObject():Dynamic;
		dynamic function stubString():String;
		dynamic function stubTrue():Bool;
		@:overload(function():Array<Float> { })
		dynamic function times<TResult>(iteratee:(num:Float) -> TResult):Array<TResult>;
		dynamic function toPath():Collection<String>;
		dynamic function uniqueId():String;
		function ary(?n:Float):Function<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
		function curry(?arity:Float):ts.AnyOf6<Function<CurriedFunction1<Any, Any>>, Function<CurriedFunction2<Any, Any, Any>>, Function<CurriedFunction3<Any, Any, Any, Any>>, Function<CurriedFunction4<Any, Any, Any, Any, Any>>, Function<CurriedFunction5<Any, Any, Any, Any, Any, Any>>, Function<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>>;
		function curryRight(?arity:Float):ts.AnyOf6<Function<RightCurriedFunction1<Any, Any>>, Function<RightCurriedFunction2<Any, Any, Any>>, Function<RightCurriedFunction3<Any, Any, Any, Any>>, Function<RightCurriedFunction4<Any, Any, Any, Any, Any>>, Function<RightCurriedFunction5<Any, Any, Any, Any, Any, Any>>, Function<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>>;
		function debounce(?wait:Float, ?options:DebounceSettings):Function<DebouncedFunc<Dynamic>>;
		function flip():Dynamic;
		function memoize(?resolver:(args:haxe.extern.Rest<Dynamic>) -> Dynamic):Function<Dynamic>;
		function negate():Function<(args:haxe.extern.Rest<Any>) -> Bool>;
		function once():Function<Dynamic>;
		function overArgs(transforms:haxe.extern.Rest<Many<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>>):Function<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
		@:overload(function<T3>(plc1:LoDashStatic, plc2:LoDashStatic, arg3:T3):Function<Dynamic> { })
		@:overload(function<T1, T3>(arg1:T1, plc2:LoDashStatic, arg3:T3):Function<Dynamic> { })
		@:overload(function<T2, T3>(plc1:LoDashStatic, arg2:T2, arg3:T3):Function<Dynamic> { })
		@:overload(function<T3>(plc1:LoDashStatic, plc2:LoDashStatic, arg3:T3):Function<Dynamic> { })
		@:overload(function<T1, T4>(arg1:T1, plc2:LoDashStatic, plc3:LoDashStatic, arg4:T4):Function<Dynamic> { })
		@:overload(function<T2, T4>(plc1:LoDashStatic, arg2:T2, plc3:LoDashStatic, arg4:T4):Function<Dynamic> { })
		@:overload(function<T1, T2, T4>(arg1:T1, arg2:T2, plc3:LoDashStatic, arg4:T4):Function<Dynamic> { })
		@:overload(function<T3, T4>(plc1:LoDashStatic, plc2:LoDashStatic, arg3:T3, arg4:T4):Function<Dynamic> { })
		@:overload(function<T1, T3, T4>(arg1:T1, plc2:LoDashStatic, arg3:T3, arg4:T4):Function<Dynamic> { })
		@:overload(function<T2, T3, T4>(plc1:LoDashStatic, arg2:T2, arg3:T3, arg4:T4):Function<Dynamic> { })
		@:overload(function<T1, T2, T3, T4>(arg1:T1, arg2:T2, arg3:T3, arg4:T4):Function<Dynamic> { })
		@:overload(function<T1, T2, T3>(arg1:T1, arg2:T2, arg3:T3):Function<Dynamic> { })
		@:overload(function<T1, T2>(arg1:T1, arg2:T2):Function<Dynamic> { })
		@:overload(function<T1>(arg1:T1):Function<Dynamic> { })
		@:overload(function():Function<Dynamic> { })
		function partial<T2>(plc1:LoDashStatic, arg2:T2):Function<Dynamic>;
		@:overload(function<T2>(arg2:T2):Function<Dynamic> { })
		@:overload(function<T1>(arg1:T1, plc2:LoDashStatic, plc3:LoDashStatic):Function<Dynamic> { })
		@:overload(function<T2>(arg2:T2, plc3:LoDashStatic):Function<Dynamic> { })
		@:overload(function<T1, T2>(arg1:T1, arg2:T2, plc3:LoDashStatic):Function<Dynamic> { })
		@:overload(function<T3>(arg3:T3):Function<Dynamic> { })
		@:overload(function<T1, T3>(arg1:T1, plc2:LoDashStatic, arg3:T3):Function<Dynamic> { })
		@:overload(function<T2, T3>(arg2:T2, arg3:T3):Function<Dynamic> { })
		@:overload(function<T1>(arg1:T1, plc2:LoDashStatic, plc3:LoDashStatic, plc4:LoDashStatic):Function<Dynamic> { })
		@:overload(function<T2>(arg2:T2, plc3:LoDashStatic, plc4:LoDashStatic):Function<Dynamic> { })
		@:overload(function<T1, T2>(arg1:T1, arg2:T2, plc3:LoDashStatic, plc4:LoDashStatic):Function<Dynamic> { })
		@:overload(function<T3>(arg3:T3, plc4:LoDashStatic):Function<Dynamic> { })
		@:overload(function<T1, T3>(arg1:T1, plc2:LoDashStatic, arg3:T3, plc4:LoDashStatic):Function<Dynamic> { })
		@:overload(function<T2, T3>(arg2:T2, arg3:T3, plc4:LoDashStatic):Function<Dynamic> { })
		@:overload(function<T1, T2, T3>(arg1:T1, arg2:T2, arg3:T3, plc4:LoDashStatic):Function<Dynamic> { })
		@:overload(function<T4>(arg4:T4):Function<Dynamic> { })
		@:overload(function<T1, T4>(arg1:T1, plc2:LoDashStatic, plc3:LoDashStatic, arg4:T4):Function<Dynamic> { })
		@:overload(function<T2, T4>(arg2:T2, plc3:LoDashStatic, arg4:T4):Function<Dynamic> { })
		@:overload(function<T1, T2, T4>(arg1:T1, arg2:T2, plc3:LoDashStatic, arg4:T4):Function<Dynamic> { })
		@:overload(function<T3, T4>(arg3:T3, arg4:T4):Function<Dynamic> { })
		@:overload(function<T1, T3, T4>(arg1:T1, plc2:LoDashStatic, arg3:T3, arg4:T4):Function<Dynamic> { })
		@:overload(function<T2, T3, T4>(arg2:T2, arg3:T3, arg4:T4):Function<Dynamic> { })
		@:overload(function<TS:(Array<Dynamic>)>(ts:haxe.extern.Rest<Any>):Function<Dynamic> { })
		@:overload(function():Function<Dynamic> { })
		function partialRight<T1>(arg1:T1, plc2:LoDashStatic):Function<Dynamic>;
		function rearg(indexes:haxe.extern.Rest<Many<Float>>):Function<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
		function rest(?start:Float):Function<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
		function spread(?start:Float):Function<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
		function throttle(?wait:Float, ?options:ThrottleSettings):Function<DebouncedFunc<Dynamic>>;
		function unary():Function<(arg1:Any) -> Dynamic>;
		@:overload(function<R2, R3, R4, R5, R6, R7>(f2:(a:Dynamic) -> R2, f3:(a:R2) -> R3, f4:(a:R3) -> R4, f5:(a:R4) -> R5, f6:(a:R5) -> R6, f7:(a:R6) -> R7, func:haxe.extern.Rest<Many<(a:Dynamic) -> Dynamic>>):Function<(args:haxe.extern.Rest<Any>) -> Dynamic> { })
		@:overload(function<R2, R3, R4, R5, R6>(f2:(a:Dynamic) -> R2, f3:(a:R2) -> R3, f4:(a:R3) -> R4, f5:(a:R4) -> R5, f6:(a:R5) -> R6):Function<(args:haxe.extern.Rest<Any>) -> R6> { })
		@:overload(function<R2, R3, R4, R5>(f2:(a:Dynamic) -> R2, f3:(a:R2) -> R3, f4:(a:R3) -> R4, f5:(a:R4) -> R5):Function<(args:haxe.extern.Rest<Any>) -> R5> { })
		@:overload(function<R2, R3, R4>(f2:(a:Dynamic) -> R2, f3:(a:R2) -> R3, f4:(a:R3) -> R4):Function<(args:haxe.extern.Rest<Any>) -> R4> { })
		@:overload(function<R2, R3>(f2:(a:Dynamic) -> R2, f3:(a:R2) -> R3):Function<(args:haxe.extern.Rest<Any>) -> R3> { })
		@:overload(function<R2>(f2:(a:Dynamic) -> R2):Function<(args:haxe.extern.Rest<Any>) -> R2> { })
		@:overload(function(func:haxe.extern.Rest<Many<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>>):Function<(args:haxe.extern.Rest<Dynamic>) -> Dynamic> { })
		function flow<R2, R3, R4, R5, R6, R7>(f2:(a:Dynamic) -> R2, f3:(a:R2) -> R3, f4:(a:R3) -> R4, f5:(a:R4) -> R5, f6:(a:R5) -> R6, f7:(a:R6) -> R7):Function<(args:haxe.extern.Rest<Any>) -> R7>;
		@:overload(function<A:(Array<Dynamic>), R1, R2, R3, R4>(f5:(a:R4) -> Any, f4:(a:R3) -> R4, f3:(a:R2) -> R3, f2:(a:R1) -> R2, f1:(args:haxe.extern.Rest<Any>) -> R1):Function<(args:haxe.extern.Rest<Any>) -> Dynamic> { })
		@:overload(function<A:(Array<Dynamic>), R1, R2, R3>(f4:(a:R3) -> Any, f3:(a:R2) -> R3, f2:(a:R1) -> R2, f1:(args:haxe.extern.Rest<Any>) -> R1):Function<(args:haxe.extern.Rest<Any>) -> Dynamic> { })
		@:overload(function<A:(Array<Dynamic>), R1, R2>(f3:(a:R2) -> Any, f2:(a:R1) -> R2, f1:(args:haxe.extern.Rest<Any>) -> R1):Function<(args:haxe.extern.Rest<Any>) -> Dynamic> { })
		@:overload(function<A:(Array<Dynamic>), R1>(f2:(a:R1) -> Any, f1:(args:haxe.extern.Rest<Any>) -> R1):Function<(args:haxe.extern.Rest<Any>) -> Dynamic> { })
		@:overload(function<A:(Array<Dynamic>)>(f1:(args:haxe.extern.Rest<Any>) -> Any):Function<(args:haxe.extern.Rest<Any>) -> Dynamic> { })
		@:overload(function(func:haxe.extern.Rest<Many<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>>):Function<(args:haxe.extern.Rest<Dynamic>) -> Dynamic> { })
		function flowRight<A:(Array<Dynamic>), R1, R2, R3, R4, R5>(f6:(a:R5) -> Any, f5:(a:R4) -> R5, f4:(a:R3) -> R4, f3:(a:R2) -> R3, f2:(a:R1) -> R2, f1:(args:haxe.extern.Rest<Any>) -> R1):Function<(args:haxe.extern.Rest<Any>) -> Dynamic>;
		@:overload(function<TSource1, TSource2>(source1:TSource1, source2:TSource2):Object<Dynamic> { })
		@:overload(function<TSource1, TSource2, TSource3>(source1:TSource1, source2:TSource2, source3:TSource3):Object<Dynamic> { })
		@:overload(function<TSource1, TSource2, TSource3, TSource4>(source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4):Object<Dynamic> { })
		@:overload(function():Object<Dynamic> { })
		@:overload(function(otherArgs:haxe.extern.Rest<Dynamic>):Object<Dynamic> { })
		function assign<TSource>(source:TSource):Object<Dynamic>;
		@:overload(function<TSource1, TSource2>(source1:TSource1, source2:TSource2):Object<Dynamic> { })
		@:overload(function<TSource1, TSource2, TSource3>(source1:TSource1, source2:TSource2, source3:TSource3):Object<Dynamic> { })
		@:overload(function<TSource1, TSource2, TSource3, TSource4>(source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4):Object<Dynamic> { })
		@:overload(function():Object<Dynamic> { })
		@:overload(function<TResult>(otherArgs:haxe.extern.Rest<Dynamic>):Object<TResult> { })
		function assignIn<TSource>(source:TSource):Object<Dynamic>;
		@:overload(function<TSource1, TSource2>(source1:TSource1, source2:TSource2, customizer:AssignCustomizer):Object<Dynamic> { })
		@:overload(function<TSource1, TSource2, TSource3>(source1:TSource1, source2:TSource2, source3:TSource3, customizer:AssignCustomizer):Object<Dynamic> { })
		@:overload(function<TSource1, TSource2, TSource3, TSource4>(source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4, customizer:AssignCustomizer):Object<Dynamic> { })
		@:overload(function():Object<Dynamic> { })
		@:overload(function<TResult>(otherArgs:haxe.extern.Rest<Dynamic>):Object<TResult> { })
		function assignInWith<TSource>(source:TSource, customizer:AssignCustomizer):Object<Dynamic>;
		@:overload(function<TSource1, TSource2>(source1:TSource1, source2:TSource2, customizer:AssignCustomizer):Object<Dynamic> { })
		@:overload(function<TSource1, TSource2, TSource3>(source1:TSource1, source2:TSource2, source3:TSource3, customizer:AssignCustomizer):Object<Dynamic> { })
		@:overload(function<TSource1, TSource2, TSource3, TSource4>(source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4, customizer:AssignCustomizer):Object<Dynamic> { })
		@:overload(function():Object<Dynamic> { })
		@:overload(function<TResult>(otherArgs:haxe.extern.Rest<Dynamic>):Object<TResult> { })
		function assignWith<TSource>(source:TSource, customizer:AssignCustomizer):Object<Dynamic>;
		function create<U:(Dynamic)>(?properties:U):Object<Dynamic>;
		@:overload(function<TSource1, TSource2>(source1:TSource1, source2:TSource2):Object<Dynamic> { })
		@:overload(function<TSource1, TSource2, TSource3>(source1:TSource1, source2:TSource2, source3:TSource3):Object<Dynamic> { })
		@:overload(function<TSource1, TSource2, TSource3, TSource4>(source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4):Object<Dynamic> { })
		@:overload(function():Object<Dynamic> { })
		@:overload(function(sources:haxe.extern.Rest<Dynamic>):Object<Dynamic> { })
		function defaults<TSource>(source:TSource):Object<Dynamic>;
		function defaultsDeep(sources:haxe.extern.Rest<Dynamic>):Object<Dynamic>;
		@:overload(function<TSource1, TSource2>(source1:TSource1, source2:TSource2):Object<Dynamic> { })
		@:overload(function<TSource1, TSource2, TSource3>(source1:TSource1, source2:TSource2, source3:TSource3):Object<Dynamic> { })
		@:overload(function<TSource1, TSource2, TSource3, TSource4>(source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4):Object<Dynamic> { })
		@:overload(function():Object<Dynamic> { })
		@:overload(function(otherArgs:haxe.extern.Rest<Dynamic>):Object<Dynamic> { })
		function extend<TSource>(source:TSource):Object<Dynamic>;
		@:overload(function<TSource1, TSource2>(source1:TSource1, source2:TSource2, customizer:AssignCustomizer):Object<Dynamic> { })
		@:overload(function<TSource1, TSource2, TSource3>(source1:TSource1, source2:TSource2, source3:TSource3, customizer:AssignCustomizer):Object<Dynamic> { })
		@:overload(function<TSource1, TSource2, TSource3, TSource4>(source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4, customizer:AssignCustomizer):Object<Dynamic> { })
		@:overload(function():Object<Dynamic> { })
		@:overload(function(otherArgs:haxe.extern.Rest<Dynamic>):Object<Dynamic> { })
		function extendWith<TSource>(source:TSource, customizer:AssignCustomizer):Object<Dynamic>;
		@:overload(function<TSource1, TSource2>(source1:TSource1, source2:TSource2):Object<Dynamic> { })
		@:overload(function<TSource1, TSource2, TSource3>(source1:TSource1, source2:TSource2, source3:TSource3):Object<Dynamic> { })
		@:overload(function<TSource1, TSource2, TSource3, TSource4>(source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4):Object<Dynamic> { })
		@:overload(function(otherArgs:haxe.extern.Rest<Dynamic>):Object<Dynamic> { })
		function merge<TSource>(source:TSource):Object<Dynamic>;
		@:overload(function<TSource1, TSource2>(source1:TSource1, source2:TSource2, customizer:(value:Dynamic, srcValue:Dynamic, key:String, object:Dynamic, source:Dynamic) -> Dynamic):Object<Dynamic> { })
		@:overload(function<TSource1, TSource2, TSource3>(source1:TSource1, source2:TSource2, source3:TSource3, customizer:(value:Dynamic, srcValue:Dynamic, key:String, object:Dynamic, source:Dynamic) -> Dynamic):Object<Dynamic> { })
		@:overload(function<TSource1, TSource2, TSource3, TSource4>(source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4, customizer:(value:Dynamic, srcValue:Dynamic, key:String, object:Dynamic, source:Dynamic) -> Dynamic):Object<Dynamic> { })
		@:overload(function(otherArgs:haxe.extern.Rest<Dynamic>):Object<Dynamic> { })
		function mergeWith<TSource>(source:TSource, customizer:(value:Dynamic, srcValue:Dynamic, key:String, object:Dynamic, source:Dynamic) -> Dynamic):Object<Dynamic>;
		@:overload(function(props:haxe.extern.Rest<PropertyPath>):Object<Dynamic> { })
		function pick<U:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(props:haxe.extern.Rest<Many<U>>):Object<{ }>;
		@:overload(function<TResult>(path:PropertyPath, updater:(oldValue:Dynamic) -> Dynamic, ?customizer:SetWithCustomizer<Dynamic>):Object<TResult> { })
		function updateWith(path:PropertyPath, updater:(oldValue:Dynamic) -> Dynamic, ?customizer:SetWithCustomizer<Dynamic>):Dynamic;
		@:overload(function():Collection<String> { })
		dynamic function values():Collection<Dynamic>;
		@:overload(function():Collection<String> { })
		dynamic function valuesIn():Collection<Dynamic>;
		function after<TFunc:((args:haxe.extern.Rest<Dynamic>) -> Dynamic)>(func:TFunc):Function<TFunc>;
		function before<TFunc:((args:haxe.extern.Rest<Dynamic>) -> Dynamic)>(func:TFunc):Function<TFunc>;
	};
	/**
		The semantic version number.
	**/
	var VERSION : String;
	/**
		By default, the template delimiters used by Lo-Dash are similar to those in embedded Ruby
		(ERB). Change the following template settings to use alternative delimiters.
	**/
	var templateSettings : TemplateSettings;
	/**
		Creates an array of elements split into groups the length of size. If collection can’t be split evenly, the
		final chunk will be the remaining elements.
	**/
	function chunk<T>(array:Null<List_<T>>, ?size:Float):Array<Array<T>>;
	/**
		Creates an array with all falsey values removed. The values false, null, 0, "", undefined, and NaN are
		falsey.
	**/
	function compact<T>(array:Null<List_<Null<ts.AnyOf4<Bool, String, Int, T>>>>):Array<T>;
	/**
		Creates a new array concatenating `array` with any additional arrays
		and/or values.
	**/
	function concat<T>(array:Many<T>, values:haxe.extern.Rest<Many<T>>):Array<T>;
	/**
		Creates an array of unique array values not included in the other provided arrays using SameValueZero for
		equality comparisons.
	**/
	function difference<T>(array:Null<List_<T>>, values:haxe.extern.Rest<List_<T>>):Array<T>;
	/**
		This method is like _.difference except that it accepts iteratee which is invoked for each element of array
		and values to generate the criterion by which uniqueness is computed. The iteratee is invoked with one
		argument: (value).
	**/
	@:overload(function<T1, T2, T3>(array:Null<List_<T1>>, values1:List_<T2>, values2:List_<T3>, iteratee:ValueIteratee<ts.AnyOf3<T1, T2, T3>>):Array<T1> { })
	@:overload(function<T1, T2, T3, T4>(array:Null<List_<T1>>, values1:List_<T2>, values2:List_<T3>, values3:List_<T4>, iteratee:ValueIteratee<ts.AnyOf4<T1, T2, T3, T4>>):Array<T1> { })
	@:overload(function<T1, T2, T3, T4, T5>(array:Null<List_<T1>>, values1:List_<T2>, values2:List_<T3>, values3:List_<T4>, values4:List_<T5>, iteratee:ValueIteratee<ts.AnyOf5<T1, T2, T3, T4, T5>>):Array<T1> { })
	@:overload(function<T1, T2, T3, T4, T5, T6>(array:Null<List_<T1>>, values1:List_<T2>, values2:List_<T3>, values3:List_<T4>, values4:List_<T5>, values5:List_<T6>, iteratee:ValueIteratee<ts.AnyOf6<T1, T2, T3, T4, T5, T6>>):Array<T1> { })
	@:overload(function<T1, T2, T3, T4, T5, T6, T7>(array:Null<List_<T1>>, values1:List_<T2>, values2:List_<T3>, values3:List_<T4>, values4:List_<T5>, values5:List_<T6>, values:haxe.extern.Rest<ts.AnyOf7<String, Float, js.lib.Symbol, ts.Tuple2<PropertyName, Dynamic>, List_<T7>, (value:ts.AnyOf7<T1, T2, T3, T4, T5, T6, T7>) -> Any, { }>>):Array<T1> { })
	@:overload(function<T>(array:Null<List_<T>>, values:haxe.extern.Rest<List_<T>>):Array<T> { })
	function differenceBy<T1, T2>(array:Null<List_<T1>>, values:List_<T2>, iteratee:ValueIteratee<ts.AnyOf2<T1, T2>>):Array<T1>;
	/**
		Creates an array of unique `array` values not included in the other
		provided arrays using [`SameValueZero`](http://ecma-international.org/ecma-262/6.0/#sec-samevaluezero)
		for equality comparisons.
	**/
	@:overload(function<T1, T2, T3>(array:Null<List_<T1>>, values1:List_<T2>, values2:List_<T3>, comparator:Comparator2<T1, ts.AnyOf2<T2, T3>>):Array<T1> { })
	@:overload(function<T1, T2, T3, T4>(array:Null<List_<T1>>, values1:List_<T2>, values2:List_<T3>, values:haxe.extern.Rest<ts.AnyOf2<List_<T4>, Comparator2<T1, ts.AnyOf3<T2, T3, T4>>>>):Array<T1> { })
	@:overload(function<T>(array:Null<List_<T>>, values:haxe.extern.Rest<List_<T>>):Array<T> { })
	function differenceWith<T1, T2>(array:Null<List_<T1>>, values:List_<T2>, comparator:Comparator2<T1, T2>):Array<T1>;
	/**
		Creates a slice of array with n elements dropped from the beginning.
	**/
	function drop<T>(array:Null<List_<T>>, ?n:Float):Array<T>;
	/**
		Creates a slice of array with n elements dropped from the end.
	**/
	function dropRight<T>(array:Null<List_<T>>, ?n:Float):Array<T>;
	/**
		Creates a slice of array excluding elements dropped from the end. Elements are dropped until predicate
		returns falsey. The predicate is invoked with three arguments: (value, index, array).
	**/
	function dropRightWhile<T>(array:Null<List_<T>>, ?predicate:ListIteratee<T>):Array<T>;
	/**
		Creates a slice of array excluding elements dropped from the beginning. Elements are dropped until predicate
		returns falsey. The predicate is invoked with three arguments: (value, index, array).
	**/
	function dropWhile<T>(array:Null<List_<T>>, ?predicate:ListIteratee<T>):Array<T>;
	/**
		Fills elements of array with value from start up to, but not including, end.
		
		Note: This method mutates array.
	**/
	@:overload(function<T>(array:Null<List_<Dynamic>>, value:T):List_<T> { })
	@:overload(function<T, U>(array:Null<Array<U>>, value:T, ?start:Float, ?end:Float):Array<ts.AnyOf2<T, U>> { })
	@:overload(function<T, U>(array:Null<List_<U>>, value:T, ?start:Float, ?end:Float):List_<ts.AnyOf2<T, U>> { })
	function fill<T>(array:Null<Array<Dynamic>>, value:T):Array<T>;
	/**
		This method is like _.find except that it returns the index of the first element predicate returns truthy
		for instead of the element itself.
	**/
	function findIndex<T>(array:Null<List_<T>>, ?predicate:ListIterateeCustom<T, Bool>, ?fromIndex:Float):Float;
	/**
		This method is like _.findIndex except that it iterates over elements of collection from right to left.
	**/
	function findLastIndex<T>(array:Null<List_<T>>, ?predicate:ListIterateeCustom<T, Bool>, ?fromIndex:Float):Float;
	dynamic function first<T>(array:Null<List_<T>>):Null<T>;
	/**
		Flattens `array` a single level deep.
	**/
	function flatten<T>(array:Null<List_<Many<T>>>):Array<T>;
	/**
		Recursively flattens a nested array.
	**/
	function flattenDeep<T>(array:Null<ListOfRecursiveArraysOrValues<T>>):Array<Flat<T>>;
	/**
		Recursively flatten array up to depth times.
	**/
	function flattenDepth<T>(array:Null<ListOfRecursiveArraysOrValues<T>>, ?depth:Float):Array<T>;
	/**
		The inverse of `_.toPairs`; this method returns an object composed
		from key-value `pairs`.
	**/
	@:overload(function(pairs:Null<List_<Array<Dynamic>>>):Dictionary<Dynamic> { })
	function fromPairs<T>(pairs:Null<List_<ts.Tuple2<PropertyName, T>>>):Dictionary<T>;
	/**
		Gets the first element of array.
	**/
	function head<T>(array:Null<List_<T>>):Null<T>;
	/**
		Gets the index at which the first occurrence of `value` is found in `array`
		using [`SameValueZero`](http://ecma-international.org/ecma-262/6.0/#sec-samevaluezero)
		for equality comparisons. If `fromIndex` is negative, it's used as the offset
		from the end of `array`.
	**/
	function indexOf<T>(array:Null<List_<T>>, value:T, ?fromIndex:Float):Float;
	/**
		Gets all but the last element of array.
	**/
	function initial<T>(array:Null<List_<T>>):Array<T>;
	/**
		Creates an array of unique values that are included in all of the provided arrays using SameValueZero for
		equality comparisons.
	**/
	function intersection<T>(arrays:haxe.extern.Rest<Null<List_<T>>>):Array<T>;
	/**
		This method is like `_.intersection` except that it accepts `iteratee`
		which is invoked for each element of each `arrays` to generate the criterion
		by which uniqueness is computed. The iteratee is invoked with one argument: (value).
	**/
	@:overload(function<T1, T2, T3>(array:Null<List_<T1>>, values1:List_<T2>, values2:List_<T3>, iteratee:ValueIteratee<ts.AnyOf3<T1, T2, T3>>):Array<T1> { })
	@:overload(function<T1, T2, T3, T4>(array:Null<List_<T1>>, values1:List_<T2>, values2:List_<T3>, values:haxe.extern.Rest<ts.AnyOf7<String, Float, js.lib.Symbol, ts.Tuple2<PropertyName, Dynamic>, List_<T4>, (value:ts.AnyOf4<T1, T2, T3, T4>) -> Any, { }>>):Array<T1> { })
	@:overload(function<T>(?array:List_<T>, values:haxe.extern.Rest<List_<T>>):Array<T> { })
	@:overload(function<T>(values:haxe.extern.Rest<ts.AnyOf7<String, Float, js.lib.Symbol, ts.Tuple2<PropertyName, Dynamic>, List_<T>, (value:T) -> Any, { }>>):Array<T> { })
	function intersectionBy<T1, T2>(array:Null<List_<T1>>, values:List_<T2>, iteratee:ValueIteratee<ts.AnyOf2<T1, T2>>):Array<T1>;
	/**
		Creates an array of unique `array` values not included in the other
		provided arrays using [`SameValueZero`](http://ecma-international.org/ecma-262/6.0/#sec-samevaluezero)
		for equality comparisons.
	**/
	@:overload(function<T1, T2, T3>(array:Null<List_<T1>>, values1:List_<T2>, values2:List_<T3>, comparator:Comparator2<T1, ts.AnyOf2<T2, T3>>):Array<T1> { })
	@:overload(function<T1, T2, T3, T4>(array:Null<List_<T1>>, values1:List_<T2>, values2:List_<T3>, values:haxe.extern.Rest<ts.AnyOf2<List_<T4>, Comparator2<T1, ts.AnyOf3<T2, T3, T4>>>>):Array<T1> { })
	@:overload(function<T>(?array:List_<T>, values:haxe.extern.Rest<ts.AnyOf2<List_<T>, Comparator2<T, ts.Never>>>):Array<T> { })
	function intersectionWith<T1, T2>(array:Null<List_<T1>>, values:List_<T2>, comparator:Comparator2<T1, T2>):Array<T1>;
	/**
		Converts all elements in `array` into a string separated by `separator`.
	**/
	function join(array:Null<List_<Dynamic>>, ?separator:String):String;
	/**
		Gets the last element of array.
	**/
	function last<T>(array:Null<List_<T>>):Null<T>;
	/**
		This method is like _.indexOf except that it iterates over elements of array from right to left.
	**/
	function lastIndexOf<T>(array:Null<List_<T>>, value:T, ?fromIndex:ts.AnyOf2<Float, Bool>):Float;
	/**
		Gets the element at index `n` of `array`. If `n` is negative, the nth element from the end is returned.
	**/
	function nth<T>(array:Null<List_<T>>, ?n:Float):Null<T>;
	/**
		Removes all provided values from array using SameValueZero for equality comparisons.
		
		Note: Unlike _.without, this method mutates array.
	**/
	@:overload(function<T>(array:List_<T>, values:haxe.extern.Rest<T>):List_<T> { })
	function pull<T>(array:Array<T>, values:haxe.extern.Rest<T>):Array<T>;
	/**
		This method is like `_.pull` except that it accepts an array of values to remove.
		
		**Note:** Unlike `_.difference`, this method mutates `array`.
	**/
	@:overload(function<T>(array:List_<T>, ?values:List_<T>):List_<T> { })
	function pullAll<T>(array:Array<T>, ?values:List_<T>):Array<T>;
	/**
		This method is like `_.pullAll` except that it accepts `iteratee` which is
		invoked for each element of `array` and `values` to to generate the criterion
		by which uniqueness is computed. The iteratee is invoked with one argument: (value).
		
		**Note:** Unlike `_.differenceBy`, this method mutates `array`.
	**/
	@:overload(function<T>(array:List_<T>, ?values:List_<T>, ?iteratee:ValueIteratee<T>):List_<T> { })
	@:overload(function<T1, T2>(array:Array<T1>, values:List_<T2>, iteratee:ValueIteratee<ts.AnyOf2<T1, T2>>):Array<T1> { })
	@:overload(function<T1, T2>(array:List_<T1>, values:List_<T2>, iteratee:ValueIteratee<ts.AnyOf2<T1, T2>>):List_<T1> { })
	function pullAllBy<T>(array:Array<T>, ?values:List_<T>, ?iteratee:ValueIteratee<T>):Array<T>;
	/**
		This method is like `_.pullAll` except that it accepts `comparator` which is
		invoked to compare elements of array to values. The comparator is invoked with
		two arguments: (arrVal, othVal).
		
		**Note:** Unlike `_.differenceWith`, this method mutates `array`.
	**/
	@:overload(function<T>(array:List_<T>, ?values:List_<T>, ?comparator:Comparator<T>):List_<T> { })
	@:overload(function<T1, T2>(array:Array<T1>, values:List_<T2>, comparator:Comparator2<T1, T2>):Array<T1> { })
	@:overload(function<T1, T2>(array:List_<T1>, values:List_<T2>, comparator:Comparator2<T1, T2>):List_<T1> { })
	function pullAllWith<T>(array:Array<T>, ?values:List_<T>, ?comparator:Comparator<T>):Array<T>;
	/**
		Removes elements from array corresponding to the given indexes and returns an array of the removed elements.
		Indexes may be specified as an array of indexes or as individual arguments.
		
		Note: Unlike _.at, this method mutates array.
	**/
	@:overload(function<T>(array:List_<T>, indexes:haxe.extern.Rest<Many<Float>>):List_<T> { })
	function pullAt<T>(array:Array<T>, indexes:haxe.extern.Rest<Many<Float>>):Array<T>;
	/**
		Removes all elements from array that predicate returns truthy for and returns an array of the removed
		elements. The predicate is invoked with three arguments: (value, index, array).
		
		Note: Unlike _.filter, this method mutates array.
	**/
	function remove<T>(array:List_<T>, ?predicate:ListIteratee<T>):Array<T>;
	/**
		Reverses `array` so that the first element becomes the last, the second
		element becomes the second to last, and so on.
		
		**Note:** This method mutates `array` and is based on
		[`Array#reverse`](https://mdn.io/Array/reverse).
	**/
	function reverse<TList:(List_<Dynamic>)>(array:TList):TList;
	/**
		Creates a slice of array from start up to, but not including, end.
	**/
	function slice<T>(array:Null<List_<T>>, ?start:Float, ?end:Float):Array<T>;
	/**
		Uses a binary search to determine the lowest index at which `value` should
		be inserted into `array` in order to maintain its sort order.
	**/
	@:overload(function<T>(array:Null<List_<T>>, value:T):Float { })
	function sortedIndex<T>(array:Null<List_<T>>, value:T):Float;
	/**
		This method is like `_.sortedIndex` except that it accepts `iteratee`
		which is invoked for `value` and each element of `array` to compute their
		sort ranking. The iteratee is invoked with one argument: (value).
	**/
	function sortedIndexBy<T>(array:Null<List_<T>>, value:T, ?iteratee:ValueIteratee<T>):Float;
	/**
		This method is like `_.indexOf` except that it performs a binary
		search on a sorted `array`.
	**/
	function sortedIndexOf<T>(array:Null<List_<T>>, value:T):Float;
	/**
		This method is like `_.sortedIndex` except that it returns the highest
		index at which `value` should be inserted into `array` in order to
		maintain its sort order.
	**/
	function sortedLastIndex<T>(array:Null<List_<T>>, value:T):Float;
	/**
		This method is like `_.sortedLastIndex` except that it accepts `iteratee`
		which is invoked for `value` and each element of `array` to compute their
		sort ranking. The iteratee is invoked with one argument: (value).
	**/
	function sortedLastIndexBy<T>(array:Null<List_<T>>, value:T, iteratee:ValueIteratee<T>):Float;
	/**
		This method is like `_.lastIndexOf` except that it performs a binary
		search on a sorted `array`.
	**/
	function sortedLastIndexOf<T>(array:Null<List_<T>>, value:T):Float;
	/**
		This method is like `_.uniq` except that it's designed and optimized
		for sorted arrays.
	**/
	function sortedUniq<T>(array:Null<List_<T>>):Array<T>;
	/**
		This method is like `_.uniqBy` except that it's designed and optimized
		for sorted arrays.
	**/
	function sortedUniqBy<T>(array:Null<List_<T>>, iteratee:ValueIteratee<T>):Array<T>;
	/**
		Gets all but the first element of array.
	**/
	function tail<T>(array:Null<List_<T>>):Array<T>;
	/**
		Creates a slice of array with n elements taken from the beginning.
	**/
	function take<T>(array:Null<List_<T>>, ?n:Float):Array<T>;
	/**
		Creates a slice of array with n elements taken from the end.
	**/
	function takeRight<T>(array:Null<List_<T>>, ?n:Float):Array<T>;
	/**
		Creates a slice of array with elements taken from the end. Elements are taken until predicate returns
		falsey. The predicate is invoked with three arguments: (value, index, array).
	**/
	function takeRightWhile<T>(array:Null<List_<T>>, ?predicate:ListIteratee<T>):Array<T>;
	/**
		Creates a slice of array with elements taken from the beginning. Elements are taken until predicate returns
		falsey. The predicate is invoked with three arguments: (value, index, array).
	**/
	function takeWhile<T>(array:Null<List_<T>>, ?predicate:ListIteratee<T>):Array<T>;
	/**
		Creates an array of unique values, in order, from all of the provided arrays using SameValueZero for
		equality comparisons.
	**/
	function union<T>(arrays:haxe.extern.Rest<Null<List_<T>>>):Array<T>;
	/**
		This method is like `_.union` except that it accepts `iteratee` which is
		invoked for each element of each `arrays` to generate the criterion by which
		uniqueness is computed. The iteratee is invoked with one argument: (value).
	**/
	@:overload(function<T>(arrays1:Null<List_<T>>, arrays2:Null<List_<T>>, ?iteratee:ValueIteratee<T>):Array<T> { })
	@:overload(function<T>(arrays1:Null<List_<T>>, arrays2:Null<List_<T>>, arrays3:Null<List_<T>>, ?iteratee:ValueIteratee<T>):Array<T> { })
	@:overload(function<T>(arrays1:Null<List_<T>>, arrays2:Null<List_<T>>, arrays3:Null<List_<T>>, arrays4:Null<List_<T>>, ?iteratee:ValueIteratee<T>):Array<T> { })
	@:overload(function<T>(arrays1:Null<List_<T>>, arrays2:Null<List_<T>>, arrays3:Null<List_<T>>, arrays4:Null<List_<T>>, arrays5:Null<List_<T>>, iteratee:haxe.extern.Rest<Null<ts.AnyOf7<String, Float, js.lib.Symbol, ts.Tuple2<PropertyName, Dynamic>, List_<T>, (value:T) -> Any, { }>>>):Array<T> { })
	function unionBy<T>(arrays:Null<List_<T>>, ?iteratee:ValueIteratee<T>):Array<T>;
	/**
		This method is like `_.union` except that it accepts `comparator` which
		is invoked to compare elements of `arrays`. The comparator is invoked
		with two arguments: (arrVal, othVal).
	**/
	@:overload(function<T>(arrays:Null<List_<T>>, arrays2:Null<List_<T>>, ?comparator:Comparator<T>):Array<T> { })
	@:overload(function<T>(arrays:Null<List_<T>>, arrays2:Null<List_<T>>, arrays3:Null<List_<T>>, comparator:haxe.extern.Rest<Null<ts.AnyOf2<List_<T>, Comparator<T>>>>):Array<T> { })
	function unionWith<T>(arrays:Null<List_<T>>, ?comparator:Comparator<T>):Array<T>;
	/**
		Creates a duplicate-free version of an array, using
		[`SameValueZero`](http://ecma-international.org/ecma-262/6.0/#sec-samevaluezero)
		for equality comparisons, in which only the first occurrence of each element
		is kept.
	**/
	function uniq<T>(array:Null<List_<T>>):Array<T>;
	/**
		This method is like `_.uniq` except that it accepts `iteratee` which is
		invoked for each element in `array` to generate the criterion by which
		uniqueness is computed. The iteratee is invoked with one argument: (value).
	**/
	function uniqBy<T>(array:Null<List_<T>>, iteratee:ValueIteratee<T>):Array<T>;
	/**
		This method is like `_.uniq` except that it accepts `comparator` which
		is invoked to compare elements of `array`. The comparator is invoked with
		two arguments: (arrVal, othVal).
	**/
	function uniqWith<T>(array:Null<List_<T>>, ?comparator:Comparator<T>):Array<T>;
	/**
		This method is like _.zip except that it accepts an array of grouped elements and creates an array
		regrouping the elements to their pre-zip configuration.
	**/
	function unzip<T>(array:Null<ts.AnyOf2<List_<List_<T>>, Array<Array<T>>>>):Array<Array<T>>;
	/**
		This method is like _.unzip except that it accepts an iteratee to specify how regrouped values should be
		combined. The iteratee is invoked with four arguments: (accumulator, value, index, group).
	**/
	@:overload(function<T>(array:Null<List_<List_<T>>>):Array<Array<T>> { })
	function unzipWith<T, TResult>(array:Null<List_<List_<T>>>, iteratee:(values:haxe.extern.Rest<T>) -> TResult):Array<TResult>;
	/**
		Creates an array excluding all provided values using SameValueZero for equality comparisons.
	**/
	function without<T>(array:Null<List_<T>>, values:haxe.extern.Rest<T>):Array<T>;
	/**
		Creates an array of unique values that is the symmetric difference of the provided arrays.
	**/
	function xor<T>(arrays:haxe.extern.Rest<Null<List_<T>>>):Array<T>;
	/**
		This method is like `_.xor` except that it accepts `iteratee` which is
		invoked for each element of each `arrays` to generate the criterion by which
		uniqueness is computed. The iteratee is invoked with one argument: (value).
	**/
	@:overload(function<T>(arrays:Null<List_<T>>, arrays2:Null<List_<T>>, ?iteratee:ValueIteratee<T>):Array<T> { })
	@:overload(function<T>(arrays:Null<List_<T>>, arrays2:Null<List_<T>>, arrays3:Null<List_<T>>, iteratee:haxe.extern.Rest<Null<ts.AnyOf7<String, Float, js.lib.Symbol, ts.Tuple2<PropertyName, Dynamic>, List_<T>, (value:T) -> Any, { }>>>):Array<T> { })
	function xorBy<T>(arrays:Null<List_<T>>, ?iteratee:ValueIteratee<T>):Array<T>;
	/**
		This method is like `_.xor` except that it accepts `comparator` which is
		invoked to compare elements of `arrays`. The comparator is invoked with
		two arguments: (arrVal, othVal).
	**/
	@:overload(function<T>(arrays:Null<List_<T>>, arrays2:Null<List_<T>>, ?comparator:Comparator<T>):Array<T> { })
	@:overload(function<T>(arrays:Null<List_<T>>, arrays2:Null<List_<T>>, arrays3:Null<List_<T>>, comparator:haxe.extern.Rest<Null<ts.AnyOf2<List_<T>, Comparator<T>>>>):Array<T> { })
	function xorWith<T>(arrays:Null<List_<T>>, ?comparator:Comparator<T>):Array<T>;
	/**
		Creates an array of grouped elements, the first of which contains the first elements of the given arrays,
		the second of which contains the second elements of the given arrays, and so on.
	**/
	@:overload(function<T1, T2, T3>(arrays1:List_<T1>, arrays2:List_<T2>, arrays3:List_<T3>):Array<ts.Tuple3<Null<T1>, Null<T2>, Null<T3>>> { })
	@:overload(function<T1, T2, T3, T4>(arrays1:List_<T1>, arrays2:List_<T2>, arrays3:List_<T3>, arrays4:List_<T4>):Array<ts.Tuple4<Null<T1>, Null<T2>, Null<T3>, Null<T4>>> { })
	@:overload(function<T1, T2, T3, T4, T5>(arrays1:List_<T1>, arrays2:List_<T2>, arrays3:List_<T3>, arrays4:List_<T4>, arrays5:List_<T5>):Array<ts.Tuple5<Null<T1>, Null<T2>, Null<T3>, Null<T4>, Null<T5>>> { })
	@:overload(function<T>(arrays:haxe.extern.Rest<Null<List_<T>>>):Array<Array<Null<T>>> { })
	function zip<T1, T2>(arrays1:List_<T1>, arrays2:List_<T2>):Array<ts.Tuple2<Null<T1>, Null<T2>>>;
	/**
		This method is like _.fromPairs except that it accepts two arrays, one of property
		identifiers and one of corresponding values.
	**/
	@:overload(function(?props:List_<PropertyName>):Dictionary<Null<Any>> { })
	function zipObject<T>(props:List_<PropertyName>, values:List_<T>):Dictionary<T>;
	/**
		This method is like _.zipObject except that it supports property paths.
	**/
	function zipObjectDeep(?paths:List_<PropertyPath>, ?values:List_<Dynamic>):Dynamic;
	/**
		This method is like _.zip except that it accepts an iteratee to specify how grouped values should be
		combined. The iteratee is invoked with four arguments: (accumulator, value, index,
		group).
	**/
	@:overload(function<T1, T2, TResult>(arrays1:List_<T1>, arrays2:List_<T2>, iteratee:(value1:T1, value2:T2) -> TResult):Array<TResult> { })
	@:overload(function<T1, T2, T3, TResult>(arrays1:List_<T1>, arrays2:List_<T2>, arrays3:List_<T3>, iteratee:(value1:T1, value2:T2, value3:T3) -> TResult):Array<TResult> { })
	@:overload(function<T1, T2, T3, T4, TResult>(arrays1:List_<T1>, arrays2:List_<T2>, arrays3:List_<T3>, arrays4:List_<T4>, iteratee:(value1:T1, value2:T2, value3:T3, value4:T4) -> TResult):Array<TResult> { })
	@:overload(function<T1, T2, T3, T4, T5, TResult>(arrays1:List_<T1>, arrays2:List_<T2>, arrays3:List_<T3>, arrays4:List_<T4>, arrays5:List_<T5>, iteratee:(value1:T1, value2:T2, value3:T3, value4:T4, value5:T5) -> TResult):Array<TResult> { })
	@:overload(function<T, TResult>(iteratee:haxe.extern.Rest<Null<ts.AnyOf2<List_<T>, (group:haxe.extern.Rest<T>) -> TResult>>>):Array<TResult> { })
	function zipWith<T, TResult>(arrays:List_<T>, iteratee:(value1:T) -> TResult):Array<TResult>;
	/**
		Creates an object composed of keys generated from the results of running each element of collection through
		iteratee. The corresponding value of each key is the number of times the key was returned by iteratee. The
		iteratee is invoked with one argument: (value).
	**/
	@:overload(function<T:(Dynamic)>(collection:Null<T>, ?iteratee:ValueIteratee<Dynamic>):Dictionary<Float> { })
	function countBy<T>(collection:Null<List_<T>>, ?iteratee:ValueIteratee<T>):Dictionary<Float>;
	@:overload(function(collection:String, ?iteratee:StringIterator<Dynamic>):String { })
	@:overload(function<T>(collection:List_<T>, ?iteratee:ListIterator<T, Dynamic>):List_<T> { })
	@:overload(function<T:(Dynamic)>(collection:T, ?iteratee:ObjectIterator<T, Dynamic>):T { })
	@:overload(function<T, TArray:(Null<Array<T>>)>(collection:Array<T>, ?iteratee:ArrayIterator<T, Dynamic>):TArray { })
	@:overload(function<TString:(Null<String>)>(collection:TString, ?iteratee:StringIterator<Dynamic>):TString { })
	@:overload(function<T, TList:(Null<List_<T>>)>(collection:List_<T>, ?iteratee:ListIterator<T, Dynamic>):TList { })
	@:overload(function<T:(Dynamic)>(collection:Null<T>, ?iteratee:ObjectIterator<T, Dynamic>):Null<T> { })
	dynamic function each<T>(collection:Array<T>, ?iteratee:ArrayIterator<T, Dynamic>):Array<T>;
	@:overload(function(collection:String, ?iteratee:StringIterator<Dynamic>):String { })
	@:overload(function<T>(collection:List_<T>, ?iteratee:ListIterator<T, Dynamic>):List_<T> { })
	@:overload(function<T:(Dynamic)>(collection:T, ?iteratee:ObjectIterator<T, Dynamic>):T { })
	@:overload(function<T, TArray:(Null<Array<T>>)>(collection:Array<T>, ?iteratee:ArrayIterator<T, Dynamic>):TArray { })
	@:overload(function<TString:(Null<String>)>(collection:TString, ?iteratee:StringIterator<Dynamic>):TString { })
	@:overload(function<T, TList:(Null<List_<T>>)>(collection:List_<T>, ?iteratee:ListIterator<T, Dynamic>):TList { })
	@:overload(function<T:(Dynamic)>(collection:Null<T>, ?iteratee:ObjectIterator<T, Dynamic>):Null<T> { })
	dynamic function eachRight<T>(collection:Array<T>, ?iteratee:ArrayIterator<T, Dynamic>):Array<T>;
	/**
		Checks if predicate returns truthy for all elements of collection. Iteration is stopped once predicate
		returns falsey. The predicate is invoked with three arguments: (value, index|key, collection).
	**/
	@:overload(function<T:(Dynamic)>(collection:Null<T>, ?predicate:ObjectIterateeCustom<T, Bool>):Bool { })
	function every<T>(collection:Null<List_<T>>, ?predicate:ListIterateeCustom<T, Bool>):Bool;
	/**
		Iterates over elements of collection, returning an array of all elements predicate returns truthy for. The
		predicate is invoked with three arguments: (value, index|key, collection).
	**/
	@:overload(function<T, S:(T)>(collection:Null<List_<T>>, predicate:ListIteratorTypeGuard<T, S>):Array<S> { })
	@:overload(function<T>(collection:Null<List_<T>>, ?predicate:ListIterateeCustom<T, Bool>):Array<T> { })
	@:overload(function<T:(Dynamic), S:(Dynamic)>(collection:Null<T>, predicate:ObjectIteratorTypeGuard<T, S>):Array<S> { })
	@:overload(function<T:(Dynamic)>(collection:Null<T>, ?predicate:ObjectIterateeCustom<T, Bool>):Array<Dynamic> { })
	function filter(collection:Null<String>, ?predicate:StringIterator<Bool>):Array<String>;
	/**
		Iterates over elements of collection, returning the first element predicate returns truthy for.
		The predicate is invoked with three arguments: (value, index|key, collection).
	**/
	@:overload(function<T>(collection:Null<List_<T>>, ?predicate:ListIterateeCustom<T, Bool>, ?fromIndex:Float):Null<T> { })
	@:overload(function<T:(Dynamic), S:(Dynamic)>(collection:Null<T>, predicate:ObjectIteratorTypeGuard<T, S>, ?fromIndex:Float):Null<S> { })
	@:overload(function<T:(Dynamic)>(collection:Null<T>, ?predicate:ObjectIterateeCustom<T, Bool>, ?fromIndex:Float):Null<Dynamic> { })
	function find<T, S:(T)>(collection:Null<List_<T>>, predicate:ListIteratorTypeGuard<T, S>, ?fromIndex:Float):Null<S>;
	/**
		This method is like _.find except that it iterates over elements of a collection from
		right to left.
	**/
	@:overload(function<T>(collection:Null<List_<T>>, ?predicate:ListIterateeCustom<T, Bool>, ?fromIndex:Float):Null<T> { })
	@:overload(function<T:(Dynamic), S:(Dynamic)>(collection:Null<T>, predicate:ObjectIteratorTypeGuard<T, S>, ?fromIndex:Float):Null<S> { })
	@:overload(function<T:(Dynamic)>(collection:Null<T>, ?predicate:ObjectIterateeCustom<T, Bool>, ?fromIndex:Float):Null<Dynamic> { })
	function findLast<T, S:(T)>(collection:Null<List_<T>>, predicate:ListIteratorTypeGuard<T, S>, ?fromIndex:Float):Null<S>;
	/**
		Creates an array of flattened values by running each element in collection through iteratee
		and concating its result to the other mapped values. The iteratee is invoked with three arguments:
		(value, index|key, collection).
	**/
	@:overload(function(collection:Null<Dynamic>):Array<Dynamic> { })
	@:overload(function<T, TResult>(collection:Null<List_<T>>, iteratee:ListIterator<T, Many<TResult>>):Array<TResult> { })
	@:overload(function<T:(Dynamic), TResult>(collection:Null<T>, iteratee:ObjectIterator<T, Many<TResult>>):Array<TResult> { })
	@:overload(function(collection:Null<Dynamic>, iteratee:String):Array<Dynamic> { })
	@:overload(function(collection:Null<Dynamic>, iteratee:Dynamic):Array<Bool> { })
	function flatMap<T>(collection:Null<ts.AnyOf2<Dictionary<Many<T>>, NumericDictionary<Many<T>>>>):Array<T>;
	/**
		This method is like `_.flatMap` except that it recursively flattens the
		mapped results.
	**/
	@:overload(function<T, TResult>(collection:Null<List_<T>>, iteratee:ListIterator<T, ts.AnyOf2<ListOfRecursiveArraysOrValues<TResult>, TResult>>):Array<TResult> { })
	@:overload(function<T:(Dynamic), TResult>(collection:Null<T>, iteratee:ObjectIterator<T, ts.AnyOf2<ListOfRecursiveArraysOrValues<TResult>, TResult>>):Array<TResult> { })
	@:overload(function(collection:Null<Dynamic>, iteratee:String):Array<Dynamic> { })
	@:overload(function(collection:Null<Dynamic>, iteratee:Dynamic):Array<Bool> { })
	function flatMapDeep<T>(collection:Null<ts.AnyOf2<Dictionary<ts.AnyOf2<ListOfRecursiveArraysOrValues<T>, T>>, NumericDictionary<ts.AnyOf2<ListOfRecursiveArraysOrValues<T>, T>>>>):Array<T>;
	/**
		This method is like `_.flatMap` except that it recursively flattens the
		mapped results up to `depth` times.
	**/
	@:overload(function<T, TResult>(collection:Null<List_<T>>, iteratee:ListIterator<T, ts.AnyOf2<ListOfRecursiveArraysOrValues<TResult>, TResult>>, ?depth:Float):Array<TResult> { })
	@:overload(function<T:(Dynamic), TResult>(collection:Null<T>, iteratee:ObjectIterator<T, ts.AnyOf2<ListOfRecursiveArraysOrValues<TResult>, TResult>>, ?depth:Float):Array<TResult> { })
	@:overload(function(collection:Null<Dynamic>, iteratee:String, ?depth:Float):Array<Dynamic> { })
	@:overload(function(collection:Null<Dynamic>, iteratee:Dynamic, ?depth:Float):Array<Bool> { })
	function flatMapDepth<T>(collection:Null<ts.AnyOf2<Dictionary<ts.AnyOf2<ListOfRecursiveArraysOrValues<T>, T>>, NumericDictionary<ts.AnyOf2<ListOfRecursiveArraysOrValues<T>, T>>>>):Array<T>;
	/**
		Iterates over elements of collection invoking iteratee for each element. The iteratee is invoked with three arguments:
		(value, index|key, collection). Iteratee functions may exit iteration early by explicitly returning false.
		
		Note: As with other "Collections" methods, objects with a "length" property are iterated like arrays. To
		avoid this behavior _.forIn or _.forOwn may be used for object iteration.
	**/
	@:overload(function(collection:String, ?iteratee:StringIterator<Dynamic>):String { })
	@:overload(function<T>(collection:List_<T>, ?iteratee:ListIterator<T, Dynamic>):List_<T> { })
	@:overload(function<T:(Dynamic)>(collection:T, ?iteratee:ObjectIterator<T, Dynamic>):T { })
	@:overload(function<T, TArray:(Null<Array<T>>)>(collection:Array<T>, ?iteratee:ArrayIterator<T, Dynamic>):TArray { })
	@:overload(function<TString:(Null<String>)>(collection:TString, ?iteratee:StringIterator<Dynamic>):TString { })
	@:overload(function<T, TList:(Null<List_<T>>)>(collection:List_<T>, ?iteratee:ListIterator<T, Dynamic>):TList { })
	@:overload(function<T:(Dynamic)>(collection:Null<T>, ?iteratee:ObjectIterator<T, Dynamic>):Null<T> { })
	function forEach<T>(collection:Array<T>, ?iteratee:ArrayIterator<T, Dynamic>):Array<T>;
	/**
		This method is like _.forEach except that it iterates over elements of collection from right to left.
	**/
	@:overload(function(collection:String, ?iteratee:StringIterator<Dynamic>):String { })
	@:overload(function<T>(collection:List_<T>, ?iteratee:ListIterator<T, Dynamic>):List_<T> { })
	@:overload(function<T:(Dynamic)>(collection:T, ?iteratee:ObjectIterator<T, Dynamic>):T { })
	@:overload(function<T, TArray:(Null<Array<T>>)>(collection:Array<T>, ?iteratee:ArrayIterator<T, Dynamic>):TArray { })
	@:overload(function<TString:(Null<String>)>(collection:TString, ?iteratee:StringIterator<Dynamic>):TString { })
	@:overload(function<T, TList:(Null<List_<T>>)>(collection:List_<T>, ?iteratee:ListIterator<T, Dynamic>):TList { })
	@:overload(function<T:(Dynamic)>(collection:Null<T>, ?iteratee:ObjectIterator<T, Dynamic>):Null<T> { })
	function forEachRight<T>(collection:Array<T>, ?iteratee:ArrayIterator<T, Dynamic>):Array<T>;
	/**
		Creates an object composed of keys generated from the results of running each element of collection through
		iteratee. The corresponding value of each key is an array of the elements responsible for generating the
		key. The iteratee is invoked with one argument: (value).
	**/
	@:overload(function<T:(Dynamic)>(collection:Null<T>, ?iteratee:ValueIteratee<Dynamic>):Dictionary<Array<Dynamic>> { })
	function groupBy<T>(collection:Null<List_<T>>, ?iteratee:ValueIteratee<T>):Dictionary<Array<T>>;
	/**
		Checks if target is in collection using SameValueZero for equality comparisons. If fromIndex is negative,
		it’s used as the offset from the end of collection.
	**/
	function includes<T>(collection:Null<ts.AnyOf2<Dictionary<T>, NumericDictionary<T>>>, target:T, ?fromIndex:Float):Bool;
	/**
		Invokes the method named by methodName on each element in the collection returning
		an array of the results of each invoked method. Additional arguments will be provided
		to each invoked method. If methodName is a function it will be invoked for, and this
		bound to, each element in the collection.
	**/
	@:overload(function<TResult>(collection:Null<Dynamic>, method:(args:haxe.extern.Rest<Dynamic>) -> TResult, args:haxe.extern.Rest<Dynamic>):Array<TResult> { })
	function invokeMap(collection:Null<Dynamic>, methodName:String, args:haxe.extern.Rest<Dynamic>):Array<Dynamic>;
	/**
		Creates an object composed of keys generated from the results of running each element of collection through
		iteratee. The corresponding value of each key is the last element responsible for generating the key. The
		iteratee function is invoked with one argument: (value).
	**/
	@:overload(function<T:(Dynamic)>(collection:Null<T>, ?iteratee:ValueIterateeCustom<Dynamic, PropertyName>):Dictionary<Dynamic> { })
	function keyBy<T>(collection:Null<List_<T>>, ?iteratee:ValueIterateeCustom<T, PropertyName>):Dictionary<T>;
	/**
		Creates an array of values by running each element in collection through iteratee. The iteratee is
		invoked with three arguments: (value, index|key, collection).
		
		Many lodash methods are guarded to work as iteratees for methods like _.every, _.filter, _.map, _.mapValues,
		_.reject, and _.some.
		
		The guarded methods are:
		ary, callback, chunk, clone, create, curry, curryRight, drop, dropRight, every, fill, flatten, invert, max,
		min, parseInt, slice, sortBy, take, takeRight, template, trim, trimLeft, trimRight, trunc, random, range,
		sample, some, sum, uniq, and words
	**/
	@:overload(function<T, TResult>(collection:Null<List_<T>>, iteratee:ListIterator<T, TResult>):Array<TResult> { })
	@:overload(function<T>(collection:Null<ts.AnyOf2<Dictionary<T>, NumericDictionary<T>>>):Array<T> { })
	@:overload(function<T:(Dynamic), TResult>(collection:Null<T>, iteratee:ObjectIterator<T, TResult>):Array<TResult> { })
	@:overload(function<T, K:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(collection:Null<ts.AnyOf2<Dictionary<T>, NumericDictionary<T>>>, iteratee:K):Array<Dynamic> { })
	@:overload(function<T>(collection:Null<ts.AnyOf2<Dictionary<T>, NumericDictionary<T>>>, ?iteratee:String):Array<Dynamic> { })
	@:overload(function<T>(collection:Null<ts.AnyOf2<Dictionary<T>, NumericDictionary<T>>>, ?iteratee:Dynamic):Array<Bool> { })
	function map<T, TResult>(collection:Null<Array<T>>, iteratee:ArrayIterator<T, TResult>):Array<TResult>;
	/**
		This method is like `_.sortBy` except that it allows specifying the sort
		orders of the iteratees to sort by. If `orders` is unspecified, all values
		are sorted in ascending order. Otherwise, specify an order of "desc" for
		descending or "asc" for ascending sort order of corresponding values.
	**/
	@:overload(function<T>(collection:Null<List_<T>>, ?iteratees:Many<ListIteratee<T>>, ?orders:Many<ts.AnyOf2<Bool, String>>):Array<T> { })
	@:overload(function<T:(Dynamic)>(collection:Null<T>, ?iteratees:Many<ObjectIterator<T, Any>>, ?orders:Many<ts.AnyOf2<Bool, String>>):Array<Dynamic> { })
	@:overload(function<T:(Dynamic)>(collection:Null<T>, ?iteratees:Many<ObjectIteratee<T>>, ?orders:Many<ts.AnyOf2<Bool, String>>):Array<Dynamic> { })
	function orderBy<T>(collection:Null<List_<T>>, ?iteratees:Many<ListIterator<T, Any>>, ?orders:Many<ts.AnyOf2<Bool, String>>):Array<T>;
	/**
		Creates an array of elements split into two groups, the first of which contains elements predicate returns truthy for,
		while the second of which contains elements predicate returns falsey for.
		The predicate is invoked with three arguments: (value, index|key, collection).
	**/
	@:overload(function<T>(collection:Null<List_<T>>, callback:ValueIteratee<T>):ts.Tuple2<Array<T>, Array<T>> { })
	@:overload(function<T:(Dynamic)>(collection:Null<T>, callback:ValueIteratee<Dynamic>):ts.Tuple2<Array<Dynamic>, Array<Dynamic>> { })
	function partition<T, U:(T)>(collection:Null<List_<T>>, callback:ValueIteratorTypeGuard<T, U>):ts.Tuple2<Array<U>, Array<{ }>>;
	/**
		Reduces a collection to a value which is the accumulated result of running each
		element in the collection through the callback, where each successive callback execution
		consumes the return value of the previous execution. If accumulator is not provided the
		first element of the collection will be used as the initial accumulator value. The callback
		is invoked with four arguments: (accumulator, value, index|key, collection).
	**/
	@:overload(function<T, TResult>(collection:Null<List_<T>>, callback:MemoListIterator<T, TResult, List_<T>>, accumulator:TResult):TResult { })
	@:overload(function<T:(Dynamic), TResult>(collection:Null<T>, callback:MemoObjectIterator<Dynamic, TResult, T>, accumulator:TResult):TResult { })
	@:overload(function<T>(collection:Null<Array<T>>, callback:MemoListIterator<T, T, Array<T>>):Null<T> { })
	@:overload(function<T>(collection:Null<List_<T>>, callback:MemoListIterator<T, T, List_<T>>):Null<T> { })
	@:overload(function<T:(Dynamic)>(collection:Null<T>, callback:MemoObjectIterator<Dynamic, Dynamic, T>):Null<Dynamic> { })
	function reduce<T, TResult>(collection:Null<Array<T>>, callback:MemoListIterator<T, TResult, Array<T>>, accumulator:TResult):TResult;
	/**
		This method is like _.reduce except that it iterates over elements of a collection from
		right to left.
	**/
	@:overload(function<T, TResult>(collection:Null<List_<T>>, callback:MemoListIterator<T, TResult, List_<T>>, accumulator:TResult):TResult { })
	@:overload(function<T:(Dynamic), TResult>(collection:Null<T>, callback:MemoObjectIterator<Dynamic, TResult, T>, accumulator:TResult):TResult { })
	@:overload(function<T>(collection:Null<Array<T>>, callback:MemoListIterator<T, T, Array<T>>):Null<T> { })
	@:overload(function<T>(collection:Null<List_<T>>, callback:MemoListIterator<T, T, List_<T>>):Null<T> { })
	@:overload(function<T:(Dynamic)>(collection:Null<T>, callback:MemoObjectIterator<Dynamic, Dynamic, T>):Null<Dynamic> { })
	function reduceRight<T, TResult>(collection:Null<Array<T>>, callback:MemoListIterator<T, TResult, Array<T>>, accumulator:TResult):TResult;
	/**
		The opposite of _.filter; this method returns the elements of collection that predicate does not return
		truthy for.
	**/
	@:overload(function<T>(collection:Null<List_<T>>, ?predicate:ListIterateeCustom<T, Bool>):Array<T> { })
	@:overload(function<T:(Dynamic)>(collection:Null<T>, ?predicate:ObjectIterateeCustom<T, Bool>):Array<Dynamic> { })
	function reject(collection:Null<String>, ?predicate:StringIterator<Bool>):Array<String>;
	/**
		Gets a random element from collection.
	**/
	@:overload(function<T:(Dynamic)>(collection:Null<T>):Null<Dynamic> { })
	function sample<T>(collection:Null<ts.AnyOf2<Dictionary<T>, NumericDictionary<T>>>):Null<T>;
	/**
		Gets n random elements at unique keys from collection up to the size of collection.
	**/
	@:overload(function<T:(Dynamic)>(collection:Null<T>, ?n:Float):Array<Dynamic> { })
	function sampleSize<T>(collection:Null<ts.AnyOf2<Dictionary<T>, NumericDictionary<T>>>, ?n:Float):Array<T>;
	/**
		Creates an array of shuffled values, using a version of the Fisher-Yates shuffle.
	**/
	@:overload(function<T:(Dynamic)>(collection:Null<T>):Array<Dynamic> { })
	function shuffle<T>(collection:Null<List_<T>>):Array<T>;
	/**
		Gets the size of collection by returning its length for array-like values or the number of own enumerable
		properties for objects.
	**/
	function size(collection:Null<ts.AnyOf2<String, Dynamic>>):Float;
	/**
		Checks if predicate returns truthy for any element of collection. Iteration is stopped once predicate
		returns truthy. The predicate is invoked with three arguments: (value, index|key, collection).
	**/
	@:overload(function<T:(Dynamic)>(collection:Null<T>, ?predicate:ObjectIterateeCustom<T, Bool>):Bool { })
	function some<T>(collection:Null<List_<T>>, ?predicate:ListIterateeCustom<T, Bool>):Bool;
	/**
		Creates an array of elements, sorted in ascending order by the results of
		running each element in a collection through each iteratee. This method
		performs a stable sort, that is, it preserves the original sort order of
		equal elements. The iteratees are invoked with one argument: (value).
	**/
	@:overload(function<T:(Dynamic)>(collection:Null<T>, iteratees:haxe.extern.Rest<Many<ObjectIteratee<T>>>):Array<Dynamic> { })
	function sortBy<T>(collection:Null<List_<T>>, iteratees:haxe.extern.Rest<Many<ListIteratee<T>>>):Array<T>;
	function now():Float;
	/**
		The opposite of _.before; this method creates a function that invokes func once it’s called n or more times.
	**/
	function after<TFunc:((args:haxe.extern.Rest<Dynamic>) -> Dynamic)>(n:Float, func:TFunc):TFunc;
	/**
		Creates a function that accepts up to n arguments ignoring any additional arguments.
	**/
	function ary(func:(args:haxe.extern.Rest<Dynamic>) -> Dynamic, ?n:Float):(args:haxe.extern.Rest<Dynamic>) -> Dynamic;
	/**
		Creates a function that invokes func, with the this binding and arguments of the created function, while
		it’s called less than n times. Subsequent calls to the created function return the result of the last func
		invocation.
	**/
	function before<TFunc:((args:haxe.extern.Rest<Dynamic>) -> Dynamic)>(n:Float, func:TFunc):TFunc;
	/**
		Creates a function that invokes func with the this binding of thisArg and prepends any additional _.bind
		arguments to those provided to the bound function.
		
		The _.bind.placeholder value, which defaults to _ in monolithic builds, may be used as a placeholder for
		partially applied arguments.
		
		Note: Unlike native Function#bind this method does not set the "length" property of bound functions.
	**/
	var bind : FunctionBind;
	/**
		Creates a function that invokes the method at object[key] and prepends any additional _.bindKey arguments
		to those provided to the bound function.
		
		This method differs from _.bind by allowing bound functions to reference methods that may be redefined
		or don’t yet exist. See Peter Michaux’s article for more details.
		
		The _.bindKey.placeholder value, which defaults to _ in monolithic builds, may be used as a placeholder
		for partially applied arguments.
	**/
	var bindKey : FunctionBindKey;
	var curry : Curry;
	var curryRight : CurryRight;
	/**
		Creates a debounced function that delays invoking func until after wait milliseconds have elapsed since
		the last time the debounced function was invoked. The debounced function comes with a cancel method to
		cancel delayed invocations and a flush method to immediately invoke them. Provide an options object to
		indicate that func should be invoked on the leading and/or trailing edge of the wait timeout. Subsequent
		calls to the debounced function return the result of the last func invocation.
		
		Note: If leading and trailing options are true, func is invoked on the trailing edge of the timeout only
		if the the debounced function is invoked more than once during the wait timeout.
		
		See David Corbacho’s article for details over the differences between _.debounce and _.throttle.
	**/
	function debounce<T:((args:haxe.extern.Rest<Any>) -> Dynamic)>(func:T, ?wait:Float, ?options:DebounceSettings):DebouncedFunc<T>;
	/**
		Defers invoking the func until the current call stack has cleared. Any additional arguments are provided to
		func when it’s invoked.
	**/
	function defer(func:(args:haxe.extern.Rest<Dynamic>) -> Dynamic, args:haxe.extern.Rest<Dynamic>):Float;
	/**
		Invokes func after wait milliseconds. Any additional arguments are provided to func when it’s invoked.
	**/
	function delay(func:(args:haxe.extern.Rest<Dynamic>) -> Dynamic, wait:Float, args:haxe.extern.Rest<Dynamic>):Float;
	/**
		Creates a function that invokes `func` with arguments reversed.
	**/
	function flip<T:((args:haxe.extern.Rest<Any>) -> Dynamic)>(func:T):T;
	/**
		Creates a function that memoizes the result of func. If resolver is provided it determines the cache key for
		storing the result based on the arguments provided to the memoized function. By default, the first argument
		provided to the memoized function is coerced to a string and used as the cache key. The func is invoked with
		the this binding of the memoized function.
	**/
	var memoize : {
		@:selfCall
		function call<T:((args:haxe.extern.Rest<Any>) -> Dynamic)>(func:T, ?resolver:(args:haxe.extern.Rest<Dynamic>) -> Dynamic):{
			@:selfCall
			function call(args:haxe.extern.Rest<Any>):Dynamic;
			var cache : MapCache;
		};
		var Cache : MapCacheConstructor;
	};
	/**
		Creates a function that negates the result of the predicate func. The func predicate is invoked with
		the this binding and arguments of the created function.
	**/
	function negate<T:(Array<Dynamic>)>(predicate:(args:haxe.extern.Rest<Any>) -> Bool):(args:haxe.extern.Rest<Any>) -> Bool;
	/**
		Creates a function that is restricted to invoking func once. Repeat calls to the function return the value
		of the first call. The func is invoked with the this binding and arguments of the created function.
	**/
	function once<T:((args:haxe.extern.Rest<Any>) -> Dynamic)>(func:T):T;
	/**
		Creates a function that runs each argument through a corresponding transform function.
	**/
	function overArgs(func:(args:haxe.extern.Rest<Dynamic>) -> Dynamic, transforms:haxe.extern.Rest<Many<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>>):(args:haxe.extern.Rest<Dynamic>) -> Dynamic;
	/**
		Creates a function that, when called, invokes func with any additional partial arguments
		prepended to those provided to the new function. This method is similar to _.bind except
		it does not alter the this binding.
	**/
	var partial : Partial;
	/**
		This method is like _.partial except that partial arguments are appended to those provided
		to the new function.
	**/
	var partialRight : PartialRight;
	/**
		Creates a function that invokes func with arguments arranged according to the specified indexes where the
		argument value at the first index is provided as the first argument, the argument value at the second index
		is provided as the second argument, and so on.
	**/
	function rearg(func:(args:haxe.extern.Rest<Dynamic>) -> Dynamic, indexes:haxe.extern.Rest<Many<Float>>):(args:haxe.extern.Rest<Dynamic>) -> Dynamic;
	/**
		Creates a function that invokes func with the this binding of the created function and arguments from start
		and beyond provided as an array.
		
		Note: This method is based on the rest parameter.
	**/
	function rest(func:(args:haxe.extern.Rest<Dynamic>) -> Dynamic, ?start:Float):(args:haxe.extern.Rest<Dynamic>) -> Dynamic;
	/**
		Creates a function that invokes func with the this binding of the created function and an array of arguments
		much like Function#apply.
		
		Note: This method is based on the spread operator.
	**/
	function spread<TResult>(func:(args:haxe.extern.Rest<Dynamic>) -> TResult, ?start:Float):(args:haxe.extern.Rest<Dynamic>) -> TResult;
	/**
		Creates a throttled function that only invokes func at most once per every wait milliseconds. The throttled
		function comes with a cancel method to cancel delayed invocations and a flush method to immediately invoke
		them. Provide an options object to indicate that func should be invoked on the leading and/or trailing edge
		of the wait timeout. Subsequent calls to the throttled function return the result of the last func call.
		
		Note: If leading and trailing options are true, func is invoked on the trailing edge of the timeout only if
		the the throttled function is invoked more than once during the wait timeout.
	**/
	function throttle<T:((args:haxe.extern.Rest<Any>) -> Dynamic)>(func:T, ?wait:Float, ?options:ThrottleSettings):DebouncedFunc<T>;
	/**
		Creates a function that accepts up to one argument, ignoring any
		additional arguments.
	**/
	function unary<T, TResult>(func:(arg1:T, args:haxe.extern.Rest<Dynamic>) -> TResult):(arg1:T) -> TResult;
	/**
		Creates a function that provides value to the wrapper function as its first argument. Any additional
		arguments provided to the function are appended to those provided to the wrapper function. The wrapper is
		invoked with the this binding of the created function.
	**/
	function wrap<T, TArgs, TResult>(value:T, wrapper:(value:T, args:haxe.extern.Rest<TArgs>) -> TResult):(args:haxe.extern.Rest<TArgs>) -> TResult;
	/**
		Casts value as an array if it’s not one.
	**/
	function castArray<T>(?value:ts.AnyOf2<haxe.ds.ReadOnlyArray<T>, T>):Array<T>;
	/**
		Creates a shallow clone of value.
		
		Note: This method is loosely based on the structured clone algorithm and supports cloning arrays,
		array buffers, booleans, date objects, maps, numbers, Object objects, regexes, sets, strings, symbols,
		and typed arrays. The own enumerable properties of arguments objects are cloned as plain objects. An empty
		object is returned for uncloneable values such as error objects, functions, DOM nodes, and WeakMaps.
	**/
	function clone<T>(value:T):T;
	/**
		This method is like _.clone except that it recursively clones value.
	**/
	function cloneDeep<T>(value:T):T;
	/**
		This method is like _.cloneWith except that it recursively clones value.
	**/
	@:overload(function<T>(value:T):T { })
	function cloneDeepWith<T>(value:T, customizer:CloneDeepWithCustomizer<T>):Dynamic;
	/**
		This method is like _.clone except that it accepts customizer which is invoked to produce the cloned value.
		If customizer returns undefined cloning is handled by the method instead.
	**/
	@:overload(function<T, TResult>(value:T, customizer:CloneWithCustomizer<T, Null<TResult>>):ts.AnyOf2<TResult, T> { })
	@:overload(function<T>(value:T):T { })
	function cloneWith<T, TResult:(Null<ts.AnyOf4<String, Float, Bool, Dynamic>>)>(value:T, customizer:CloneWithCustomizer<T, TResult>):TResult;
	/**
		Checks if object conforms to source by invoking the predicate properties of source with the
		corresponding property values of object.
		
		Note: This method is equivalent to _.conforms when source is partially applied.
	**/
	function conformsTo<T>(object:T, source:{ }):Bool;
	/**
		Performs a [`SameValueZero`](http://ecma-international.org/ecma-262/6.0/#sec-samevaluezero)
		comparison between two values to determine if they are equivalent.
	**/
	function eq(value:Dynamic, other:Dynamic):Bool;
	/**
		Checks if value is greater than other.
	**/
	function gt(value:Dynamic, other:Dynamic):Bool;
	/**
		Checks if value is greater than or equal to other.
	**/
	function gte(value:Dynamic, other:Dynamic):Bool;
	/**
		Checks if value is classified as an arguments object.
	**/
	function isArguments(?value:Dynamic):Bool;
	/**
		Checks if value is classified as an Array object.
	**/
	@:overload(function<T>(?value:Dynamic):Bool { })
	function isArray(?value:Dynamic):Bool;
	/**
		Checks if value is classified as an ArrayBuffer object.
	**/
	function isArrayBuffer(?value:Dynamic):Bool;
	/**
		Checks if `value` is array-like. A value is considered array-like if it's
		not a function and has a `value.length` that's an integer greater than or
		equal to `0` and less than or equal to `Number.MAX_SAFE_INTEGER`.
	**/
	@:overload(function(value:Null<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>):Bool { })
	@:overload(function(value:Dynamic):Bool { })
	function isArrayLike<T:({
		var __lodashAnyHack : Dynamic;
	})>(t:T):Bool;
	/**
		This method is like `_.isArrayLike` except that it also checks if `value`
		is an object.
	**/
	@:overload(function(value:Null<ts.AnyOf5<String, Float, Bool, haxe.Constraints.Function, (args:haxe.extern.Rest<Dynamic>) -> Dynamic>>):Bool { })
	@:overload(function(value:Dynamic):Bool { })
	function isArrayLikeObject<T:({
		var __lodashAnyHack : Dynamic;
	})>(value:T):Bool;
	/**
		Checks if value is classified as a boolean primitive or object.
	**/
	function isBoolean(?value:Dynamic):Bool;
	/**
		Checks if value is a buffer.
	**/
	function isBuffer(?value:Dynamic):Bool;
	/**
		Checks if value is classified as a Date object.
	**/
	function isDate(?value:Dynamic):Bool;
	/**
		Checks if value is a DOM element.
	**/
	function isElement(?value:Dynamic):Bool;
	/**
		Checks if value is empty. A value is considered empty unless it’s an arguments object, array, string, or
		jQuery-like collection with a length greater than 0 or an object with own enumerable properties.
	**/
	function isEmpty(?value:Dynamic):Bool;
	/**
		Performs a deep comparison between two values to determine if they are
		equivalent.
		
		**Note:** This method supports comparing arrays, array buffers, booleans,
		date objects, error objects, maps, numbers, `Object` objects, regexes,
		sets, strings, symbols, and typed arrays. `Object` objects are compared
		by their own, not inherited, enumerable properties. Functions and DOM
		nodes are **not** supported.
	**/
	function isEqual(value:Dynamic, other:Dynamic):Bool;
	/**
		This method is like `_.isEqual` except that it accepts `customizer` which is
		invoked to compare values. If `customizer` returns `undefined` comparisons are
		handled by the method instead. The `customizer` is invoked with up to seven arguments:
		(objValue, othValue [, index|key, object, other, stack]).
	**/
	function isEqualWith(value:Dynamic, other:Dynamic, ?customizer:IsEqualCustomizer):Bool;
	/**
		Checks if value is an Error, EvalError, RangeError, ReferenceError, SyntaxError, TypeError, or URIError
		object.
	**/
	function isError(value:Dynamic):Bool;
	/**
		Checks if value is a finite primitive number.
		
		Note: This method is based on Number.isFinite.
	**/
	function isFinite(?value:Dynamic):Bool;
	/**
		Checks if value is a callable function.
	**/
	function isFunction(value:Dynamic):Bool;
	/**
		Checks if `value` is an integer.
		
		**Note:** This method is based on [`Number.isInteger`](https://mdn.io/Number/isInteger).
	**/
	function isInteger(?value:Dynamic):Bool;
	/**
		Checks if `value` is a valid array-like length.
		
		**Note:** This function is loosely based on [`ToLength`](http://ecma-international.org/ecma-262/6.0/#sec-tolength).
	**/
	function isLength(?value:Dynamic):Bool;
	/**
		Checks if value is classified as a Map object.
	**/
	function isMap(?value:Dynamic):Bool;
	/**
		Performs a deep comparison between `object` and `source` to determine if
		`object` contains equivalent property values.
		
		**Note:** This method supports comparing the same values as `_.isEqual`.
	**/
	function isMatch(object:Dynamic, source:Dynamic):Bool;
	/**
		This method is like `_.isMatch` except that it accepts `customizer` which
		is invoked to compare values. If `customizer` returns `undefined` comparisons
		are handled by the method instead. The `customizer` is invoked with three
		arguments: (objValue, srcValue, index|key, object, source).
	**/
	function isMatchWith(object:Dynamic, source:Dynamic, customizer:IsMatchWithCustomizer):Bool;
	/**
		Checks if value is NaN.
		
		Note: This method is not the same as isNaN which returns true for undefined and other non-numeric values.
	**/
	function isNaN(?value:Dynamic):Bool;
	/**
		Checks if value is a native function.
	**/
	function isNative(value:Dynamic):Bool;
	/**
		Checks if `value` is `null` or `undefined`.
	**/
	function isNil(value:Dynamic):Bool;
	/**
		Checks if value is null.
	**/
	function isNull(value:Dynamic):Bool;
	/**
		Checks if value is classified as a Number primitive or object.
		
		Note: To exclude Infinity, -Infinity, and NaN, which are classified as numbers, use the _.isFinite method.
	**/
	function isNumber(?value:Dynamic):Bool;
	/**
		Checks if value is the language type of Object. (e.g. arrays, functions, objects, regexes, new Number(0),
		and new String(''))
	**/
	function isObject(?value:Dynamic):Bool;
	/**
		Checks if `value` is object-like. A value is object-like if it's not `null`
		and has a `typeof` result of "object".
	**/
	function isObjectLike(?value:Dynamic):Bool;
	/**
		Checks if value is a plain object, that is, an object created by the Object constructor or one with a
		[[Prototype]] of null.
		
		Note: This method assumes objects created by the Object constructor have no inherited enumerable properties.
	**/
	function isPlainObject(?value:Dynamic):Bool;
	/**
		Checks if value is classified as a RegExp object.
	**/
	function isRegExp(?value:Dynamic):Bool;
	/**
		Checks if `value` is a safe integer. An integer is safe if it's an IEEE-754
		double precision number which isn't the result of a rounded unsafe integer.
		
		**Note:** This method is based on [`Number.isSafeInteger`](https://mdn.io/Number/isSafeInteger).
	**/
	function isSafeInteger(value:Dynamic):Bool;
	/**
		Checks if value is classified as a Set object.
	**/
	function isSet(?value:Dynamic):Bool;
	/**
		Checks if value is classified as a String primitive or object.
	**/
	function isString(?value:Dynamic):Bool;
	/**
		Checks if `value` is classified as a `Symbol` primitive or object.
	**/
	function isSymbol(value:Dynamic):Bool;
	/**
		Checks if value is classified as a typed array.
	**/
	function isTypedArray(value:Dynamic):Bool;
	/**
		Checks if value is undefined.
	**/
	function isUndefined(value:Dynamic):Bool;
	/**
		Checks if value is classified as a WeakMap object.
	**/
	function isWeakMap(?value:Dynamic):Bool;
	/**
		Checks if value is classified as a WeakSet object.
	**/
	function isWeakSet(?value:Dynamic):Bool;
	/**
		Checks if value is less than other.
	**/
	function lt(value:Dynamic, other:Dynamic):Bool;
	/**
		Checks if value is less than or equal to other.
	**/
	function lte(value:Dynamic, other:Dynamic):Bool;
	/**
		Converts value to an array.
	**/
	@:overload(function<T>(value:T):Array<Dynamic> { })
	@:overload(function():Array<Dynamic> { })
	function toArray<T>(value:Null<ts.AnyOf2<Dictionary<T>, NumericDictionary<T>>>):Array<T>;
	/**
		Converts `value` to a finite number.
	**/
	function toFinite(value:Dynamic):Float;
	/**
		Converts `value` to an integer.
		
		**Note:** This function is loosely based on [`ToInteger`](http://www.ecma-international.org/ecma-262/6.0/#sec-tointeger).
	**/
	function toInteger(value:Dynamic):Float;
	/**
		Converts `value` to an integer suitable for use as the length of an
		array-like object.
		
		**Note:** This method is based on [`ToLength`](http://ecma-international.org/ecma-262/6.0/#sec-tolength).
	**/
	function toLength(value:Dynamic):Float;
	/**
		Converts `value` to a number.
	**/
	function toNumber(value:Dynamic):Float;
	/**
		Converts value to a plain object flattening inherited enumerable properties of value to own properties
		of the plain object.
	**/
	function toPlainObject(?value:Dynamic):Dynamic;
	/**
		Converts `value` to a safe integer. A safe integer can be compared and
		represented correctly.
	**/
	function toSafeInteger(value:Dynamic):Float;
	/**
		Converts `value` to a string if it's not one. An empty string is returned
		for `null` and `undefined` values. The sign of `-0` is preserved.
	**/
	function toString(value:Dynamic):String;
	/**
		Adds two numbers.
	**/
	function add(augend:Float, addend:Float):Float;
	/**
		Calculates n rounded up to precision.
	**/
	function ceil(n:Float, ?precision:Float):Float;
	/**
		Divide two numbers.
	**/
	function divide(dividend:Float, divisor:Float):Float;
	/**
		Calculates n rounded down to precision.
	**/
	function floor(n:Float, ?precision:Float):Float;
	/**
		Computes the maximum value of `array`. If `array` is empty or falsey
		`undefined` is returned.
	**/
	function max<T>(collection:Null<List_<T>>):Null<T>;
	/**
		This method is like `_.max` except that it accepts `iteratee` which is
		invoked for each element in `array` to generate the criterion by which
		the value is ranked. The iteratee is invoked with one argument: (value).
	**/
	function maxBy<T>(collection:Null<List_<T>>, ?iteratee:ValueIteratee<T>):Null<T>;
	/**
		Computes the mean of the values in `array`.
	**/
	function mean(collection:Null<List_<Dynamic>>):Float;
	/**
		Computes the mean of the provided properties of the objects in the `array`
	**/
	function meanBy<T>(collection:Null<List_<T>>, ?iteratee:ValueIteratee<T>):Float;
	/**
		Computes the minimum value of `array`. If `array` is empty or falsey
		`undefined` is returned.
	**/
	function min<T>(collection:Null<List_<T>>):Null<T>;
	/**
		This method is like `_.min` except that it accepts `iteratee` which is
		invoked for each element in `array` to generate the criterion by which
		the value is ranked. The iteratee is invoked with one argument: (value).
	**/
	function minBy<T>(collection:Null<List_<T>>, ?iteratee:ValueIteratee<T>):Null<T>;
	/**
		Multiply two numbers.
	**/
	function multiply(multiplier:Float, multiplicand:Float):Float;
	/**
		Calculates n rounded to precision.
	**/
	function round(n:Float, ?precision:Float):Float;
	/**
		Subtract two numbers.
	**/
	function subtract(minuend:Float, subtrahend:Float):Float;
	/**
		Computes the sum of the values in `array`.
	**/
	function sum(collection:Null<List_<Dynamic>>):Float;
	/**
		This method is like `_.sum` except that it accepts `iteratee` which is
		invoked for each element in `array` to generate the value to be summed.
		The iteratee is invoked with one argument: (value).
	**/
	function sumBy<T>(collection:Null<List_<T>>, ?iteratee:ts.AnyOf2<String, (value:T) -> Float>):Float;
	/**
		Clamps `number` within the inclusive `lower` and `upper` bounds.
	**/
	@:overload(function(number:Float, upper:Float):Float { })
	function clamp(number:Float, lower:Float, upper:Float):Float;
	/**
		Checks if n is between start and up to but not including, end. If end is not specified it’s set to start
		with start then set to 0.
	**/
	function inRange(n:Float, start:Float, ?end:Float):Bool;
	/**
		Produces a random number between min and max (inclusive). If only one argument is provided a number between
		0 and the given number is returned. If floating is true, or either min or max are floats, a floating-point
		number is returned instead of an integer.
	**/
	@:overload(function(max:Float, ?floating:Bool):Float { })
	@:overload(function(min:Float, max:Float, ?floating:Bool):Float { })
	@:overload(function(min:Float, index:ts.AnyOf2<String, Float>, guard:Dynamic):Float { })
	function random(?floating:Bool):Float;
	/**
		Assigns own enumerable properties of source objects to the destination
		object. Source objects are applied from left to right. Subsequent sources
		overwrite property assignments of previous sources.
		
		**Note:** This method mutates `object` and is loosely based on
		[`Object.assign`](https://mdn.io/Object/assign).
	**/
	@:overload(function<TObject, TSource1, TSource2>(object:TObject, source1:TSource1, source2:TSource2):Dynamic { })
	@:overload(function<TObject, TSource1, TSource2, TSource3>(object:TObject, source1:TSource1, source2:TSource2, source3:TSource3):Dynamic { })
	@:overload(function<TObject, TSource1, TSource2, TSource3, TSource4>(object:TObject, source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4):Dynamic { })
	@:overload(function<TObject>(object:TObject):TObject { })
	@:overload(function(object:Dynamic, otherArgs:haxe.extern.Rest<Dynamic>):Dynamic { })
	function assign<TObject, TSource>(object:TObject, source:TSource):Dynamic;
	/**
		This method is like `_.assign` except that it iterates over own and
		inherited source properties.
		
		**Note:** This method mutates `object`.
	**/
	@:overload(function<TObject, TSource1, TSource2>(object:TObject, source1:TSource1, source2:TSource2):Dynamic { })
	@:overload(function<TObject, TSource1, TSource2, TSource3>(object:TObject, source1:TSource1, source2:TSource2, source3:TSource3):Dynamic { })
	@:overload(function<TObject, TSource1, TSource2, TSource3, TSource4>(object:TObject, source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4):Dynamic { })
	@:overload(function<TObject>(object:TObject):TObject { })
	@:overload(function<TResult>(object:Dynamic, otherArgs:haxe.extern.Rest<Dynamic>):TResult { })
	function assignIn<TObject, TSource>(object:TObject, source:TSource):Dynamic;
	/**
		This method is like `_.assignIn` except that it accepts `customizer` which
		is invoked to produce the assigned values. If `customizer` returns `undefined`
		assignment is handled by the method instead. The `customizer` is invoked
		with five arguments: (objValue, srcValue, key, object, source).
		
		**Note:** This method mutates `object`.
	**/
	@:overload(function<TObject, TSource1, TSource2>(object:TObject, source1:TSource1, source2:TSource2, customizer:AssignCustomizer):Dynamic { })
	@:overload(function<TObject, TSource1, TSource2, TSource3>(object:TObject, source1:TSource1, source2:TSource2, source3:TSource3, customizer:AssignCustomizer):Dynamic { })
	@:overload(function<TObject, TSource1, TSource2, TSource3, TSource4>(object:TObject, source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4, customizer:AssignCustomizer):Dynamic { })
	@:overload(function<TObject>(object:TObject):TObject { })
	@:overload(function<TResult>(object:Dynamic, otherArgs:haxe.extern.Rest<Dynamic>):TResult { })
	function assignInWith<TObject, TSource>(object:TObject, source:TSource, customizer:AssignCustomizer):Dynamic;
	/**
		This method is like `_.assign` except that it accepts `customizer` which
		is invoked to produce the assigned values. If `customizer` returns `undefined`
		assignment is handled by the method instead. The `customizer` is invoked
		with five arguments: (objValue, srcValue, key, object, source).
		
		**Note:** This method mutates `object`.
	**/
	@:overload(function<TObject, TSource1, TSource2>(object:TObject, source1:TSource1, source2:TSource2, customizer:AssignCustomizer):Dynamic { })
	@:overload(function<TObject, TSource1, TSource2, TSource3>(object:TObject, source1:TSource1, source2:TSource2, source3:TSource3, customizer:AssignCustomizer):Dynamic { })
	@:overload(function<TObject, TSource1, TSource2, TSource3, TSource4>(object:TObject, source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4, customizer:AssignCustomizer):Dynamic { })
	@:overload(function<TObject>(object:TObject):TObject { })
	@:overload(function<TResult>(object:Dynamic, otherArgs:haxe.extern.Rest<Dynamic>):TResult { })
	function assignWith<TObject, TSource>(object:TObject, source:TSource, customizer:AssignCustomizer):Dynamic;
	/**
		Creates an array of elements corresponding to the given keys, or indexes, of collection. Keys may be
		specified as individual arguments or as arrays of keys.
	**/
	@:overload(function<T:(Dynamic)>(object:Null<T>, props:haxe.extern.Rest<Many<Dynamic>>):Array<Dynamic> { })
	function at<T>(object:Null<ts.AnyOf2<Dictionary<T>, NumericDictionary<T>>>, props:haxe.extern.Rest<PropertyPath>):Array<T>;
	/**
		Creates an object that inherits from the given prototype object. If a properties object is provided its own
		enumerable properties are assigned to the created object.
	**/
	function create<T:(Dynamic), U:(Dynamic)>(prototype:T, ?properties:U):Dynamic;
	/**
		Assigns own enumerable properties of source object(s) to the destination object for all destination
		properties that resolve to undefined. Once a property is set, additional values of the same property are
		ignored.
		
		Note: This method mutates object.
	**/
	@:overload(function<TObject, TSource1, TSource2>(object:TObject, source1:TSource1, source2:TSource2):Dynamic { })
	@:overload(function<TObject, TSource1, TSource2, TSource3>(object:TObject, source1:TSource1, source2:TSource2, source3:TSource3):Dynamic { })
	@:overload(function<TObject, TSource1, TSource2, TSource3, TSource4>(object:TObject, source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4):Dynamic { })
	@:overload(function<TObject>(object:TObject):TObject { })
	@:overload(function(object:Dynamic, sources:haxe.extern.Rest<Dynamic>):Dynamic { })
	function defaults<TObject, TSource>(object:TObject, source:TSource):Dynamic;
	/**
		This method is like _.defaults except that it recursively assigns default properties.
	**/
	function defaultsDeep(object:Dynamic, sources:haxe.extern.Rest<Dynamic>):Dynamic;
	@:overload(function(?object:Dynamic):Array<ts.Tuple2<String, Dynamic>> { })
	function entries<T>(?object:ts.AnyOf2<Dictionary<T>, NumericDictionary<T>>):Array<ts.Tuple2<String, T>>;
	@:overload(function(?object:Dynamic):Array<ts.Tuple2<String, Dynamic>> { })
	function entriesIn<T>(?object:ts.AnyOf2<Dictionary<T>, NumericDictionary<T>>):Array<ts.Tuple2<String, T>>;
	@:overload(function<TObject, TSource1, TSource2>(object:TObject, source1:TSource1, source2:TSource2):Dynamic { })
	@:overload(function<TObject, TSource1, TSource2, TSource3>(object:TObject, source1:TSource1, source2:TSource2, source3:TSource3):Dynamic { })
	@:overload(function<TObject, TSource1, TSource2, TSource3, TSource4>(object:TObject, source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4):Dynamic { })
	@:overload(function<TObject>(object:TObject):TObject { })
	@:overload(function<TResult>(object:Dynamic, otherArgs:haxe.extern.Rest<Dynamic>):TResult { })
	function extend<TObject, TSource>(object:TObject, source:TSource):Dynamic;
	@:overload(function<TObject, TSource1, TSource2>(object:TObject, source1:TSource1, source2:TSource2, customizer:AssignCustomizer):Dynamic { })
	@:overload(function<TObject, TSource1, TSource2, TSource3>(object:TObject, source1:TSource1, source2:TSource2, source3:TSource3, customizer:AssignCustomizer):Dynamic { })
	@:overload(function<TObject, TSource1, TSource2, TSource3, TSource4>(object:TObject, source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4, customizer:AssignCustomizer):Dynamic { })
	@:overload(function<TObject>(object:TObject):TObject { })
	@:overload(function<TResult>(object:Dynamic, otherArgs:haxe.extern.Rest<Dynamic>):TResult { })
	function extendWith<TObject, TSource>(object:TObject, source:TSource, customizer:AssignCustomizer):Dynamic;
	/**
		This method is like _.find except that it returns the key of the first element predicate returns truthy for
		instead of the element itself.
	**/
	function findKey<T>(object:Null<T>, ?predicate:ObjectIteratee<T>):Null<String>;
	/**
		This method is like _.findKey except that it iterates over elements of a collection in the opposite order.
	**/
	function findLastKey<T>(object:Null<T>, ?predicate:ObjectIteratee<T>):Null<String>;
	/**
		Iterates over own and inherited enumerable properties of an object invoking iteratee for each property. The
		iteratee is invoked with three arguments: (value, key, object). Iteratee functions may
		exit iteration early by explicitly returning false.
	**/
	@:overload(function<T>(object:Null<T>, ?iteratee:ObjectIterator<T, Dynamic>):Null<T> { })
	function forIn<T>(object:T, ?iteratee:ObjectIterator<T, Dynamic>):T;
	/**
		This method is like _.forIn except that it iterates over properties of object in the opposite order.
	**/
	@:overload(function<T>(object:Null<T>, ?iteratee:ObjectIterator<T, Dynamic>):Null<T> { })
	function forInRight<T>(object:T, ?iteratee:ObjectIterator<T, Dynamic>):T;
	/**
		Iterates over own enumerable properties of an object invoking iteratee for each property. The iteratee is
		invoked with three arguments: (value, key, object). Iteratee functions may exit
		iteration early by explicitly returning false.
	**/
	@:overload(function<T>(object:Null<T>, ?iteratee:ObjectIterator<T, Dynamic>):Null<T> { })
	function forOwn<T>(object:T, ?iteratee:ObjectIterator<T, Dynamic>):T;
	/**
		This method is like _.forOwn except that it iterates over properties of object in the opposite order.
	**/
	@:overload(function<T>(object:Null<T>, ?iteratee:ObjectIterator<T, Dynamic>):Null<T> { })
	function forOwnRight<T>(object:T, ?iteratee:ObjectIterator<T, Dynamic>):T;
	/**
		Creates an array of function property names from own enumerable properties
		of `object`.
	**/
	function functions(object:Dynamic):Array<String>;
	/**
		Creates an array of function property names from own and inherited
		enumerable properties of `object`.
	**/
	function functionsIn<T:({ })>(object:Dynamic):Array<String>;
	/**
		Gets the property value at path of object. If the resolved value is undefined the defaultValue is used
		in its place.
	**/
	@:overload(function<TObject:(Dynamic), TKey:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(object:Null<TObject>, path:ts.AnyOf2<TKey, ts.Tuple1<TKey>>):Null<Dynamic> { })
	@:overload(function<TObject:(Dynamic), TKey:(ts.AnyOf3<String, Float, js.lib.Symbol>), TDefault>(object:Null<TObject>, path:ts.AnyOf2<TKey, ts.Tuple1<TKey>>, defaultValue:TDefault):ts.AnyOf2<TDefault, { }> { })
	@:overload(function<TObject:(Dynamic), TKey1:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey2:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(object:TObject, path:ts.Tuple2<TKey1, TKey2>):Dynamic { })
	@:overload(function<TObject:(Dynamic), TKey1:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey2:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(object:Null<TObject>, path:ts.Tuple2<TKey1, TKey2>):Null<Dynamic> { })
	@:overload(function<TObject:(Dynamic), TKey1:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey2:(ts.AnyOf3<String, Float, js.lib.Symbol>), TDefault>(object:Null<TObject>, path:ts.Tuple2<TKey1, TKey2>, defaultValue:TDefault):ts.AnyOf2<TDefault, { }> { })
	@:overload(function<TObject:(Dynamic), TKey1:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey2:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey3:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(object:TObject, path:ts.Tuple3<TKey1, TKey2, TKey3>):Dynamic { })
	@:overload(function<TObject:(Dynamic), TKey1:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey2:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey3:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(object:Null<TObject>, path:ts.Tuple3<TKey1, TKey2, TKey3>):Null<Dynamic> { })
	@:overload(function<TObject:(Dynamic), TKey1:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey2:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey3:(ts.AnyOf3<String, Float, js.lib.Symbol>), TDefault>(object:Null<TObject>, path:ts.Tuple3<TKey1, TKey2, TKey3>, defaultValue:TDefault):ts.AnyOf2<TDefault, { }> { })
	@:overload(function<TObject:(Dynamic), TKey1:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey2:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey3:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey4:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(object:TObject, path:ts.Tuple4<TKey1, TKey2, TKey3, TKey4>):Dynamic { })
	@:overload(function<TObject:(Dynamic), TKey1:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey2:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey3:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey4:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(object:Null<TObject>, path:ts.Tuple4<TKey1, TKey2, TKey3, TKey4>):Null<Dynamic> { })
	@:overload(function<TObject:(Dynamic), TKey1:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey2:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey3:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey4:(ts.AnyOf3<String, Float, js.lib.Symbol>), TDefault>(object:Null<TObject>, path:ts.Tuple4<TKey1, TKey2, TKey3, TKey4>, defaultValue:TDefault):ts.AnyOf2<TDefault, { }> { })
	@:overload(function<T>(object:NumericDictionary<T>, path:Float):T { })
	@:overload(function<T>(object:Null<NumericDictionary<T>>, path:Float):Null<T> { })
	@:overload(function<T, TDefault>(object:Null<NumericDictionary<T>>, path:Float, defaultValue:TDefault):ts.AnyOf2<T, TDefault> { })
	@:overload(function<TDefault>(object:Null<ts.Never>, path:PropertyPath, defaultValue:TDefault):TDefault { })
	@:overload(function(object:Null<ts.Never>, path:PropertyPath):Null<Any> { })
	@:overload(function(object:Dynamic, path:PropertyPath, ?defaultValue:Dynamic):Dynamic { })
	function get<TObject:(Dynamic), TKey:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(object:TObject, path:ts.AnyOf2<TKey, ts.Tuple1<TKey>>):Dynamic;
	/**
		Checks if `path` is a direct property of `object`.
	**/
	function has<T>(object:T, path:PropertyPath):Bool;
	/**
		Checks if `path` is a direct or inherited property of `object`.
	**/
	function hasIn<T>(object:T, path:PropertyPath):Bool;
	/**
		Creates an object composed of the inverted keys and values of object. If object contains duplicate values,
		subsequent values overwrite property assignments of previous values unless multiValue is true.
	**/
	function invert(object:Dynamic):Dictionary<String>;
	/**
		This method is like _.invert except that the inverted object is generated from the results of running each
		element of object through iteratee. The corresponding inverted value of each inverted key is an array of
		keys responsible for generating the inverted value. The iteratee is invoked with one argument: (value).
	**/
	@:overload(function<T:(Dynamic)>(object:Null<T>, ?interatee:ValueIteratee<Dynamic>):Dictionary<Array<String>> { })
	function invertBy<T>(object:Null<ts.AnyOf2<Dictionary<T>, NumericDictionary<T>>>, ?interatee:ValueIteratee<T>):Dictionary<Array<String>>;
	/**
		Invokes the method at path of object.
	**/
	function invoke(object:Dynamic, path:PropertyPath, args:haxe.extern.Rest<Dynamic>):Dynamic;
	/**
		Creates an array of the own enumerable property names of object.
		
		Note: Non-object values are coerced to objects. See the ES spec for more details.
	**/
	function keys(?object:Dynamic):Array<String>;
	/**
		Creates an array of the own and inherited enumerable property names of object.
		
		Note: Non-object values are coerced to objects.
	**/
	function keysIn(?object:Dynamic):Array<String>;
	/**
		The opposite of _.mapValues; this method creates an object with the same values as object and keys generated
		by running each own enumerable property of object through iteratee.
	**/
	@:overload(function<T:(Dynamic)>(object:Null<T>, ?iteratee:ObjectIteratee<T>):Dictionary<Dynamic> { })
	function mapKeys<T>(object:Null<List_<T>>, ?iteratee:ListIteratee<T>):Dictionary<T>;
	/**
		Creates an object with the same keys as object and values generated by running each own
		enumerable property of object through iteratee. The iteratee function is
		invoked with three arguments: (value, key, object).
	**/
	@:overload(function<T:(Dynamic), TResult>(obj:Null<T>, callback:ObjectIterator<T, TResult>):Dynamic { })
	@:overload(function<T>(obj:Null<ts.AnyOf2<Dictionary<T>, NumericDictionary<T>>>, iteratee:Dynamic):Dictionary<Bool> { })
	@:overload(function<T:(Dynamic)>(obj:Null<T>, iteratee:Dynamic):Dynamic { })
	@:overload(function<T, TKey:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(obj:Null<ts.AnyOf2<Dictionary<T>, NumericDictionary<T>>>, iteratee:TKey):Dictionary<Dynamic> { })
	@:overload(function<T>(obj:Null<ts.AnyOf2<Dictionary<T>, NumericDictionary<T>>>, iteratee:String):Dictionary<Dynamic> { })
	@:overload(function<T:(Dynamic)>(obj:Null<T>, iteratee:String):Dynamic { })
	@:overload(function(obj:Null<String>):NumericDictionary<String> { })
	@:overload(function<T>(obj:Null<ts.AnyOf2<Dictionary<T>, NumericDictionary<T>>>):Dictionary<T> { })
	@:overload(function<T:(Dynamic)>(obj:T):T { })
	@:overload(function<T:(Dynamic)>(obj:Null<T>):T { })
	function mapValues<TResult>(obj:Null<String>, callback:StringIterator<TResult>):NumericDictionary<TResult>;
	/**
		Recursively merges own and inherited enumerable properties of source
		objects into the destination object, skipping source properties that resolve
		to `undefined`. Array and plain object properties are merged recursively.
		Other objects and value types are overridden by assignment. Source objects
		are applied from left to right. Subsequent sources overwrite property
		assignments of previous sources.
		
		**Note:** This method mutates `object`.
	**/
	@:overload(function<TObject, TSource1, TSource2>(object:TObject, source1:TSource1, source2:TSource2):Dynamic { })
	@:overload(function<TObject, TSource1, TSource2, TSource3>(object:TObject, source1:TSource1, source2:TSource2, source3:TSource3):Dynamic { })
	@:overload(function<TObject, TSource1, TSource2, TSource3, TSource4>(object:TObject, source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4):Dynamic { })
	@:overload(function(object:Dynamic, otherArgs:haxe.extern.Rest<Dynamic>):Dynamic { })
	function merge<TObject, TSource>(object:TObject, source:TSource):Dynamic;
	/**
		This method is like `_.merge` except that it accepts `customizer` which
		is invoked to produce the merged values of the destination and source
		properties. If `customizer` returns `undefined` merging is handled by the
		method instead. The `customizer` is invoked with seven arguments:
		(objValue, srcValue, key, object, source, stack).
	**/
	@:overload(function<TObject, TSource1, TSource2>(object:TObject, source1:TSource1, source2:TSource2, customizer:(value:Dynamic, srcValue:Dynamic, key:String, object:Dynamic, source:Dynamic) -> Dynamic):Dynamic { })
	@:overload(function<TObject, TSource1, TSource2, TSource3>(object:TObject, source1:TSource1, source2:TSource2, source3:TSource3, customizer:(value:Dynamic, srcValue:Dynamic, key:String, object:Dynamic, source:Dynamic) -> Dynamic):Dynamic { })
	@:overload(function<TObject, TSource1, TSource2, TSource3, TSource4>(object:TObject, source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4, customizer:(value:Dynamic, srcValue:Dynamic, key:String, object:Dynamic, source:Dynamic) -> Dynamic):Dynamic { })
	@:overload(function(object:Dynamic, otherArgs:haxe.extern.Rest<Dynamic>):Dynamic { })
	function mergeWith<TObject, TSource>(object:TObject, source:TSource, customizer:(value:Dynamic, srcValue:Dynamic, key:String, object:Dynamic, source:Dynamic) -> Dynamic):Dynamic;
	/**
		The opposite of `_.pick`; this method creates an object composed of the
		own and inherited enumerable properties of `object` that are not omitted.
	**/
	@:overload(function<T:(Dynamic), K:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(object:Null<T>, paths:haxe.extern.Rest<Many<K>>):{ } { })
	@:overload(function<T:(Dynamic)>(object:Null<T>, paths:haxe.extern.Rest<Many<PropertyName>>):T { })
	function omit<T:(Dynamic), K:(Array<PropertyName>)>(object:Null<T>, paths:haxe.extern.Rest<Any>):{ };
	/**
		The opposite of `_.pickBy`; this method creates an object composed of the
		own and inherited enumerable properties of `object` that `predicate`
		doesn't return truthy for.
	**/
	@:overload(function<T>(object:Null<NumericDictionary<T>>, ?predicate:ValueKeyIteratee<T>):NumericDictionary<T> { })
	@:overload(function<T:(Dynamic)>(object:Null<T>, predicate:ValueKeyIteratee<Dynamic>):T { })
	function omitBy<T>(object:Null<Dictionary<T>>, ?predicate:ValueKeyIteratee<T>):Dictionary<T>;
	/**
		Creates an object composed of the picked `object` properties.
	**/
	@:overload(function<T>(object:Null<T>, props:haxe.extern.Rest<PropertyPath>):T { })
	function pick<T:(Dynamic), U:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(object:T, props:haxe.extern.Rest<Many<U>>):{ };
	/**
		Creates an object composed of the `object` properties `predicate` returns
		truthy for. The predicate is invoked with two arguments: (value, key).
	**/
	@:overload(function<T, S:(T)>(object:Null<NumericDictionary<T>>, predicate:ValueKeyIterateeTypeGuard<T, S>):NumericDictionary<S> { })
	@:overload(function<T>(object:Null<Dictionary<T>>, ?predicate:ValueKeyIteratee<T>):Dictionary<T> { })
	@:overload(function<T>(object:Null<NumericDictionary<T>>, ?predicate:ValueKeyIteratee<T>):NumericDictionary<T> { })
	@:overload(function<T:(Dynamic)>(object:Null<T>, ?predicate:ValueKeyIteratee<Dynamic>):T { })
	function pickBy<T, S:(T)>(object:Null<Dictionary<T>>, predicate:ValueKeyIterateeTypeGuard<T, S>):Dictionary<S>;
	/**
		This method is like _.get except that if the resolved value is a function it’s invoked with the this binding
		of its parent object and its result is returned.
	**/
	function result<TResult>(object:Dynamic, path:PropertyPath, ?defaultValue:ts.AnyOf2<(args:haxe.extern.Rest<Dynamic>) -> TResult, TResult>):TResult;
	/**
		Sets the value at path of object. If a portion of path doesn’t exist it’s created. Arrays are created for
		missing index properties while objects are created for all other missing properties. Use _.setWith to
		customize path creation.
	**/
	@:overload(function<TResult>(object:Dynamic, path:PropertyPath, value:Dynamic):TResult { })
	function set<T:(Dynamic)>(object:T, path:PropertyPath, value:Dynamic):T;
	/**
		This method is like _.set except that it accepts customizer which is invoked to produce the objects of
		path. If customizer returns undefined path creation is handled by the method instead. The customizer is
		invoked with three arguments: (nsValue, key, nsObject).
	**/
	@:overload(function<T:(Dynamic), TResult>(object:T, path:PropertyPath, value:Dynamic, ?customizer:SetWithCustomizer<T>):TResult { })
	function setWith<T:(Dynamic)>(object:T, path:PropertyPath, value:Dynamic, ?customizer:SetWithCustomizer<T>):T;
	/**
		Creates an array of own enumerable key-value pairs for object.
	**/
	@:overload(function(?object:Dynamic):Array<ts.Tuple2<String, Dynamic>> { })
	function toPairs<T>(?object:ts.AnyOf2<Dictionary<T>, NumericDictionary<T>>):Array<ts.Tuple2<String, T>>;
	/**
		Creates an array of own and inherited enumerable key-value pairs for object.
	**/
	@:overload(function(?object:Dynamic):Array<ts.Tuple2<String, Dynamic>> { })
	function toPairsIn<T>(?object:ts.AnyOf2<Dictionary<T>, NumericDictionary<T>>):Array<ts.Tuple2<String, T>>;
	/**
		An alternative to _.reduce; this method transforms object to a new accumulator object which is the result of
		running each of its own enumerable properties through iteratee, with each invocation potentially mutating
		the accumulator object. The iteratee is invoked with four arguments: (accumulator,
		value, key, object). Iteratee functions may exit iteration early by explicitly returning false.
	**/
	@:overload(function<T, TResult>(object:Dictionary<T>, iteratee:MemoVoidDictionaryIterator<T, TResult>, ?accumulator:TResult):TResult { })
	@:overload(function(object:Array<Dynamic>):Array<Dynamic> { })
	@:overload(function(object:Dynamic):Dictionary<Dynamic> { })
	function transform<T, TResult>(object:Array<T>, iteratee:MemoVoidArrayIterator<T, TResult>, ?accumulator:TResult):TResult;
	/**
		Removes the property at path of object.
		
		Note: This method mutates object.
	**/
	function unset(object:Dynamic, path:PropertyPath):Bool;
	/**
		This method is like _.set except that accepts updater to produce the value to set. Use _.updateWith to
		customize path creation. The updater is invoked with one argument: (value).
	**/
	function update(object:Dynamic, path:PropertyPath, updater:(value:Dynamic) -> Dynamic):Dynamic;
	/**
		This method is like `_.update` except that it accepts `customizer` which is
		invoked to produce the objects of `path`.  If `customizer` returns `undefined`
		path creation is handled by the method instead. The `customizer` is invoked
		with three arguments: (nsValue, key, nsObject).
		
		**Note:** This method mutates `object`.
	**/
	@:overload(function<T:(Dynamic), TResult>(object:T, path:PropertyPath, updater:(oldValue:Dynamic) -> Dynamic, ?customizer:SetWithCustomizer<T>):TResult { })
	function updateWith<T:(Dynamic)>(object:T, path:PropertyPath, updater:(oldValue:Dynamic) -> Dynamic, ?customizer:SetWithCustomizer<T>):T;
	/**
		Creates an array of the own enumerable property values of object.
	**/
	@:overload(function<T:(Dynamic)>(object:Null<T>):Array<Dynamic> { })
	@:overload(function(object:Dynamic):Array<Dynamic> { })
	function values<T>(object:Null<ts.AnyOf3<Dictionary<T>, NumericDictionary<T>, List_<T>>>):Array<T>;
	/**
		Creates an array of the own and inherited enumerable property values of object.
	**/
	@:overload(function<T:(Dynamic)>(object:Null<T>):Array<Dynamic> { })
	function valuesIn<T>(object:Null<ts.AnyOf3<Dictionary<T>, NumericDictionary<T>, List_<T>>>):Array<T>;
	/**
		Creates a lodash object that wraps value with explicit method chaining enabled.
	**/
	@:overload(function<T:(Null<ts.Never>)>(value:T):PrimitiveChain<T> { })
	@:overload(function(value:String):StringChain { })
	@:overload(function(value:Null<String>):StringNullableChain { })
	@:overload(function<T:((args:haxe.extern.Rest<Dynamic>) -> Dynamic)>(value:T):FunctionChain<T> { })
	@:overload(function<T>(value:Null<List_<T>>):CollectionChain<T> { })
	@:overload(function<T:(Dynamic)>(value:Null<T>):ObjectChain<T> { })
	@:overload(function<T>(value:T):PrimitiveChain<T> { })
	function chain<TrapAny:({
		var __lodashAnyHack : Dynamic;
	})>(value:TrapAny):{
		function pop():ts.AnyOf7<FunctionChain<Dynamic>, ObjectChain<Dynamic>, PrimitiveChain<Dynamic>, StringChain, Dynamic, StringNullableChain, CollectionChain<Any>>;
		function push(items:haxe.extern.Rest<Dynamic>):Dynamic;
		function shift():ts.AnyOf7<FunctionChain<Dynamic>, ObjectChain<Dynamic>, PrimitiveChain<Dynamic>, StringChain, Dynamic, StringNullableChain, CollectionChain<Any>>;
		function sort(?compareFn:(a:Dynamic, b:Dynamic) -> Float):Dynamic;
		function splice(start:Float, ?deleteCount:Float, items:haxe.extern.Rest<Dynamic>):Dynamic;
		function unshift(items:haxe.extern.Rest<Dynamic>):Dynamic;
		function chunk(?size:Float):CollectionChain<Array<Dynamic>>;
		function compact():CollectionChain<Dynamic>;
		dynamic function concat(values:haxe.extern.Rest<Dynamic>):CollectionChain<Dynamic>;
		function difference(values:haxe.extern.Rest<List_<Dynamic>>):CollectionChain<Dynamic>;
		@:overload(function(values:haxe.extern.Rest<ts.AnyOf7<String, Float, js.lib.Symbol, ts.Tuple2<PropertyName, Dynamic>, (value:Dynamic) -> Any, haxe.DynamicAccess<Dynamic>, List_<Any>>>):CollectionChain<Dynamic> { })
		function differenceBy<T2>(values1:List_<T2>, ?iteratee:ValueIteratee<Dynamic>):CollectionChain<Dynamic>;
		@:overload(function<T2, T3, T4>(values:haxe.extern.Rest<ts.AnyOf2<List_<Any>, Comparator2<Dynamic, ts.Never>>>):CollectionChain<Dynamic> { })
		function differenceWith<T2>(values:List_<T2>, comparator:Comparator2<Dynamic, T2>):CollectionChain<Dynamic>;
		function drop(?n:Float):CollectionChain<Dynamic>;
		function dropRight(?n:Float):CollectionChain<Dynamic>;
		function dropRightWhile(?predicate:ListIteratee<Dynamic>):CollectionChain<Dynamic>;
		function dropWhile(?predicate:ListIteratee<Dynamic>):CollectionChain<Dynamic>;
		function fill<U>(value:U, ?start:Float, ?end:Float):CollectionChain<Dynamic>;
		function findIndex(?predicate:ListIterateeCustom<Dynamic, Bool>, ?fromIndex:Float):PrimitiveChain<Float>;
		function findLastIndex(?predicate:ListIterateeCustom<Dynamic, Bool>, ?fromIndex:Float):PrimitiveChain<Float>;
		@:overload(function():StringNullableChain { })
		dynamic function first():ts.AnyOf7<FunctionChain<Dynamic>, ObjectChain<Dynamic>, PrimitiveChain<Dynamic>, StringChain, Dynamic, StringNullableChain, CollectionChain<Any>>;
		@:overload(function():CollectionChain<String> { })
		dynamic function flatten():CollectionChain<Dynamic>;
		function flattenDeep():ts.AnyOf2<CollectionChain<Dynamic>, CollectionChain<Any>>;
		function flattenDepth(?depth:Float):CollectionChain<Dynamic>;
		function fromPairs():ObjectChain<Dictionary<Dynamic>>;
		@:overload(function():StringNullableChain { })
		dynamic function head():ts.AnyOf7<FunctionChain<Dynamic>, ObjectChain<Dynamic>, PrimitiveChain<Dynamic>, StringChain, Dynamic, StringNullableChain, CollectionChain<Any>>;
		function indexOf(value:Dynamic, ?fromIndex:Float):PrimitiveChain<Float>;
		function initial():CollectionChain<Dynamic>;
		function intersection(arrays:haxe.extern.Rest<Null<List_<Dynamic>>>):CollectionChain<Dynamic>;
		@:overload(function(values:haxe.extern.Rest<ts.AnyOf7<String, Float, js.lib.Symbol, ts.Tuple2<PropertyName, Dynamic>, (value:Dynamic) -> Any, haxe.DynamicAccess<Dynamic>, List_<Any>>>):CollectionChain<Dynamic> { })
		function intersectionBy<T2>(values:List_<T2>, iteratee:ValueIteratee<Dynamic>):CollectionChain<Dynamic>;
		@:overload(function(values:haxe.extern.Rest<ts.AnyOf2<List_<Any>, Comparator2<Dynamic, ts.Never>>>):CollectionChain<Dynamic> { })
		function intersectionWith<T2>(values:List_<T2>, comparator:Comparator2<Dynamic, T2>):CollectionChain<Dynamic>;
		dynamic function join(?separator:String):StringChain;
		@:overload(function():StringNullableChain { })
		dynamic function last():ts.AnyOf7<FunctionChain<Dynamic>, ObjectChain<Dynamic>, PrimitiveChain<Dynamic>, StringChain, Dynamic, StringNullableChain, CollectionChain<Any>>;
		function lastIndexOf(value:Dynamic, ?fromIndex:ts.AnyOf2<Float, Bool>):PrimitiveChain<Float>;
		function nth(?n:Float):ts.AnyOf7<FunctionChain<Dynamic>, ObjectChain<Dynamic>, PrimitiveChain<Dynamic>, StringChain, Dynamic, StringNullableChain, CollectionChain<Any>>;
		function pull(values:haxe.extern.Rest<Dynamic>):CollectionChain<Dynamic>;
		function pullAll(?values:List_<Dynamic>):CollectionChain<Dynamic>;
		function pullAllBy<T2>(?values:List_<T2>, ?iteratee:ValueIteratee<Dynamic>):CollectionChain<Dynamic>;
		function pullAllWith<T2>(?values:List_<T2>, ?comparator:Comparator2<Dynamic, T2>):CollectionChain<Dynamic>;
		function pullAt(indexes:haxe.extern.Rest<Many<Float>>):CollectionChain<Dynamic>;
		function remove(?predicate:ListIteratee<Dynamic>):CollectionChain<Dynamic>;
		function slice(?start:Float, ?end:Float):CollectionChain<Dynamic>;
		@:overload(function(value:Dynamic):PrimitiveChain<Float> { })
		function sortedIndex(value:Dynamic):PrimitiveChain<Float>;
		function sortedIndexBy(value:Dynamic, ?iteratee:ValueIteratee<Dynamic>):PrimitiveChain<Float>;
		function sortedIndexOf(value:Dynamic):PrimitiveChain<Float>;
		function sortedLastIndex(value:Dynamic):PrimitiveChain<Float>;
		function sortedLastIndexBy(value:Dynamic, iteratee:ValueIteratee<Dynamic>):PrimitiveChain<Float>;
		function sortedLastIndexOf(value:Dynamic):PrimitiveChain<Float>;
		function sortedUniq():CollectionChain<Dynamic>;
		function sortedUniqBy(iteratee:ValueIteratee<Dynamic>):CollectionChain<Dynamic>;
		function tail():CollectionChain<Dynamic>;
		function take(?n:Float):CollectionChain<Dynamic>;
		function takeRight(?n:Float):CollectionChain<Dynamic>;
		function takeRightWhile(?predicate:ListIteratee<Dynamic>):CollectionChain<Dynamic>;
		function takeWhile(?predicate:ListIteratee<Dynamic>):CollectionChain<Dynamic>;
		function union(arrays:haxe.extern.Rest<Null<List_<Dynamic>>>):CollectionChain<Dynamic>;
		@:overload(function(iteratee:haxe.extern.Rest<Null<ts.AnyOf7<String, Float, js.lib.Symbol, List_<Dynamic>, ts.Tuple2<PropertyName, Dynamic>, (value:Dynamic) -> Any, haxe.DynamicAccess<Dynamic>>>>):CollectionChain<Dynamic> { })
		function unionBy(arrays2:Null<List_<Dynamic>>, ?iteratee:ValueIteratee<Dynamic>):CollectionChain<Dynamic>;
		@:overload(function(comparator:haxe.extern.Rest<Null<ts.AnyOf2<List_<Dynamic>, Comparator<Dynamic>>>>):CollectionChain<Dynamic> { })
		function unionWith(arrays2:Null<List_<Dynamic>>, ?comparator:Comparator<Dynamic>):CollectionChain<Dynamic>;
		function uniq():CollectionChain<Dynamic>;
		function uniqBy(iteratee:ValueIteratee<Dynamic>):CollectionChain<Dynamic>;
		function uniqWith(?comparator:Comparator<Dynamic>):CollectionChain<Dynamic>;
		function unzip():Any;
		@:overload(function():Any { })
		function unzipWith<TResult>(iteratee:(values:haxe.extern.Rest<Any>) -> TResult):CollectionChain<TResult>;
		function without(values:haxe.extern.Rest<Dynamic>):CollectionChain<Dynamic>;
		function xor(arrays:haxe.extern.Rest<Null<List_<Dynamic>>>):CollectionChain<Dynamic>;
		@:overload(function(iteratee:haxe.extern.Rest<Null<ts.AnyOf7<String, Float, js.lib.Symbol, List_<Dynamic>, ts.Tuple2<PropertyName, Dynamic>, (value:Dynamic) -> Any, haxe.DynamicAccess<Dynamic>>>>):CollectionChain<Dynamic> { })
		function xorBy(arrays2:Null<List_<Dynamic>>, ?iteratee:ValueIteratee<Dynamic>):CollectionChain<Dynamic>;
		@:overload(function(comparator:haxe.extern.Rest<Null<ts.AnyOf2<List_<Dynamic>, Comparator<Dynamic>>>>):CollectionChain<Dynamic> { })
		function xorWith(arrays2:Null<List_<Dynamic>>, ?comparator:Comparator<Dynamic>):CollectionChain<Dynamic>;
		@:overload(function(arrays:haxe.extern.Rest<Null<List_<Dynamic>>>):CollectionChain<Array<Dynamic>> { })
		function zip<T2>(arrays2:List_<T2>):CollectionChain<ts.Tuple2<Dynamic, Null<T2>>>;
		@:overload(function():ObjectChain<Dictionary<Null<Any>>> { })
		function zipObject<U>(values:List_<U>):ObjectChain<Dictionary<U>>;
		function zipObjectDeep(?values:List_<Dynamic>):ObjectChain<Dynamic>;
		@:overload(function<T2, T3, TResult>(arrays2:List_<T2>, arrays3:List_<T3>, iteratee:(value1:Dynamic, value2:T2, value3:T3) -> TResult):CollectionChain<TResult> { })
		@:overload(function<TResult>(iteratee:haxe.extern.Rest<Null<ts.AnyOf2<List_<Dynamic>, (group:haxe.extern.Rest<Dynamic>) -> TResult>>>):CollectionChain<TResult> { })
		function zipWith<T2, TResult>(arrays2:List_<T2>, iteratee:(value1:Dynamic, value2:T2) -> TResult):CollectionChain<TResult>;
		@:overload(function(?iteratee:ValueIteratee<String>):ObjectChain<Dictionary<Float>> { })
		dynamic function countBy(?iteratee:ValueIteratee<Dynamic>):ObjectChain<Dictionary<Float>>;
		@:overload(function(?iteratee:ObjectIterator<Dynamic, Dynamic>):ObjectChain<Dynamic> { })
		@:overload(function(?iteratee:StringIterator<Dynamic>):StringChain { })
		dynamic function each(?iteratee:ListIterator<Dynamic, Dynamic>):CollectionChain<Dynamic>;
		@:overload(function(?iteratee:ObjectIterator<Dynamic, Dynamic>):ObjectChain<Dynamic> { })
		@:overload(function(?iteratee:StringIterator<Dynamic>):StringChain { })
		dynamic function eachRight(?iteratee:ListIterator<Dynamic, Dynamic>):CollectionChain<Dynamic>;
		@:overload(function(?predicate:ObjectIterateeCustom<Dynamic, Bool>):PrimitiveChain<Bool> { })
		dynamic function every(?predicate:ListIterateeCustom<Dynamic, Bool>):PrimitiveChain<Bool>;
		@:overload(function(?predicate:ListIterateeCustom<Dynamic, Bool>):CollectionChain<Dynamic> { })
		@:overload(function<S:(Dynamic)>(predicate:ObjectIteratorTypeGuard<Dynamic, S>):CollectionChain<S> { })
		@:overload(function(?predicate:ObjectIterateeCustom<Dynamic, Bool>):CollectionChain<Dynamic> { })
		@:overload(function(?predicate:StringIterator<Bool>):CollectionChain<String> { })
		dynamic function filter<S:(Dynamic)>(predicate:ListIteratorTypeGuard<Dynamic, S>):CollectionChain<S>;
		@:overload(function(?predicate:ListIterateeCustom<Dynamic, Bool>, ?fromIndex:Float):ts.AnyOf7<FunctionChain<Dynamic>, ObjectChain<Dynamic>, PrimitiveChain<Dynamic>, StringChain, Dynamic, StringNullableChain, CollectionChain<Any>> { })
		@:overload(function<S:(Dynamic)>(predicate:ObjectIteratorTypeGuard<Dynamic, S>, ?fromIndex:Float):ExpChain<S> { })
		@:overload(function(?predicate:ObjectIterateeCustom<Dynamic, Bool>, ?fromIndex:Float):ts.AnyOf7<FunctionChain<Dynamic>, ObjectChain<Dynamic>, PrimitiveChain<Dynamic>, StringChain, Dynamic, StringNullableChain, CollectionChain<Any>> { })
		dynamic function find<S:(Dynamic)>(predicate:ListIteratorTypeGuard<Dynamic, S>, ?fromIndex:Float):ExpChain<S>;
		@:overload(function(?predicate:ListIterateeCustom<Dynamic, Bool>, ?fromIndex:Float):ts.AnyOf7<FunctionChain<Dynamic>, ObjectChain<Dynamic>, PrimitiveChain<Dynamic>, StringChain, Dynamic, StringNullableChain, CollectionChain<Any>> { })
		@:overload(function<S:(Dynamic)>(predicate:ObjectIteratorTypeGuard<Dynamic, S>, ?fromIndex:Float):ExpChain<S> { })
		@:overload(function(?predicate:ObjectIterateeCustom<Dynamic, Bool>, ?fromIndex:Float):ts.AnyOf7<FunctionChain<Dynamic>, ObjectChain<Dynamic>, PrimitiveChain<Dynamic>, StringChain, Dynamic, StringNullableChain, CollectionChain<Any>> { })
		dynamic function findLast<S:(Dynamic)>(predicate:ListIteratorTypeGuard<Dynamic, S>, ?fromIndex:Float):ExpChain<S>;
		@:overload(function(iteratee:ts.AnyOf2<Dynamic, ts.Tuple2<PropertyName, Dynamic>>):CollectionChain<Bool> { })
		@:overload(function():CollectionChain<Dynamic> { })
		@:overload(function<TResult>(iteratee:ts.AnyOf4<String, Float, js.lib.Symbol, ObjectIterator<Dynamic, Many<TResult>>>):CollectionChain<TResult> { })
		@:overload(function<TResult>(iteratee:StringIterator<Many<TResult>>):CollectionChain<TResult> { })
		@:overload(function():CollectionChain<String> { })
		dynamic function flatMap<TResult>(iteratee:ts.AnyOf4<String, Float, js.lib.Symbol, ListIterator<Dynamic, Many<TResult>>>):CollectionChain<TResult>;
		@:overload(function(iteratee:ts.AnyOf2<Dynamic, ts.Tuple2<PropertyName, Dynamic>>):CollectionChain<Bool> { })
		@:overload(function():CollectionChain<Dynamic> { })
		@:overload(function<TResult>(iteratee:ts.AnyOf4<String, Float, js.lib.Symbol, ObjectIterator<Dynamic, ts.AnyOf2<ListOfRecursiveArraysOrValues<TResult>, TResult>>>):CollectionChain<TResult> { })
		@:overload(function<TResult>(iteratee:StringIterator<ts.AnyOf2<ListOfRecursiveArraysOrValues<TResult>, TResult>>):CollectionChain<TResult> { })
		@:overload(function():CollectionChain<String> { })
		dynamic function flatMapDeep<TResult>(iteratee:ts.AnyOf4<String, Float, js.lib.Symbol, ListIterator<Dynamic, ts.AnyOf2<ListOfRecursiveArraysOrValues<TResult>, TResult>>>):CollectionChain<TResult>;
		@:overload(function(iteratee:ts.AnyOf2<Dynamic, ts.Tuple2<PropertyName, Dynamic>>, ?depth:Float):CollectionChain<Bool> { })
		@:overload(function(?depth:Float):CollectionChain<Dynamic> { })
		@:overload(function<TResult>(iteratee:ts.AnyOf4<String, Float, js.lib.Symbol, ObjectIterator<Dynamic, ts.AnyOf2<ListOfRecursiveArraysOrValues<TResult>, TResult>>>, ?depth:Float):CollectionChain<TResult> { })
		@:overload(function<TResult>(iteratee:StringIterator<ts.AnyOf2<ListOfRecursiveArraysOrValues<TResult>, TResult>>, ?depth:Float):CollectionChain<TResult> { })
		@:overload(function(?depth:Float):CollectionChain<String> { })
		dynamic function flatMapDepth<TResult>(iteratee:ts.AnyOf4<String, Float, js.lib.Symbol, ListIterator<Dynamic, ts.AnyOf2<ListOfRecursiveArraysOrValues<TResult>, TResult>>>, ?depth:Float):CollectionChain<TResult>;
		@:overload(function(?iteratee:ObjectIterator<Dynamic, Dynamic>):ObjectChain<Dynamic> { })
		@:overload(function(?iteratee:StringIterator<Dynamic>):StringChain { })
		dynamic function forEach(?iteratee:ListIterator<Dynamic, Dynamic>):CollectionChain<Dynamic>;
		@:overload(function(?iteratee:ObjectIterator<Dynamic, Dynamic>):ObjectChain<Dynamic> { })
		@:overload(function(?iteratee:StringIterator<Dynamic>):StringChain { })
		dynamic function forEachRight(?iteratee:ListIterator<Dynamic, Dynamic>):CollectionChain<Dynamic>;
		@:overload(function(?iteratee:ValueIteratee<String>):ObjectChain<Dictionary<Array<String>>> { })
		dynamic function groupBy(?iteratee:ValueIteratee<Dynamic>):ObjectChain<Dictionary<Array<Dynamic>>>;
		@:overload(function(target:String, ?fromIndex:Float):PrimitiveChain<Bool> { })
		dynamic function includes(target:Dynamic, ?fromIndex:Float):PrimitiveChain<Bool>;
		@:overload(function(?iteratee:ValueIterateeCustom<String, PropertyName>):ObjectChain<Dictionary<String>> { })
		dynamic function keyBy(?iteratee:ValueIterateeCustom<Dynamic, PropertyName>):ObjectChain<Dictionary<Dynamic>>;
		@:overload(function<TResult>(iteratee:ListIterator<Dynamic, TResult>):CollectionChain<TResult> { })
		@:overload(function(iteratee:PropertyName):CollectionChain<Dynamic> { })
		@:overload(function(iteratee:ts.AnyOf2<Dynamic, ts.Tuple2<PropertyName, Dynamic>>):CollectionChain<Bool> { })
		@:overload(function():CollectionChain<Dynamic> { })
		@:overload(function<TResult>(iteratee:ObjectIterator<Dynamic, TResult>):CollectionChain<TResult> { })
		@:overload(function<TResult>(iteratee:StringIterator<TResult>):CollectionChain<TResult> { })
		@:overload(function():CollectionChain<String> { })
		dynamic function map<K:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(key:K):CollectionChain<Dynamic>;
		@:overload(function(?iteratees:Many<ObjectIterator<Dynamic, Any>>, ?orders:Many<ts.AnyOf2<Bool, String>>):CollectionChain<Dynamic> { })
		dynamic function orderBy(?iteratees:Many<ts.AnyOf5<String, Float, js.lib.Symbol, haxe.DynamicAccess<Dynamic>, ListIterator<Dynamic, Any>>>, ?orders:Many<ts.AnyOf2<Bool, String>>):CollectionChain<Dynamic>;
		@:overload(function(callback:ValueIteratee<Dynamic>):LoDashExplicitWrapper<ts.Tuple2<Array<Dynamic>, Array<Dynamic>>> { })
		@:overload(function(callback:StringIterator<Any>):LoDashExplicitWrapper<ts.Tuple2<Array<String>, Array<String>>> { })
		dynamic function partition<U:(Dynamic)>(callback:ValueIteratorTypeGuard<Dynamic, U>):LoDashExplicitWrapper<ts.Tuple2<Array<U>, Array<{ }>>>;
		@:overload(function(callback:MemoListIterator<Dynamic, Dynamic, List_<Dynamic>>):ts.AnyOf7<FunctionChain<Dynamic>, ObjectChain<Dynamic>, PrimitiveChain<Dynamic>, StringChain, Dynamic, StringNullableChain, CollectionChain<Any>> { })
		@:overload(function<TResult>(callback:MemoObjectIterator<Dynamic, TResult, Dynamic>, accumulator:TResult):ExpChain<TResult> { })
		@:overload(function(callback:MemoObjectIterator<Dynamic, Dynamic, Dynamic>):ts.AnyOf7<FunctionChain<Dynamic>, ObjectChain<Dynamic>, PrimitiveChain<Dynamic>, StringChain, Dynamic, StringNullableChain, CollectionChain<Any>> { })
		dynamic function reduce<TResult>(callback:MemoListIterator<Dynamic, TResult, List_<Dynamic>>, accumulator:TResult):ExpChain<TResult>;
		@:overload(function(callback:MemoListIterator<Dynamic, Dynamic, List_<Dynamic>>):ts.AnyOf7<FunctionChain<Dynamic>, ObjectChain<Dynamic>, PrimitiveChain<Dynamic>, StringChain, Dynamic, StringNullableChain, CollectionChain<Any>> { })
		@:overload(function<TResult>(callback:MemoObjectIterator<Dynamic, TResult, Dynamic>, accumulator:TResult):ExpChain<TResult> { })
		@:overload(function(callback:MemoObjectIterator<Dynamic, Dynamic, Dynamic>):ts.AnyOf7<FunctionChain<Dynamic>, ObjectChain<Dynamic>, PrimitiveChain<Dynamic>, StringChain, Dynamic, StringNullableChain, CollectionChain<Any>> { })
		dynamic function reduceRight<TResult>(callback:MemoListIterator<Dynamic, TResult, List_<Dynamic>>, accumulator:TResult):ExpChain<TResult>;
		@:overload(function(?predicate:ObjectIterateeCustom<Dynamic, Bool>):CollectionChain<Dynamic> { })
		@:overload(function(?predicate:StringIterator<Bool>):CollectionChain<String> { })
		dynamic function reject(?predicate:ListIterateeCustom<Dynamic, Bool>):CollectionChain<Dynamic>;
		@:overload(function():StringNullableChain { })
		dynamic function sample():ts.AnyOf7<FunctionChain<Dynamic>, ObjectChain<Dynamic>, PrimitiveChain<Dynamic>, StringChain, Dynamic, StringNullableChain, CollectionChain<Any>>;
		@:overload(function(?n:Float):CollectionChain<String> { })
		dynamic function sampleSize(?n:Float):CollectionChain<Dynamic>;
		@:overload(function():CollectionChain<String> { })
		dynamic function shuffle():CollectionChain<Dynamic>;
		@:overload(function(?predicate:ObjectIterateeCustom<Dynamic, Bool>):PrimitiveChain<Bool> { })
		dynamic function some(?predicate:ListIterateeCustom<Dynamic, Bool>):PrimitiveChain<Bool>;
		@:overload(function(iteratees:haxe.extern.Rest<Many<ObjectIteratee<Dynamic>>>):CollectionChain<Dynamic> { })
		dynamic function sortBy(iteratees:haxe.extern.Rest<Many<ListIteratee<Dynamic>>>):CollectionChain<Dynamic>;
		@:overload(function():CollectionChain<String> { })
		dynamic function castArray():CollectionChain<Dynamic>;
		@:overload(function():CollectionChain<String> { })
		dynamic function toArray():CollectionChain<Dynamic>;
		function max():ts.AnyOf7<FunctionChain<Dynamic>, ObjectChain<Dynamic>, PrimitiveChain<Dynamic>, StringChain, Dynamic, StringNullableChain, CollectionChain<Any>>;
		function maxBy(?iteratee:ValueIteratee<Dynamic>):ts.AnyOf7<FunctionChain<Dynamic>, ObjectChain<Dynamic>, PrimitiveChain<Dynamic>, StringChain, Dynamic, StringNullableChain, CollectionChain<Any>>;
		function meanBy(?iteratee:ValueIteratee<Dynamic>):PrimitiveChain<Float>;
		function min():ts.AnyOf7<FunctionChain<Dynamic>, ObjectChain<Dynamic>, PrimitiveChain<Dynamic>, StringChain, Dynamic, StringNullableChain, CollectionChain<Any>>;
		function minBy(?iteratee:ValueIteratee<Dynamic>):ts.AnyOf7<FunctionChain<Dynamic>, ObjectChain<Dynamic>, PrimitiveChain<Dynamic>, StringChain, Dynamic, StringNullableChain, CollectionChain<Any>>;
		function sumBy(?iteratee:ts.AnyOf2<String, (value:Dynamic) -> Float>):PrimitiveChain<Float>;
		dynamic function at(props:haxe.extern.Rest<PropertyPath>):CollectionChain<Dynamic>;
		@:overload(function<TDefault>(path:Float, defaultValue:TDefault):ts.AnyOf8<FunctionChain<Dynamic>, ObjectChain<Dynamic>, PrimitiveChain<Dynamic>, StringChain, Dynamic, StringNullableChain, CollectionChain<Any>, ExpChain<TDefault>> { })
		@:overload(function<TKey:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(path:ts.AnyOf2<TKey, ts.Tuple1<TKey>>):ts.AnyOf7<FunctionChain<Dynamic>, ObjectChain<Dynamic>, PrimitiveChain<Dynamic>, StringChain, Dynamic, StringNullableChain, CollectionChain<Any>> { })
		@:overload(function<TKey:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(path:ts.AnyOf2<TKey, ts.Tuple1<TKey>>, defaultValue:Array<ts.Never>):ts.AnyOf8<FunctionChain<Dynamic>, ObjectChain<Dynamic>, PrimitiveChain<Dynamic>, StringChain, Dynamic, StringNullableChain, CollectionChain<Any>, CollectionChain<ts.Never>> { })
		@:overload(function<TKey:(ts.AnyOf3<String, Float, js.lib.Symbol>), TDefault>(path:ts.AnyOf2<TKey, ts.Tuple1<TKey>>, defaultValue:TDefault):ts.AnyOf8<FunctionChain<Dynamic>, ObjectChain<Dynamic>, PrimitiveChain<Dynamic>, StringChain, Dynamic, StringNullableChain, CollectionChain<Any>, ExpChain<TDefault>> { })
		@:overload(function<TKey1:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey2:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(path:ts.Tuple2<TKey1, TKey2>):ts.AnyOf7<FunctionChain<Dynamic>, ObjectChain<Dynamic>, PrimitiveChain<Dynamic>, StringChain, Dynamic, StringNullableChain, CollectionChain<Any>> { })
		@:overload(function<TKey1:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey2:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(path:ts.Tuple2<TKey1, TKey2>, defaultValue:Array<ts.Never>):ts.AnyOf8<FunctionChain<Dynamic>, ObjectChain<Dynamic>, PrimitiveChain<Dynamic>, StringChain, Dynamic, StringNullableChain, CollectionChain<Any>, CollectionChain<ts.Never>> { })
		@:overload(function<TKey1:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey2:(ts.AnyOf3<String, Float, js.lib.Symbol>), TDefault>(path:ts.Tuple2<TKey1, TKey2>, defaultValue:TDefault):ts.AnyOf8<FunctionChain<Dynamic>, ObjectChain<Dynamic>, PrimitiveChain<Dynamic>, StringChain, Dynamic, StringNullableChain, CollectionChain<Any>, ExpChain<TDefault>> { })
		@:overload(function<TKey1:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey2:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey3:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(path:ts.Tuple3<TKey1, TKey2, TKey3>):ts.AnyOf7<FunctionChain<Dynamic>, ObjectChain<Dynamic>, PrimitiveChain<Dynamic>, StringChain, Dynamic, StringNullableChain, CollectionChain<Any>> { })
		@:overload(function<TKey1:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey2:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey3:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(path:ts.Tuple3<TKey1, TKey2, TKey3>, defaultValue:Array<ts.Never>):ts.AnyOf8<FunctionChain<Dynamic>, ObjectChain<Dynamic>, PrimitiveChain<Dynamic>, StringChain, Dynamic, StringNullableChain, CollectionChain<Any>, CollectionChain<ts.Never>> { })
		@:overload(function<TKey1:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey2:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey3:(ts.AnyOf3<String, Float, js.lib.Symbol>), TDefault>(path:ts.Tuple3<TKey1, TKey2, TKey3>, defaultValue:TDefault):ts.AnyOf8<FunctionChain<Dynamic>, ObjectChain<Dynamic>, PrimitiveChain<Dynamic>, StringChain, Dynamic, StringNullableChain, CollectionChain<Any>, ExpChain<TDefault>> { })
		@:overload(function<TKey1:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey2:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey3:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey4:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(path:ts.Tuple4<TKey1, TKey2, TKey3, TKey4>):ts.AnyOf7<FunctionChain<Dynamic>, ObjectChain<Dynamic>, PrimitiveChain<Dynamic>, StringChain, Dynamic, StringNullableChain, CollectionChain<Any>> { })
		@:overload(function<TKey1:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey2:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey3:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey4:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(path:ts.Tuple4<TKey1, TKey2, TKey3, TKey4>, defaultValue:Array<ts.Never>):ts.AnyOf8<FunctionChain<Dynamic>, ObjectChain<Dynamic>, PrimitiveChain<Dynamic>, StringChain, Dynamic, StringNullableChain, CollectionChain<Any>, CollectionChain<ts.Never>> { })
		@:overload(function<TKey1:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey2:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey3:(ts.AnyOf3<String, Float, js.lib.Symbol>), TKey4:(ts.AnyOf3<String, Float, js.lib.Symbol>), TDefault>(path:ts.Tuple4<TKey1, TKey2, TKey3, TKey4>, defaultValue:TDefault):ts.AnyOf8<FunctionChain<Dynamic>, ObjectChain<Dynamic>, PrimitiveChain<Dynamic>, StringChain, Dynamic, StringNullableChain, CollectionChain<Any>, ExpChain<TDefault>> { })
		@:overload(function(path:PropertyPath, ?defaultValue:Dynamic):LoDashExplicitWrapper<Dynamic> { })
		@:overload(function(path:ts.AnyOf2<Float, Array<Float>>):StringChain { })
		@:overload(function(path:ts.AnyOf2<Float, Array<Float>>, defaultValue:String):StringChain { })
		dynamic function get(path:Float):ts.AnyOf7<FunctionChain<Dynamic>, ObjectChain<Dynamic>, PrimitiveChain<Dynamic>, StringChain, Dynamic, StringNullableChain, CollectionChain<Any>>;
		@:overload(function(?iteratee:ValueIteratee<String>):ObjectChain<Dictionary<Array<String>>> { })
		dynamic function invertBy(?iteratee:ValueIteratee<Dynamic>):ObjectChain<Dictionary<Array<String>>>;
		@:overload(function(?iteratee:ObjectIteratee<Dynamic>):ObjectChain<Dictionary<Dynamic>> { })
		dynamic function mapKeys(?iteratee:ListIteratee<Dynamic>):ObjectChain<Dictionary<Dynamic>>;
		@:overload(function<TKey:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(iteratee:TKey):ObjectChain<Dictionary<Dynamic>> { })
		@:overload(function(iteratee:Dynamic):ObjectChain<Dictionary<Bool>> { })
		@:overload(function(iteratee:String):ObjectChain<Dictionary<Dynamic>> { })
		@:overload(function():ObjectChain<Dictionary<Dynamic>> { })
		@:overload(function<TResult>(callback:ObjectIterator<Dynamic, TResult>):ObjectChain<Dynamic> { })
		@:overload(function():ObjectChain<Dynamic> { })
		@:overload(function<TResult>(callback:StringIterator<TResult>):ObjectChain<NumericDictionary<TResult>> { })
		@:overload(function():ObjectChain<NumericDictionary<String>> { })
		dynamic function mapValues<TResult>(callback:DictionaryIterator<Dynamic, TResult>):ObjectChain<Dictionary<TResult>>;
		@:overload(function<K:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(paths:haxe.extern.Rest<Many<K>>):ObjectChain<{ }> { })
		@:overload(function(paths:haxe.extern.Rest<Many<PropertyName>>):ObjectChain<Dynamic> { })
		dynamic function omit(paths:haxe.extern.Rest<Many<PropertyName>>):CollectionChain<Dynamic>;
		@:overload(function(predicate:ValueKeyIteratee<Dynamic>):ObjectChain<Dynamic> { })
		dynamic function omitBy(?predicate:ValueKeyIteratee<Dynamic>):ObjectChain<Dictionary<Dynamic>>;
		@:overload(function(?predicate:ValueKeyIteratee<Dynamic>):ObjectChain<Dictionary<Dynamic>> { })
		@:overload(function<S:(Dynamic)>(predicate:ValueKeyIterateeTypeGuard<Dynamic, S>):ObjectChain<NumericDictionary<S>> { })
		dynamic function pickBy<S:(Dynamic)>(predicate:ValueKeyIterateeTypeGuard<Dynamic, S>):ObjectChain<Dictionary<S>>;
		@:overload(function():CollectionChain<Dynamic> { })
		@:overload(function<TResult>(iteratee:MemoVoidDictionaryIterator<Dynamic, TResult>, ?accumulator:TResult):ExpChain<TResult> { })
		@:overload(function():ts.AnyOf7<FunctionChain<Dynamic>, ObjectChain<Dynamic>, PrimitiveChain<Dynamic>, StringChain, Dynamic, StringNullableChain, CollectionChain<Any>> { })
		dynamic function transform<TResult>(iteratee:MemoVoidArrayIterator<Dynamic, TResult>, ?accumulator:TResult):ExpChain<TResult>;
		@:overload(function():FunctionChain<Dynamic> { })
		@:overload(function():FunctionChain<(o:Dynamic) -> Bool> { })
		@:overload(function():FunctionChain<(o:Dynamic) -> Dynamic> { })
		dynamic function iteratee():FunctionChain<(o:Dynamic) -> Bool>;
		@:overload(function<TResult>(iteratees:haxe.extern.Rest<Many<(args:haxe.extern.Rest<Dynamic>) -> TResult>>):FunctionChain<(args:haxe.extern.Rest<Dynamic>) -> Array<Dynamic>> { })
		dynamic function over<TResult>(iteratees:haxe.extern.Rest<Many<(args:haxe.extern.Rest<Dynamic>) -> TResult>>):FunctionChain<(args:haxe.extern.Rest<Dynamic>) -> Array<TResult>>;
		@:overload(function<TArgs>(iteratees:haxe.extern.Rest<Many<(args:haxe.extern.Rest<TArgs>) -> Bool>>):FunctionChain<(args:haxe.extern.Rest<Any>) -> Bool> { })
		dynamic function overEvery<TArgs>(iteratees:haxe.extern.Rest<Many<(args:haxe.extern.Rest<TArgs>) -> Bool>>):FunctionChain<(args:haxe.extern.Rest<TArgs>) -> Bool>;
		@:overload(function<TArgs>(iteratees:haxe.extern.Rest<Many<(args:haxe.extern.Rest<TArgs>) -> Bool>>):FunctionChain<(args:haxe.extern.Rest<Any>) -> Bool> { })
		dynamic function overSome<TArgs>(iteratees:haxe.extern.Rest<Many<(args:haxe.extern.Rest<TArgs>) -> Bool>>):FunctionChain<(args:haxe.extern.Rest<TArgs>) -> Bool>;
		@:overload(function<TResult>(method:(args:haxe.extern.Rest<Dynamic>) -> TResult, args:haxe.extern.Rest<Dynamic>):CollectionChain<TResult> { })
		dynamic function invokeMap(methodName:String, args:haxe.extern.Rest<Dynamic>):CollectionChain<Dynamic>;
		dynamic function size():PrimitiveChain<Float>;
		dynamic function now():PrimitiveChain<Float>;
		dynamic function bind(thisArg:Dynamic, partials:haxe.extern.Rest<Dynamic>):FunctionChain<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
		dynamic function bindKey(key:String, partials:haxe.extern.Rest<Dynamic>):FunctionChain<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
		dynamic function defer(args:haxe.extern.Rest<Dynamic>):PrimitiveChain<Float>;
		dynamic function delay(wait:Float, args:haxe.extern.Rest<Dynamic>):PrimitiveChain<Float>;
		@:overload(function<TArgs, TResult>(wrapper:(value:Dynamic, args:haxe.extern.Rest<TArgs>) -> TResult):FunctionChain<(args:haxe.extern.Rest<TArgs>) -> TResult> { })
		@:overload(function<TArgs, TResult>(wrapper:(value:String, args:haxe.extern.Rest<TArgs>) -> TResult):FunctionChain<(args:haxe.extern.Rest<TArgs>) -> TResult> { })
		dynamic function wrap<TArgs, TResult>(wrapper:(value:Array<Dynamic>, args:haxe.extern.Rest<TArgs>) -> TResult):FunctionChain<(args:haxe.extern.Rest<TArgs>) -> TResult>;
		dynamic function clone():Dynamic;
		dynamic function cloneDeep():Dynamic;
		@:overload(function():Dynamic { })
		@:overload(function(customizer:CloneDeepWithCustomizer<Dynamic>):LoDashExplicitWrapper<Dynamic> { })
		@:overload(function(customizer:CloneDeepWithCustomizer<String>):LoDashExplicitWrapper<Dynamic> { })
		dynamic function cloneDeepWith(customizer:CloneDeepWithCustomizer<Array<Dynamic>>):LoDashExplicitWrapper<Dynamic>;
		@:overload(function<TResult>(customizer:CloneWithCustomizer<Array<Dynamic>, Null<TResult>>):ts.AnyOf2<CollectionChain<Dynamic>, ExpChain<TResult>> { })
		@:overload(function():Dynamic { })
		@:overload(function<TResult:(Null<ts.AnyOf4<String, Float, Bool, Dynamic>>)>(customizer:CloneWithCustomizer<Dynamic, TResult>):ExpChain<TResult> { })
		@:overload(function<TResult>(customizer:CloneWithCustomizer<Dynamic, Null<TResult>>):ts.AnyOf8<FunctionChain<Dynamic>, ObjectChain<Dynamic>, PrimitiveChain<Dynamic>, StringChain, Dynamic, StringNullableChain, CollectionChain<Any>, ExpChain<TResult>> { })
		@:overload(function<TResult:(Null<ts.AnyOf4<String, Float, Bool, Dynamic>>)>(customizer:CloneWithCustomizer<String, TResult>):ExpChain<TResult> { })
		@:overload(function<TResult>(customizer:CloneWithCustomizer<String, Null<TResult>>):ts.AnyOf2<StringChain, ExpChain<TResult>> { })
		dynamic function cloneWith<TResult:(Null<ts.AnyOf4<String, Float, Bool, Dynamic>>)>(customizer:CloneWithCustomizer<Array<Dynamic>, TResult>):ExpChain<TResult>;
		@:overload(function(source:haxe.DynamicAccess<Dynamic>):PrimitiveChain<Bool> { })
		@:overload(function(source:String):PrimitiveChain<Bool> { })
		dynamic function conformsTo(source:Array<Dynamic>):PrimitiveChain<Bool>;
		dynamic function eq(other:Dynamic):PrimitiveChain<Bool>;
		dynamic function gt(other:Dynamic):PrimitiveChain<Bool>;
		dynamic function gte(other:Dynamic):PrimitiveChain<Bool>;
		dynamic function isArguments():PrimitiveChain<Bool>;
		dynamic function isArray():PrimitiveChain<Bool>;
		dynamic function isArrayBuffer():PrimitiveChain<Bool>;
		dynamic function isArrayLike():PrimitiveChain<Bool>;
		dynamic function isArrayLikeObject():PrimitiveChain<Bool>;
		dynamic function isBoolean():PrimitiveChain<Bool>;
		dynamic function isBuffer():PrimitiveChain<Bool>;
		dynamic function isDate():PrimitiveChain<Bool>;
		dynamic function isElement():PrimitiveChain<Bool>;
		dynamic function isEmpty():PrimitiveChain<Bool>;
		dynamic function isEqual(other:Dynamic):PrimitiveChain<Bool>;
		dynamic function isEqualWith(other:Dynamic, ?customizer:IsEqualCustomizer):PrimitiveChain<Bool>;
		dynamic function isError():PrimitiveChain<Bool>;
		dynamic function isFinite():PrimitiveChain<Bool>;
		dynamic function isFunction():PrimitiveChain<Bool>;
		dynamic function isInteger():PrimitiveChain<Bool>;
		dynamic function isLength():PrimitiveChain<Bool>;
		dynamic function isMap():PrimitiveChain<Bool>;
		dynamic function isMatch(source:Dynamic):PrimitiveChain<Bool>;
		dynamic function isMatchWith(source:Dynamic, customizer:IsMatchWithCustomizer):PrimitiveChain<Bool>;
		dynamic function isNaN():PrimitiveChain<Bool>;
		dynamic function isNative():PrimitiveChain<Bool>;
		dynamic function isNil():PrimitiveChain<Bool>;
		dynamic function isNull():PrimitiveChain<Bool>;
		dynamic function isNumber():PrimitiveChain<Bool>;
		dynamic function isObject():PrimitiveChain<Bool>;
		dynamic function isObjectLike():PrimitiveChain<Bool>;
		dynamic function isPlainObject():PrimitiveChain<Bool>;
		dynamic function isRegExp():PrimitiveChain<Bool>;
		dynamic function isSafeInteger():PrimitiveChain<Bool>;
		dynamic function isSet():PrimitiveChain<Bool>;
		dynamic function isString():PrimitiveChain<Bool>;
		dynamic function isSymbol():PrimitiveChain<Bool>;
		dynamic function isTypedArray():PrimitiveChain<Bool>;
		dynamic function isUndefined():PrimitiveChain<Bool>;
		dynamic function isWeakMap():PrimitiveChain<Bool>;
		dynamic function isWeakSet():PrimitiveChain<Bool>;
		dynamic function lt(other:Dynamic):PrimitiveChain<Bool>;
		dynamic function lte(other:Dynamic):PrimitiveChain<Bool>;
		dynamic function toFinite():PrimitiveChain<Float>;
		dynamic function toInteger():PrimitiveChain<Float>;
		dynamic function toLength():PrimitiveChain<Float>;
		dynamic function toNumber():PrimitiveChain<Float>;
		dynamic function toPlainObject():ObjectChain<Dynamic>;
		dynamic function toSafeInteger():PrimitiveChain<Float>;
		dynamic function add(addend:Float):PrimitiveChain<Float>;
		dynamic function ceil(?precision:Float):PrimitiveChain<Float>;
		dynamic function divide(divisor:Float):PrimitiveChain<Float>;
		dynamic function floor(?precision:Float):PrimitiveChain<Float>;
		dynamic function mean():PrimitiveChain<Float>;
		dynamic function multiply(multiplicand:Float):PrimitiveChain<Float>;
		dynamic function round(?precision:Float):PrimitiveChain<Float>;
		dynamic function subtract(subtrahend:Float):PrimitiveChain<Float>;
		dynamic function sum():PrimitiveChain<Float>;
		@:overload(function(upper:Float):PrimitiveChain<Float> { })
		dynamic function clamp(lower:Float, upper:Float):PrimitiveChain<Float>;
		dynamic function inRange(start:Float, ?end:Float):PrimitiveChain<Bool>;
		@:overload(function(max:Float, ?floating:Bool):PrimitiveChain<Float> { })
		dynamic function random(?floating:Bool):PrimitiveChain<Float>;
		dynamic function entries():CollectionChain<ts.Tuple2<String, Dynamic>>;
		dynamic function entriesIn():CollectionChain<ts.Tuple2<String, Dynamic>>;
		@:overload(function(?predicate:ObjectIteratee<Dynamic>):StringNullableChain { })
		@:overload(function(?predicate:ObjectIteratee<String>):StringNullableChain { })
		dynamic function findKey(?predicate:ObjectIteratee<Array<Dynamic>>):StringNullableChain;
		@:overload(function(?predicate:ObjectIteratee<Dynamic>):StringNullableChain { })
		@:overload(function(?predicate:ObjectIteratee<String>):StringNullableChain { })
		dynamic function findLastKey(?predicate:ObjectIteratee<Array<Dynamic>>):StringNullableChain;
		@:overload(function(?iteratee:ObjectIterator<Dynamic, Dynamic>):Dynamic { })
		@:overload(function(?iteratee:ObjectIterator<String, Dynamic>):Dynamic { })
		dynamic function forIn(?iteratee:ObjectIterator<Array<Dynamic>, Dynamic>):Dynamic;
		@:overload(function(?iteratee:ObjectIterator<Dynamic, Dynamic>):Dynamic { })
		@:overload(function(?iteratee:ObjectIterator<String, Dynamic>):Dynamic { })
		dynamic function forInRight(?iteratee:ObjectIterator<Array<Dynamic>, Dynamic>):Dynamic;
		@:overload(function(?iteratee:ObjectIterator<Dynamic, Dynamic>):Dynamic { })
		@:overload(function(?iteratee:ObjectIterator<String, Dynamic>):Dynamic { })
		dynamic function forOwn(?iteratee:ObjectIterator<Array<Dynamic>, Dynamic>):Dynamic;
		@:overload(function(?iteratee:ObjectIterator<Dynamic, Dynamic>):Dynamic { })
		@:overload(function(?iteratee:ObjectIterator<String, Dynamic>):Dynamic { })
		dynamic function forOwnRight(?iteratee:ObjectIterator<Array<Dynamic>, Dynamic>):Dynamic;
		dynamic function functions():CollectionChain<String>;
		dynamic function functionsIn():CollectionChain<String>;
		dynamic function has(path:PropertyPath):PrimitiveChain<Bool>;
		dynamic function hasIn(path:PropertyPath):PrimitiveChain<Bool>;
		dynamic function invert():ObjectChain<Dictionary<String>>;
		dynamic function invoke(path:PropertyPath, args:haxe.extern.Rest<Dynamic>):LoDashExplicitWrapper<Dynamic>;
		dynamic function keys():CollectionChain<String>;
		dynamic function keysIn():CollectionChain<String>;
		dynamic function result<TResult>(path:PropertyPath, ?defaultValue:ts.AnyOf2<(args:haxe.extern.Rest<Dynamic>) -> TResult, TResult>):ExpChain<TResult>;
		@:overload(function<TResult>(path:PropertyPath, value:Dynamic):ExpChain<TResult> { })
		dynamic function set(path:PropertyPath, value:Dynamic):Dynamic;
		@:overload(function<TResult>(path:PropertyPath, value:Dynamic, ?customizer:SetWithCustomizer<Array<Dynamic>>):ExpChain<TResult> { })
		@:overload(function(path:PropertyPath, value:Dynamic, ?customizer:SetWithCustomizer<Dynamic>):Dynamic { })
		@:overload(function<TResult>(path:PropertyPath, value:Dynamic, ?customizer:SetWithCustomizer<Dynamic>):ExpChain<TResult> { })
		@:overload(function(path:PropertyPath, value:Dynamic, ?customizer:SetWithCustomizer<String>):Dynamic { })
		@:overload(function<TResult>(path:PropertyPath, value:Dynamic, ?customizer:SetWithCustomizer<String>):ExpChain<TResult> { })
		dynamic function setWith(path:PropertyPath, value:Dynamic, ?customizer:SetWithCustomizer<Array<Dynamic>>):Dynamic;
		@:overload(function():CollectionChain<ts.Tuple2<String, String>> { })
		dynamic function toPairs():CollectionChain<ts.Tuple2<String, Dynamic>>;
		@:overload(function():CollectionChain<ts.Tuple2<String, String>> { })
		dynamic function toPairsIn():CollectionChain<ts.Tuple2<String, Dynamic>>;
		dynamic function unset(path:PropertyPath):PrimitiveChain<Bool>;
		dynamic function update(path:PropertyPath, updater:(value:Dynamic) -> Dynamic):ObjectChain<Dynamic>;
		dynamic function chain():Dynamic;
		dynamic function commit():Dynamic;
		dynamic function plant(value:Any):Dynamic;
		dynamic function reverse():Dynamic;
		@:overload(function():Dynamic { })
		@:overload(function():String { })
		dynamic function toJSON():Array<Dynamic>;
		@:overload(function():Dynamic { })
		@:overload(function():String { })
		dynamic function value():Array<Dynamic>;
		@:overload(function():Dynamic { })
		@:overload(function():String { })
		dynamic function valueOf():Array<Dynamic>;
		@:overload(function(interceptor:(value:Dynamic) -> Void):Dynamic { })
		@:overload(function(interceptor:(value:String) -> Void):Dynamic { })
		dynamic function tap(interceptor:(value:Array<Dynamic>) -> Void):Dynamic;
		@:overload(function<TResult>(interceptor:(value:Dynamic) -> TResult):ExpChain<TResult> { })
		@:overload(function<TResult>(interceptor:(value:String) -> TResult):ExpChain<TResult> { })
		dynamic function thru<TResult>(interceptor:(value:Array<Dynamic>) -> TResult):ExpChain<TResult>;
		dynamic function camelCase():StringChain;
		dynamic function capitalize():StringChain;
		dynamic function deburr():StringChain;
		dynamic function endsWith(?target:String, ?position:Float):PrimitiveChain<Bool>;
		dynamic function escape():StringChain;
		dynamic function escapeRegExp():StringChain;
		dynamic function kebabCase():StringChain;
		dynamic function lowerCase():StringChain;
		dynamic function lowerFirst():StringChain;
		dynamic function pad(?length:Float, ?chars:String):StringChain;
		dynamic function padEnd(?length:Float, ?chars:String):StringChain;
		dynamic function padStart(?length:Float, ?chars:String):StringChain;
		dynamic function parseInt(?radix:Float):PrimitiveChain<Float>;
		dynamic function repeat(?n:Float):StringChain;
		@:overload(function(replacement:ts.AnyOf2<String, ReplaceFunction>):StringChain { })
		dynamic function replace(pattern:ts.AnyOf2<String, js.lib.RegExp>, replacement:ts.AnyOf2<String, ReplaceFunction>):StringChain;
		dynamic function snakeCase():StringChain;
		dynamic function split(?separator:ts.AnyOf2<String, js.lib.RegExp>, ?limit:Float):CollectionChain<String>;
		dynamic function startCase():StringChain;
		dynamic function startsWith(?target:String, ?position:Float):PrimitiveChain<Bool>;
		dynamic function template(?options:TemplateOptions):FunctionChain<TemplateExecutor>;
		dynamic function toLower():StringChain;
		dynamic function toUpper():StringChain;
		dynamic function trim(?chars:String):StringChain;
		dynamic function trimEnd(?chars:String):StringChain;
		dynamic function trimStart(?chars:String):StringChain;
		dynamic function truncate(?options:TruncateOptions):StringChain;
		dynamic function unescape():StringChain;
		dynamic function upperCase():StringChain;
		dynamic function upperFirst():StringChain;
		dynamic function words(?pattern:ts.AnyOf2<String, js.lib.RegExp>):CollectionChain<String>;
		dynamic function attempt<TResult>(args:haxe.extern.Rest<Dynamic>):ts.AnyOf2<ObjectChain<js.lib.Error>, ExpChain<TResult>>;
		dynamic function bindAll(methodNames:haxe.extern.Rest<Many<String>>):Dynamic;
		@:overload(function():FunctionChain<(value:haxe.DynamicAccess<Dynamic>) -> Bool> { })
		@:overload(function():FunctionChain<(value:String) -> Bool> { })
		dynamic function conforms():FunctionChain<(value:Array<Dynamic>) -> Bool>;
		@:overload(function():FunctionChain<() -> Dynamic> { })
		@:overload(function():FunctionChain<() -> String> { })
		dynamic function constant():FunctionChain<() -> Array<Dynamic>>;
		@:overload(function<TDefault>(defaultValue:TDefault):ts.AnyOf2<CollectionChain<Dynamic>, ExpChain<TDefault>> { })
		@:overload(function(defaultValue:Dynamic):ts.AnyOf7<FunctionChain<Dynamic>, ObjectChain<Dynamic>, PrimitiveChain<Dynamic>, StringChain, Dynamic, StringNullableChain, CollectionChain<Any>> { })
		@:overload(function<TDefault>(defaultValue:TDefault):ts.AnyOf7<FunctionChain<Dynamic>, ObjectChain<Dynamic>, PrimitiveChain<Dynamic>, StringChain, Dynamic, StringNullableChain, CollectionChain<Any>> { })
		@:overload(function(defaultValue:String):StringChain { })
		@:overload(function<TDefault>(defaultValue:TDefault):ts.AnyOf2<StringChain, ExpChain<TDefault>> { })
		dynamic function defaultTo(defaultValue:Array<Dynamic>):CollectionChain<Dynamic>;
		dynamic function identity():Dynamic;
		dynamic function matches<V>():FunctionChain<(value:V) -> Bool>;
		@:overload(function<SrcValue, Value>(srcValue:SrcValue):FunctionChain<(value:Value) -> Bool> { })
		dynamic function matchesProperty<SrcValue>(srcValue:SrcValue):FunctionChain<(value:Dynamic) -> Bool>;
		dynamic function method(args:haxe.extern.Rest<Dynamic>):FunctionChain<(object:Dynamic) -> Dynamic>;
		dynamic function methodOf(args:haxe.extern.Rest<Dynamic>):LoDashExplicitWrapper<(path:PropertyPath) -> Dynamic>;
		@:overload(function(?options:MixinOptions):LoDashExplicitWrapper<LoDashStatic> { })
		dynamic function mixin(source:Dictionary<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>, ?options:MixinOptions):Dynamic;
		dynamic function noConflict():LoDashExplicitWrapper<LoDashStatic>;
		dynamic function noop(args:haxe.extern.Rest<Dynamic>):PrimitiveChain<Null<Any>>;
		dynamic function nthArg():FunctionChain<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
		dynamic function property<TObj, TResult>():FunctionChain<(obj:TObj) -> TResult>;
		dynamic function propertyOf():LoDashExplicitWrapper<(path:PropertyPath) -> Dynamic>;
		dynamic function range(?end:Float, ?step:Float):CollectionChain<Float>;
		dynamic function rangeRight(?end:Float, ?step:Float):CollectionChain<Float>;
		dynamic function stubArray():CollectionChain<Dynamic>;
		@:overload(function():LoDashExplicitWrapper<Bool> { })
		dynamic function stubFalse():PrimitiveChain<Bool>;
		dynamic function stubObject():LoDashExplicitWrapper<Dynamic>;
		dynamic function stubString():StringChain;
		@:overload(function():LoDashExplicitWrapper<Bool> { })
		dynamic function stubTrue():PrimitiveChain<Bool>;
		@:overload(function():CollectionChain<Float> { })
		dynamic function times<TResult>(iteratee:(num:Float) -> TResult):CollectionChain<TResult>;
		dynamic function toPath():CollectionChain<String>;
		dynamic function uniqueId():StringChain;
		function ary(?n:Float):FunctionChain<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
		function curry(?arity:Float):ts.AnyOf6<FunctionChain<CurriedFunction1<Any, Any>>, FunctionChain<CurriedFunction2<Any, Any, Any>>, FunctionChain<CurriedFunction3<Any, Any, Any, Any>>, FunctionChain<CurriedFunction4<Any, Any, Any, Any, Any>>, FunctionChain<CurriedFunction5<Any, Any, Any, Any, Any, Any>>, FunctionChain<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>>;
		function curryRight(?arity:Float):ts.AnyOf6<FunctionChain<RightCurriedFunction1<Any, Any>>, FunctionChain<RightCurriedFunction2<Any, Any, Any>>, FunctionChain<RightCurriedFunction3<Any, Any, Any, Any>>, FunctionChain<RightCurriedFunction4<Any, Any, Any, Any, Any>>, FunctionChain<RightCurriedFunction5<Any, Any, Any, Any, Any, Any>>, FunctionChain<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>>;
		function debounce(?wait:Float, ?options:DebounceSettings):FunctionChain<DebouncedFunc<Dynamic>>;
		function flip():Dynamic;
		function memoize(?resolver:(args:haxe.extern.Rest<Dynamic>) -> Dynamic):FunctionChain<Dynamic>;
		function negate():FunctionChain<(args:haxe.extern.Rest<Any>) -> Bool>;
		function once():FunctionChain<Dynamic>;
		function overArgs(transforms:haxe.extern.Rest<Many<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>>):FunctionChain<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
		@:overload(function<T3>(plc1:LoDashStatic, plc2:LoDashStatic, arg3:T3):FunctionChain<Dynamic> { })
		@:overload(function<T1, T3>(arg1:T1, plc2:LoDashStatic, arg3:T3):FunctionChain<Dynamic> { })
		@:overload(function<T2, T3>(plc1:LoDashStatic, arg2:T2, arg3:T3):FunctionChain<Dynamic> { })
		@:overload(function<T3>(plc1:LoDashStatic, plc2:LoDashStatic, arg3:T3):FunctionChain<Dynamic> { })
		@:overload(function<T1, T4>(arg1:T1, plc2:LoDashStatic, plc3:LoDashStatic, arg4:T4):FunctionChain<Dynamic> { })
		@:overload(function<T2, T4>(plc1:LoDashStatic, arg2:T2, plc3:LoDashStatic, arg4:T4):FunctionChain<Dynamic> { })
		@:overload(function<T1, T2, T4>(arg1:T1, arg2:T2, plc3:LoDashStatic, arg4:T4):FunctionChain<Dynamic> { })
		@:overload(function<T3, T4>(plc1:LoDashStatic, plc2:LoDashStatic, arg3:T3, arg4:T4):FunctionChain<Dynamic> { })
		@:overload(function<T1, T3, T4>(arg1:T1, plc2:LoDashStatic, arg3:T3, arg4:T4):FunctionChain<Dynamic> { })
		@:overload(function<T2, T3, T4>(plc1:LoDashStatic, arg2:T2, arg3:T3, arg4:T4):FunctionChain<Dynamic> { })
		@:overload(function<T1, T2, T3, T4>(arg1:T1, arg2:T2, arg3:T3, arg4:T4):FunctionChain<Dynamic> { })
		@:overload(function<T1, T2, T3>(arg1:T1, arg2:T2, arg3:T3):FunctionChain<Dynamic> { })
		@:overload(function<T1, T2>(arg1:T1, arg2:T2):FunctionChain<Dynamic> { })
		@:overload(function<T1>(arg1:T1):FunctionChain<Dynamic> { })
		@:overload(function():FunctionChain<Dynamic> { })
		function partial<T2>(plc1:LoDashStatic, arg2:T2):FunctionChain<Dynamic>;
		@:overload(function<T2>(arg2:T2):FunctionChain<Dynamic> { })
		@:overload(function<T1>(arg1:T1, plc2:LoDashStatic, plc3:LoDashStatic):FunctionChain<Dynamic> { })
		@:overload(function<T2>(arg2:T2, plc3:LoDashStatic):FunctionChain<Dynamic> { })
		@:overload(function<T1, T2>(arg1:T1, arg2:T2, plc3:LoDashStatic):FunctionChain<Dynamic> { })
		@:overload(function<T3>(arg3:T3):FunctionChain<Dynamic> { })
		@:overload(function<T1, T3>(arg1:T1, plc2:LoDashStatic, arg3:T3):FunctionChain<Dynamic> { })
		@:overload(function<T2, T3>(arg2:T2, arg3:T3):FunctionChain<Dynamic> { })
		@:overload(function<T1>(arg1:T1, plc2:LoDashStatic, plc3:LoDashStatic, plc4:LoDashStatic):FunctionChain<Dynamic> { })
		@:overload(function<T2>(arg2:T2, plc3:LoDashStatic, plc4:LoDashStatic):FunctionChain<Dynamic> { })
		@:overload(function<T1, T2>(arg1:T1, arg2:T2, plc3:LoDashStatic, plc4:LoDashStatic):FunctionChain<Dynamic> { })
		@:overload(function<T3>(arg3:T3, plc4:LoDashStatic):FunctionChain<Dynamic> { })
		@:overload(function<T1, T3>(arg1:T1, plc2:LoDashStatic, arg3:T3, plc4:LoDashStatic):FunctionChain<Dynamic> { })
		@:overload(function<T2, T3>(arg2:T2, arg3:T3, plc4:LoDashStatic):FunctionChain<Dynamic> { })
		@:overload(function<T1, T2, T3>(arg1:T1, arg2:T2, arg3:T3, plc4:LoDashStatic):FunctionChain<Dynamic> { })
		@:overload(function<T4>(arg4:T4):FunctionChain<Dynamic> { })
		@:overload(function<T1, T4>(arg1:T1, plc2:LoDashStatic, plc3:LoDashStatic, arg4:T4):FunctionChain<Dynamic> { })
		@:overload(function<T2, T4>(arg2:T2, plc3:LoDashStatic, arg4:T4):FunctionChain<Dynamic> { })
		@:overload(function<T1, T2, T4>(arg1:T1, arg2:T2, plc3:LoDashStatic, arg4:T4):FunctionChain<Dynamic> { })
		@:overload(function<T3, T4>(arg3:T3, arg4:T4):FunctionChain<Dynamic> { })
		@:overload(function<T1, T3, T4>(arg1:T1, plc2:LoDashStatic, arg3:T3, arg4:T4):FunctionChain<Dynamic> { })
		@:overload(function<T2, T3, T4>(arg2:T2, arg3:T3, arg4:T4):FunctionChain<Dynamic> { })
		@:overload(function<TS:(Array<Dynamic>)>(ts:haxe.extern.Rest<Any>):FunctionChain<Dynamic> { })
		@:overload(function():FunctionChain<Dynamic> { })
		function partialRight<T1>(arg1:T1, plc2:LoDashStatic):FunctionChain<Dynamic>;
		function rearg(indexes:haxe.extern.Rest<Many<Float>>):FunctionChain<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
		function rest(?start:Float):FunctionChain<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
		function spread(?start:Float):FunctionChain<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
		function throttle(?wait:Float, ?options:ThrottleSettings):FunctionChain<DebouncedFunc<Dynamic>>;
		function unary():FunctionChain<(arg1:Any) -> Dynamic>;
		@:overload(function<R2, R3, R4, R5, R6, R7>(f2:(a:Dynamic) -> R2, f3:(a:R2) -> R3, f4:(a:R3) -> R4, f5:(a:R4) -> R5, f6:(a:R5) -> R6, f7:(a:R6) -> R7, func:haxe.extern.Rest<Many<(a:Dynamic) -> Dynamic>>):FunctionChain<(args:haxe.extern.Rest<Any>) -> Dynamic> { })
		@:overload(function<R2, R3, R4, R5, R6>(f2:(a:Dynamic) -> R2, f3:(a:R2) -> R3, f4:(a:R3) -> R4, f5:(a:R4) -> R5, f6:(a:R5) -> R6):FunctionChain<(args:haxe.extern.Rest<Any>) -> R6> { })
		@:overload(function<R2, R3, R4, R5>(f2:(a:Dynamic) -> R2, f3:(a:R2) -> R3, f4:(a:R3) -> R4, f5:(a:R4) -> R5):FunctionChain<(args:haxe.extern.Rest<Any>) -> R5> { })
		@:overload(function<R2, R3, R4>(f2:(a:Dynamic) -> R2, f3:(a:R2) -> R3, f4:(a:R3) -> R4):FunctionChain<(args:haxe.extern.Rest<Any>) -> R4> { })
		@:overload(function<R2, R3>(f2:(a:Dynamic) -> R2, f3:(a:R2) -> R3):FunctionChain<(args:haxe.extern.Rest<Any>) -> R3> { })
		@:overload(function<R2>(f2:(a:Dynamic) -> R2):FunctionChain<(args:haxe.extern.Rest<Any>) -> R2> { })
		@:overload(function(func:haxe.extern.Rest<Many<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>>):FunctionChain<(args:haxe.extern.Rest<Dynamic>) -> Dynamic> { })
		function flow<R2, R3, R4, R5, R6, R7>(f2:(a:Dynamic) -> R2, f3:(a:R2) -> R3, f4:(a:R3) -> R4, f5:(a:R4) -> R5, f6:(a:R5) -> R6, f7:(a:R6) -> R7):FunctionChain<(args:haxe.extern.Rest<Any>) -> R7>;
		@:overload(function<A:(Array<Dynamic>), R1, R2, R3, R4>(f5:(a:R4) -> Any, f4:(a:R3) -> R4, f3:(a:R2) -> R3, f2:(a:R1) -> R2, f1:(args:haxe.extern.Rest<Any>) -> R1):FunctionChain<(args:haxe.extern.Rest<Any>) -> Dynamic> { })
		@:overload(function<A:(Array<Dynamic>), R1, R2, R3>(f4:(a:R3) -> Any, f3:(a:R2) -> R3, f2:(a:R1) -> R2, f1:(args:haxe.extern.Rest<Any>) -> R1):FunctionChain<(args:haxe.extern.Rest<Any>) -> Dynamic> { })
		@:overload(function<A:(Array<Dynamic>), R1, R2>(f3:(a:R2) -> Any, f2:(a:R1) -> R2, f1:(args:haxe.extern.Rest<Any>) -> R1):FunctionChain<(args:haxe.extern.Rest<Any>) -> Dynamic> { })
		@:overload(function<A:(Array<Dynamic>), R1>(f2:(a:R1) -> Any, f1:(args:haxe.extern.Rest<Any>) -> R1):FunctionChain<(args:haxe.extern.Rest<Any>) -> Dynamic> { })
		@:overload(function<A:(Array<Dynamic>)>(f1:(args:haxe.extern.Rest<Any>) -> Any):FunctionChain<(args:haxe.extern.Rest<Any>) -> Dynamic> { })
		@:overload(function(func:haxe.extern.Rest<Many<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>>):FunctionChain<(args:haxe.extern.Rest<Dynamic>) -> Dynamic> { })
		function flowRight<A:(Array<Dynamic>), R1, R2, R3, R4, R5>(f6:(a:R5) -> Any, f5:(a:R4) -> R5, f4:(a:R3) -> R4, f3:(a:R2) -> R3, f2:(a:R1) -> R2, f1:(args:haxe.extern.Rest<Any>) -> R1):FunctionChain<(args:haxe.extern.Rest<Any>) -> Dynamic>;
		@:overload(function<TSource1, TSource2>(source1:TSource1, source2:TSource2):ObjectChain<Dynamic> { })
		@:overload(function<TSource1, TSource2, TSource3>(source1:TSource1, source2:TSource2, source3:TSource3):ObjectChain<Dynamic> { })
		@:overload(function<TSource1, TSource2, TSource3, TSource4>(source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4):ObjectChain<Dynamic> { })
		@:overload(function():ObjectChain<Dynamic> { })
		@:overload(function(otherArgs:haxe.extern.Rest<Dynamic>):ObjectChain<Dynamic> { })
		function assign<TSource>(source:TSource):ObjectChain<Dynamic>;
		@:overload(function<TSource1, TSource2>(source1:TSource1, source2:TSource2):ObjectChain<Dynamic> { })
		@:overload(function<TSource1, TSource2, TSource3>(source1:TSource1, source2:TSource2, source3:TSource3):ObjectChain<Dynamic> { })
		@:overload(function<TSource1, TSource2, TSource3, TSource4>(source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4):ObjectChain<Dynamic> { })
		@:overload(function():ObjectChain<Dynamic> { })
		@:overload(function(otherArgs:haxe.extern.Rest<Dynamic>):ObjectChain<Dynamic> { })
		function assignIn<TSource>(source:TSource):ObjectChain<Dynamic>;
		@:overload(function<TSource1, TSource2>(source1:TSource1, source2:TSource2, customizer:AssignCustomizer):ObjectChain<Dynamic> { })
		@:overload(function<TSource1, TSource2, TSource3>(source1:TSource1, source2:TSource2, source3:TSource3, customizer:AssignCustomizer):ObjectChain<Dynamic> { })
		@:overload(function<TSource1, TSource2, TSource3, TSource4>(source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4, customizer:AssignCustomizer):ObjectChain<Dynamic> { })
		@:overload(function():ObjectChain<Dynamic> { })
		@:overload(function(otherArgs:haxe.extern.Rest<Dynamic>):ObjectChain<Dynamic> { })
		function assignInWith<TSource>(source:TSource, customizer:AssignCustomizer):ObjectChain<Dynamic>;
		@:overload(function<TSource1, TSource2>(source1:TSource1, source2:TSource2, customizer:AssignCustomizer):ObjectChain<Dynamic> { })
		@:overload(function<TSource1, TSource2, TSource3>(source1:TSource1, source2:TSource2, source3:TSource3, customizer:AssignCustomizer):ObjectChain<Dynamic> { })
		@:overload(function<TSource1, TSource2, TSource3, TSource4>(source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4, customizer:AssignCustomizer):ObjectChain<Dynamic> { })
		@:overload(function():ObjectChain<Dynamic> { })
		@:overload(function(otherArgs:haxe.extern.Rest<Dynamic>):ObjectChain<Dynamic> { })
		function assignWith<TSource>(source:TSource, customizer:AssignCustomizer):ObjectChain<Dynamic>;
		function create<U:(Dynamic)>(?properties:U):ObjectChain<Dynamic>;
		@:overload(function<TSource1, TSource2>(source1:TSource1, source2:TSource2):ObjectChain<Dynamic> { })
		@:overload(function<TSource1, TSource2, TSource3>(source1:TSource1, source2:TSource2, source3:TSource3):ObjectChain<Dynamic> { })
		@:overload(function<TSource1, TSource2, TSource3, TSource4>(source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4):ObjectChain<Dynamic> { })
		@:overload(function():ObjectChain<Dynamic> { })
		@:overload(function(sources:haxe.extern.Rest<Dynamic>):ObjectChain<Dynamic> { })
		function defaults<TSource>(source:TSource):ObjectChain<Dynamic>;
		function defaultsDeep(sources:haxe.extern.Rest<Dynamic>):ObjectChain<Dynamic>;
		@:overload(function<TSource1, TSource2>(source1:TSource1, source2:TSource2):ObjectChain<Dynamic> { })
		@:overload(function<TSource1, TSource2, TSource3>(source1:TSource1, source2:TSource2, source3:TSource3):ObjectChain<Dynamic> { })
		@:overload(function<TSource1, TSource2, TSource3, TSource4>(source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4):ObjectChain<Dynamic> { })
		@:overload(function():ObjectChain<Dynamic> { })
		@:overload(function(otherArgs:haxe.extern.Rest<Dynamic>):ObjectChain<Dynamic> { })
		function extend<TSource>(source:TSource):ObjectChain<Dynamic>;
		@:overload(function<TSource1, TSource2>(source1:TSource1, source2:TSource2, customizer:AssignCustomizer):ObjectChain<Dynamic> { })
		@:overload(function<TSource1, TSource2, TSource3>(source1:TSource1, source2:TSource2, source3:TSource3, customizer:AssignCustomizer):ObjectChain<Dynamic> { })
		@:overload(function<TSource1, TSource2, TSource3, TSource4>(source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4, customizer:AssignCustomizer):ObjectChain<Dynamic> { })
		@:overload(function():ObjectChain<Dynamic> { })
		@:overload(function(otherArgs:haxe.extern.Rest<Dynamic>):ObjectChain<Dynamic> { })
		function extendWith<TSource>(source:TSource, customizer:AssignCustomizer):ObjectChain<Dynamic>;
		@:overload(function<TSource1, TSource2>(source1:TSource1, source2:TSource2):ObjectChain<Dynamic> { })
		@:overload(function<TSource1, TSource2, TSource3>(source1:TSource1, source2:TSource2, source3:TSource3):ObjectChain<Dynamic> { })
		@:overload(function<TSource1, TSource2, TSource3, TSource4>(source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4):ObjectChain<Dynamic> { })
		@:overload(function(otherArgs:haxe.extern.Rest<Dynamic>):ObjectChain<Dynamic> { })
		function merge<TSource>(source:TSource):ObjectChain<Dynamic>;
		@:overload(function<TSource1, TSource2>(source1:TSource1, source2:TSource2, customizer:(value:Dynamic, srcValue:Dynamic, key:String, object:Dynamic, source:Dynamic) -> Dynamic):ObjectChain<Dynamic> { })
		@:overload(function<TSource1, TSource2, TSource3>(source1:TSource1, source2:TSource2, source3:TSource3, customizer:(value:Dynamic, srcValue:Dynamic, key:String, object:Dynamic, source:Dynamic) -> Dynamic):ObjectChain<Dynamic> { })
		@:overload(function<TSource1, TSource2, TSource3, TSource4>(source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4, customizer:(value:Dynamic, srcValue:Dynamic, key:String, object:Dynamic, source:Dynamic) -> Dynamic):ObjectChain<Dynamic> { })
		@:overload(function(otherArgs:haxe.extern.Rest<Dynamic>):ObjectChain<Dynamic> { })
		function mergeWith<TSource>(source:TSource, customizer:(value:Dynamic, srcValue:Dynamic, key:String, object:Dynamic, source:Dynamic) -> Dynamic):ObjectChain<Dynamic>;
		@:overload(function(props:haxe.extern.Rest<PropertyPath>):ObjectChain<Dynamic> { })
		function pick<U:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(props:haxe.extern.Rest<Many<U>>):ObjectChain<{ }>;
		@:overload(function<TResult>(path:PropertyPath, updater:(oldValue:Dynamic) -> Dynamic, ?customizer:SetWithCustomizer<Dynamic>):ObjectChain<TResult> { })
		function updateWith(path:PropertyPath, updater:(oldValue:Dynamic) -> Dynamic, ?customizer:SetWithCustomizer<Dynamic>):Dynamic;
		@:overload(function():CollectionChain<String> { })
		dynamic function values():CollectionChain<Dynamic>;
		@:overload(function():CollectionChain<String> { })
		dynamic function valuesIn():CollectionChain<Dynamic>;
		function after<TFunc:((args:haxe.extern.Rest<Dynamic>) -> Dynamic)>(func:TFunc):FunctionChain<TFunc>;
		function before<TFunc:((args:haxe.extern.Rest<Dynamic>) -> Dynamic)>(func:TFunc):FunctionChain<TFunc>;
	};
	/**
		This method invokes interceptor and returns value. The interceptor is invoked with one
		argument; (value). The purpose of this method is to "tap into" a method chain in order to perform operations
		on intermediate results within the chain.
	**/
	function tap<T>(value:T, interceptor:(value:T) -> Void):T;
	/**
		This method is like _.tap except that it returns the result of interceptor.
	**/
	function thru<T, TResult>(value:T, interceptor:(value:T) -> TResult):TResult;
	/**
		Converts string to camel case.
	**/
	function camelCase(?string:String):String;
	/**
		Converts the first character of string to upper case and the remaining to lower case.
	**/
	function capitalize(?string:String):String;
	/**
		Deburrs string by converting latin-1 supplementary letters to basic latin letters and removing combining
		diacritical marks.
	**/
	function deburr(?string:String):String;
	/**
		Checks if string ends with the given target string.
	**/
	function endsWith(?string:String, ?target:String, ?position:Float):Bool;
	/**
		Converts the characters "&", "<", ">", '"', "'", and "`" in string to their corresponding HTML entities.
		
		Note: No other characters are escaped. To escape additional characters use a third-party library like he.
		
		hough the ">" character is escaped for symmetry, characters like ">" and "/" don’t need escaping in HTML
		and have no special meaning unless they're part of a tag or unquoted attribute value. See Mathias Bynens’s
		article (under "semi-related fun fact") for more details.
		
		Backticks are escaped because in IE < 9, they can break out of attribute values or HTML comments. See #59,
		#102, #108, and #133 of the HTML5 Security Cheatsheet for more details.
		
		When working with HTML you should always quote attribute values to reduce XSS vectors.
	**/
	function escape(?string:String):String;
	/**
		Escapes the RegExp special characters "^", "$", "\", ".", "*", "+", "?", "(", ")", "[", "]",
		"{", "}", and "|" in string.
	**/
	function escapeRegExp(?string:String):String;
	/**
		Converts string to kebab case.
	**/
	function kebabCase(?string:String):String;
	/**
		Converts `string`, as space separated words, to lower case.
	**/
	function lowerCase(?string:String):String;
	/**
		Converts the first character of `string` to lower case.
	**/
	function lowerFirst(?string:String):String;
	/**
		Pads string on the left and right sides if it’s shorter than length. Padding characters are truncated if
		they can’t be evenly divided by length.
	**/
	function pad(?string:String, ?length:Float, ?chars:String):String;
	/**
		Pads string on the right side if it’s shorter than length. Padding characters are truncated if they exceed
		length.
	**/
	function padEnd(?string:String, ?length:Float, ?chars:String):String;
	/**
		Pads string on the left side if it’s shorter than length. Padding characters are truncated if they exceed
		length.
	**/
	function padStart(?string:String, ?length:Float, ?chars:String):String;
	/**
		Converts string to an integer of the specified radix. If radix is undefined or 0, a radix of 10 is used
		unless value is a hexadecimal, in which case a radix of 16 is used.
		
		Note: This method aligns with the ES5 implementation of parseInt.
	**/
	function parseInt(string:String, ?radix:Float):Float;
	/**
		Repeats the given string n times.
	**/
	function repeat(?string:String, ?n:Float):String;
	/**
		Replaces matches for pattern in string with replacement.
		
		Note: This method is based on String#replace.
	**/
	@:overload(function(pattern:ts.AnyOf2<String, js.lib.RegExp>, replacement:ts.AnyOf2<String, ReplaceFunction>):String { })
	function replace(string:String, pattern:ts.AnyOf2<String, js.lib.RegExp>, replacement:ts.AnyOf2<String, ReplaceFunction>):String;
	/**
		Converts string to snake case.
	**/
	function snakeCase(?string:String):String;
	/**
		Splits string by separator.
		
		Note: This method is based on String#split.
	**/
	@:overload(function(string:Null<String>, index:ts.AnyOf2<String, Float>, guard:Dynamic):Array<String> { })
	function split(string:Null<String>, ?separator:ts.AnyOf2<String, js.lib.RegExp>, ?limit:Float):Array<String>;
	/**
		Converts string to start case.
	**/
	function startCase(?string:String):String;
	/**
		Checks if string starts with the given target string.
	**/
	function startsWith(?string:String, ?target:String, ?position:Float):Bool;
	/**
		Creates a compiled template function that can interpolate data properties in "interpolate" delimiters,
		HTML-escape interpolated data properties in "escape" delimiters, and execute JavaScript in "evaluate"
		delimiters. Data properties may be accessed as free variables in the template. If a setting object is
		provided it takes precedence over _.templateSettings values.
		
		Note: In the development build _.template utilizes
		[sourceURLs](http://www.html5rocks.com/en/tutorials/developertools/sourcemaps/#toc-sourceurl) for easier
		debugging.
		
		For more information on precompiling templates see
		[lodash's custom builds documentation](https://lodash.com/custom-builds).
		
		For more information on Chrome extension sandboxes see
		[Chrome's extensions documentation](https://developer.chrome.com/extensions/sandboxingEval).
	**/
	function template(?string:String, ?options:TemplateOptions):TemplateExecutor;
	/**
		Converts `string`, as a whole, to lower case.
	**/
	function toLower(?string:String):String;
	/**
		Converts `string`, as a whole, to upper case.
	**/
	function toUpper(?string:String):String;
	/**
		Removes leading and trailing whitespace or specified characters from string.
	**/
	@:overload(function(string:String, index:ts.AnyOf2<String, Float>, guard:Dynamic):String { })
	function trim(?string:String, ?chars:String):String;
	/**
		Removes trailing whitespace or specified characters from string.
	**/
	@:overload(function(string:String, index:ts.AnyOf2<String, Float>, guard:Dynamic):String { })
	function trimEnd(?string:String, ?chars:String):String;
	/**
		Removes leading whitespace or specified characters from string.
	**/
	@:overload(function(string:String, index:ts.AnyOf2<String, Float>, guard:Dynamic):String { })
	function trimStart(?string:String, ?chars:String):String;
	/**
		Truncates string if it’s longer than the given maximum string length. The last characters of the truncated
		string are replaced with the omission string which defaults to "…".
	**/
	function truncate(?string:String, ?options:TruncateOptions):String;
	/**
		The inverse of _.escape; this method converts the HTML entities &amp;, &lt;, &gt;, &quot;, &#39;, and &#96;
		in string to their corresponding characters.
		
		Note: No other HTML entities are unescaped. To unescape additional HTML entities use a third-party library
		like he.
	**/
	function unescape(?string:String):String;
	/**
		Converts `string`, as space separated words, to upper case.
	**/
	function upperCase(?string:String):String;
	/**
		Converts the first character of `string` to upper case.
	**/
	function upperFirst(?string:String):String;
	/**
		Splits `string` into an array of its words.
	**/
	@:overload(function(string:String, index:ts.AnyOf2<String, Float>, guard:Dynamic):Array<String> { })
	function words(?string:String, ?pattern:ts.AnyOf2<String, js.lib.RegExp>):Array<String>;
	/**
		Attempts to invoke func, returning either the result or the caught error object. Any additional arguments
		are provided to func when it’s invoked.
	**/
	function attempt<TResult>(func:(args:haxe.extern.Rest<Dynamic>) -> TResult, args:haxe.extern.Rest<Dynamic>):ts.AnyOf2<js.lib.Error, TResult>;
	/**
		Binds methods of an object to the object itself, overwriting the existing method. Method names may be
		specified as individual arguments or as arrays of method names. If no method names are provided all
		enumerable function properties, own and inherited, of object are bound.
		
		Note: This method does not set the "length" property of bound functions.
	**/
	function bindAll<T>(object:T, methodNames:haxe.extern.Rest<Many<String>>):T;
	/**
		Creates a function that iterates over `pairs` and invokes the corresponding
		function of the first predicate to return truthy. The predicate-function
		pairs are invoked with the `this` binding and arguments of the created
		function.
	**/
	function cond<T, R>(pairs:Array<CondPair<T, R>>):(Target:T) -> R;
	/**
		Creates a function that invokes the predicate properties of `source` with the corresponding
		property values of a given object, returning true if all predicates return truthy, else false.
	**/
	function conforms<T>(source:{ }):(value:T) -> Bool;
	/**
		Creates a function that returns value.
	**/
	function constant<T>(value:T):() -> T;
	/**
		Checks `value` to determine whether a default value should be returned in
		its place. The `defaultValue` is returned if `value` is `NaN`, `null`,
		or `undefined`.
	**/
	@:overload(function<T, TDefault>(value:Null<T>, defaultValue:TDefault):ts.AnyOf2<T, TDefault> { })
	function defaultTo<T>(value:Null<T>, defaultValue:T):T;
	/**
		Creates a function that returns the result of invoking the provided functions with the this binding of the
		created function, where each successive invocation is supplied the return value of the previous.
	**/
	@:overload(function<A:(Array<Dynamic>), R1, R2, R3, R4, R5, R6, R7>(f1:(args:haxe.extern.Rest<Any>) -> R1, f2:(a:R1) -> R2, f3:(a:R2) -> R3, f4:(a:R3) -> R4, f5:(a:R4) -> R5, f6:(a:R5) -> R6, f7:(a:R6) -> R7, func:haxe.extern.Rest<Many<(a:Dynamic) -> Dynamic>>):(args:haxe.extern.Rest<Any>) -> Dynamic { })
	@:overload(function<A:(Array<Dynamic>), R1, R2, R3, R4, R5, R6>(f1:(args:haxe.extern.Rest<Any>) -> R1, f2:(a:R1) -> R2, f3:(a:R2) -> R3, f4:(a:R3) -> R4, f5:(a:R4) -> R5, f6:(a:R5) -> R6):(args:haxe.extern.Rest<Any>) -> R6 { })
	@:overload(function<A:(Array<Dynamic>), R1, R2, R3, R4, R5>(f1:(args:haxe.extern.Rest<Any>) -> R1, f2:(a:R1) -> R2, f3:(a:R2) -> R3, f4:(a:R3) -> R4, f5:(a:R4) -> R5):(args:haxe.extern.Rest<Any>) -> R5 { })
	@:overload(function<A:(Array<Dynamic>), R1, R2, R3, R4>(f1:(args:haxe.extern.Rest<Any>) -> R1, f2:(a:R1) -> R2, f3:(a:R2) -> R3, f4:(a:R3) -> R4):(args:haxe.extern.Rest<Any>) -> R4 { })
	@:overload(function<A:(Array<Dynamic>), R1, R2, R3>(f1:(args:haxe.extern.Rest<Any>) -> R1, f2:(a:R1) -> R2, f3:(a:R2) -> R3):(args:haxe.extern.Rest<Any>) -> R3 { })
	@:overload(function<A:(Array<Dynamic>), R1, R2>(f1:(args:haxe.extern.Rest<Any>) -> R1, f2:(a:R1) -> R2):(args:haxe.extern.Rest<Any>) -> R2 { })
	@:overload(function(func:haxe.extern.Rest<Many<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>>):(args:haxe.extern.Rest<Dynamic>) -> Dynamic { })
	function flow<A:(Array<Dynamic>), R1, R2, R3, R4, R5, R6, R7>(f1:(args:haxe.extern.Rest<Any>) -> R1, f2:(a:R1) -> R2, f3:(a:R2) -> R3, f4:(a:R3) -> R4, f5:(a:R4) -> R5, f6:(a:R5) -> R6, f7:(a:R6) -> R7):(args:haxe.extern.Rest<Any>) -> R7;
	/**
		This method is like _.flow except that it creates a function that invokes the provided functions from right
		to left.
	**/
	@:overload(function<A:(Array<Dynamic>), R1, R2, R3, R4, R5, R6>(f6:(a:R5) -> R6, f5:(a:R4) -> R5, f4:(a:R3) -> R4, f3:(a:R2) -> R3, f2:(a:R1) -> R2, f1:(args:haxe.extern.Rest<Any>) -> R1):(args:haxe.extern.Rest<Any>) -> R6 { })
	@:overload(function<A:(Array<Dynamic>), R1, R2, R3, R4, R5>(f5:(a:R4) -> R5, f4:(a:R3) -> R4, f3:(a:R2) -> R3, f2:(a:R1) -> R2, f1:(args:haxe.extern.Rest<Any>) -> R1):(args:haxe.extern.Rest<Any>) -> R5 { })
	@:overload(function<A:(Array<Dynamic>), R1, R2, R3, R4>(f4:(a:R3) -> R4, f3:(a:R2) -> R3, f2:(a:R1) -> R2, f1:(args:haxe.extern.Rest<Any>) -> R1):(args:haxe.extern.Rest<Any>) -> R4 { })
	@:overload(function<A:(Array<Dynamic>), R1, R2, R3>(f3:(a:R2) -> R3, f2:(a:R1) -> R2, f1:(args:haxe.extern.Rest<Any>) -> R1):(args:haxe.extern.Rest<Any>) -> R3 { })
	@:overload(function<A:(Array<Dynamic>), R1, R2>(f2:(a:R1) -> R2, f1:(args:haxe.extern.Rest<Any>) -> R1):(args:haxe.extern.Rest<Any>) -> R2 { })
	@:overload(function(func:haxe.extern.Rest<Many<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>>):(args:haxe.extern.Rest<Dynamic>) -> Dynamic { })
	function flowRight<A:(Array<Dynamic>), R1, R2, R3, R4, R5, R6, R7>(f7:(a:R6) -> R7, f6:(a:R5) -> R6, f5:(a:R4) -> R5, f4:(a:R3) -> R4, f3:(a:R2) -> R3, f2:(a:R1) -> R2, f1:(args:haxe.extern.Rest<Any>) -> R1):(args:haxe.extern.Rest<Any>) -> R7;
	/**
		This method returns the first argument provided to it.
	**/
	@:overload(function():Null<Any> { })
	function identity<T>(value:T):T;
	/**
		Creates a function that invokes `func` with the arguments of the created
		function. If `func` is a property name the created callback returns the
		property value for a given element. If `func` is an object the created
		callback returns `true` for elements that contain the equivalent object properties, otherwise it returns `false`.
	**/
	@:overload(function(func:ts.AnyOf2<String, Dynamic>):(args:haxe.extern.Rest<Dynamic>) -> Dynamic { })
	function iteratee<TFunction:((args:haxe.extern.Rest<Dynamic>) -> Dynamic)>(func:TFunction):TFunction;
	/**
		Creates a function that performs a deep comparison between a given object and source, returning true if the
		given object has equivalent property values, else false.
		
		Note: This method supports comparing arrays, booleans, Date objects, numbers, Object objects, regexes, and
		strings. Objects are compared by their own, not inherited, enumerable properties. For comparing a single own
		or inherited property value see _.matchesProperty.
	**/
	@:overload(function<T, V>(source:T):(value:V) -> Bool { })
	function matches<T>(source:T):(value:Dynamic) -> Bool;
	/**
		Creates a function that compares the property value of path on a given object to value.
		
		Note: This method supports comparing arrays, booleans, Date objects, numbers, Object objects, regexes, and
		strings. Objects are compared by their own, not inherited, enumerable properties.
	**/
	@:overload(function<T, V>(path:PropertyPath, srcValue:T):(value:V) -> Bool { })
	function matchesProperty<T>(path:PropertyPath, srcValue:T):(value:Dynamic) -> Bool;
	/**
		Creates a function that invokes the method at path on a given object. Any additional arguments are provided
		to the invoked method.
	**/
	function method(path:PropertyPath, args:haxe.extern.Rest<Dynamic>):(object:Dynamic) -> Dynamic;
	/**
		The opposite of _.method; this method creates a function that invokes the method at a given path on object.
		Any additional arguments are provided to the invoked method.
	**/
	function methodOf(object:Dynamic, args:haxe.extern.Rest<Dynamic>):(path:PropertyPath) -> Dynamic;
	/**
		Adds all own enumerable function properties of a source object to the destination object. If object is a
		function then methods are added to its prototype as well.
		
		Note: Use _.runInContext to create a pristine lodash function to avoid conflicts caused by modifying
		the original.
	**/
	@:overload(function<TResult>(source:Dictionary<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>, ?options:MixinOptions):LoDashStatic { })
	function mixin<TObject>(object:TObject, source:Dictionary<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>, ?options:MixinOptions):TObject;
	/**
		Reverts the _ variable to its previous value and returns a reference to the lodash function.
	**/
	function noConflict():LoDashStatic;
	/**
		A no-operation function that returns undefined regardless of the arguments it receives.
	**/
	function noop(args:haxe.extern.Rest<Dynamic>):Void;
	/**
		Creates a function that returns its nth argument.
	**/
	function nthArg(?n:Float):(args:haxe.extern.Rest<Dynamic>) -> Dynamic;
	/**
		Creates a function that invokes iteratees with the arguments provided to the created function and returns
		their results.
	**/
	function over<TResult>(iteratees:haxe.extern.Rest<Many<(args:haxe.extern.Rest<Dynamic>) -> TResult>>):(args:haxe.extern.Rest<Dynamic>) -> Array<TResult>;
	/**
		Creates a function that checks if all of the predicates return truthy when invoked with the arguments
		provided to the created function.
	**/
	@:overload(function<T>(predicates:haxe.extern.Rest<Many<(args:haxe.extern.Rest<T>) -> Bool>>):(args:haxe.extern.Rest<T>) -> Bool { })
	function overEvery<T, Result1:(T), Result2:(T)>(predicates_0:(arg:T) -> Bool, predicates_1:(arg:T) -> Bool):(arg:T) -> Bool;
	/**
		Creates a function that checks if any of the predicates return truthy when invoked with the arguments
		provided to the created function.
	**/
	@:overload(function<T>(predicates:haxe.extern.Rest<Many<(args:haxe.extern.Rest<T>) -> Bool>>):(args:haxe.extern.Rest<T>) -> Bool { })
	function overSome<T, Result1:(T), Result2:(T)>(predicates_0:(arg:T) -> Bool, predicates_1:(arg:T) -> Bool):(arg:T) -> Bool;
	/**
		Creates a function that returns the property value at path on a given object.
	**/
	function property<TObj, TResult>(path:PropertyPath):(obj:TObj) -> TResult;
	/**
		The opposite of _.property; this method creates a function that returns the property value at a given path
		on object.
	**/
	function propertyOf<T:({ })>(object:T):(path:PropertyPath) -> Dynamic;
	/**
		Creates an array of numbers (positive and/or negative) progressing from start up to, but not including, end.
		If end is not specified it’s set to start with start then set to 0. If end is less than start a zero-length
		range is created unless a negative step is specified.
	**/
	@:overload(function(end:Float, index:ts.AnyOf2<String, Float>, guard:Dynamic):Array<Float> { })
	function range(start:Float, ?end:Float, ?step:Float):Array<Float>;
	/**
		This method is like `_.range` except that it populates values in
		descending order.
	**/
	@:overload(function(end:Float, index:ts.AnyOf2<String, Float>, guard:Dynamic):Array<Float> { })
	function rangeRight(start:Float, ?end:Float, ?step:Float):Array<Float>;
	/**
		Create a new pristine lodash function using the given context object.
	**/
	function runInContext(?context:Dynamic):LoDashStatic;
	/**
		This method returns a new empty array.
	**/
	function stubArray():Array<Dynamic>;
	/**
		This method returns `false`.
		
		This method returns false.
	**/
	@:overload(function():Bool { })
	function stubFalse():Bool;
	/**
		This method returns a new empty object.
	**/
	function stubObject():Dynamic;
	/**
		This method returns an empty string.
	**/
	function stubString():String;
	/**
		This method returns `true`.
		
		This method returns true.
	**/
	@:overload(function():Bool { })
	function stubTrue():Bool;
	/**
		Invokes the iteratee function n times, returning an array of the results of each invocation. The iteratee
		is invoked with one argument; (index).
	**/
	@:overload(function(n:Float):Array<Float> { })
	function times<TResult>(n:Float, iteratee:(num:Float) -> TResult):Array<TResult>;
	/**
		Converts `value` to a property path array.
	**/
	function toPath(value:Dynamic):Array<String>;
	/**
		Generates a unique ID. If prefix is provided the ID is appended to it.
	**/
	function uniqueId(?prefix:String):String;
};