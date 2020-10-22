package global._;

typedef CollectionChain<T> = {
	function pop():ExpChain<T>;
	function push(items:haxe.extern.Rest<T>):CollectionChain<T>;
	function shift():ExpChain<T>;
	function sort(?compareFn:(a:T, b:T) -> Float):CollectionChain<T>;
	function splice(start:Float, ?deleteCount:Float, items:haxe.extern.Rest<T>):CollectionChain<T>;
	function unshift(items:haxe.extern.Rest<T>):CollectionChain<T>;
	function chunk(?size:Float):CollectionChain<Array<T>>;
	function compact():CollectionChain<Truthy<T>>;
	function concat(values:haxe.extern.Rest<Many<T>>):CollectionChain<T>;
	function difference(values:haxe.extern.Rest<List_<T>>):CollectionChain<T>;
	@:overload(function(values:haxe.extern.Rest<ts.AnyOf7<String, Float, js.lib.Symbol, List_<Any>, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:T) -> Any, { }>>):CollectionChain<T> { })
	function differenceBy<T2>(values1:List_<T2>, ?iteratee:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:ts.AnyOf2<T, T2>) -> Any, { }>):CollectionChain<T>;
	@:overload(function<T2, T3, T4>(values:haxe.extern.Rest<ts.AnyOf2<List_<Any>, Comparator2<T, Any>>>):CollectionChain<T> { })
	function differenceWith<T2>(values:List_<T2>, comparator:Comparator2<T, T2>):CollectionChain<T>;
	function drop(?n:Float):CollectionChain<T>;
	function dropRight(?n:Float):CollectionChain<T>;
	function dropRightWhile(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ListIterator<T, Any>, { }>):CollectionChain<T>;
	function dropWhile(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ListIterator<T, Any>, { }>):CollectionChain<T>;
	function fill<U>(value:U, ?start:Float, ?end:Float):CollectionChain<ts.AnyOf2<T, U>>;
	function findIndex(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ListIterator<T, Bool>, { }>, ?fromIndex:Float):PrimitiveChain<Float>;
	function findLastIndex(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ListIterator<T, Bool>, { }>, ?fromIndex:Float):PrimitiveChain<Float>;
	function first():ExpChain<T>;
	function flatten():Dynamic;
	function flattenDeep():Dynamic;
	function flattenDepth(?depth:Float):CollectionChain<T>;
	function fromPairs():ObjectChain<Dictionary<Dynamic>>;
	function head():ExpChain<T>;
	function indexOf(value:T, ?fromIndex:Float):PrimitiveChain<Float>;
	function initial():CollectionChain<T>;
	function intersection(arrays:haxe.extern.Rest<Null<List_<T>>>):CollectionChain<T>;
	@:overload(function(values:haxe.extern.Rest<ts.AnyOf7<String, Float, js.lib.Symbol, List_<Any>, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:T) -> Any, { }>>):CollectionChain<T> { })
	function intersectionBy<T2>(values:List_<T2>, iteratee:ValueIteratee<ts.AnyOf2<T, T2>>):CollectionChain<T>;
	@:overload(function(values:haxe.extern.Rest<ts.AnyOf2<List_<Any>, Comparator2<T, Any>>>):CollectionChain<T> { })
	function intersectionWith<T2>(values:List_<T2>, comparator:Comparator2<T, T2>):CollectionChain<T>;
	function join(?separator:String):StringChain;
	function last():ExpChain<T>;
	function lastIndexOf(value:T, ?fromIndex:ts.AnyOf2<Float, Bool>):PrimitiveChain<Float>;
	function nth(?n:Float):ExpChain<T>;
	function pull(values:haxe.extern.Rest<T>):CollectionChain<T>;
	function pullAll(?values:List_<T>):CollectionChain<T>;
	function pullAllBy<T2>(?values:List_<T2>, ?iteratee:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:ts.AnyOf2<T, T2>) -> Any, { }>):CollectionChain<T>;
	function pullAllWith<T2>(?values:List_<T2>, ?comparator:Comparator2<T, T2>):CollectionChain<T>;
	function pullAt(indexes:haxe.extern.Rest<Many<Float>>):CollectionChain<T>;
	function remove(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ListIterator<T, Any>, { }>):CollectionChain<T>;
	function slice(?start:Float, ?end:Float):CollectionChain<T>;
	@:overload(function(value:T):PrimitiveChain<Float> { })
	function sortedIndex(value:T):PrimitiveChain<Float>;
	function sortedIndexBy(value:T, ?iteratee:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:T) -> Any, { }>):PrimitiveChain<Float>;
	function sortedIndexOf(value:T):PrimitiveChain<Float>;
	function sortedLastIndex(value:T):PrimitiveChain<Float>;
	function sortedLastIndexBy(value:T, iteratee:ValueIteratee<T>):PrimitiveChain<Float>;
	function sortedLastIndexOf(value:T):PrimitiveChain<Float>;
	function sortedUniq():CollectionChain<T>;
	function sortedUniqBy(iteratee:ValueIteratee<T>):CollectionChain<T>;
	function tail():CollectionChain<T>;
	function take(?n:Float):CollectionChain<T>;
	function takeRight(?n:Float):CollectionChain<T>;
	function takeRightWhile(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ListIterator<T, Any>, { }>):CollectionChain<T>;
	function takeWhile(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ListIterator<T, Any>, { }>):CollectionChain<T>;
	function union(arrays:haxe.extern.Rest<Null<List_<T>>>):CollectionChain<T>;
	@:overload(function(iteratee:haxe.extern.Rest<Null<ts.AnyOf7<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, List_<T>, (value:T) -> Any, { }>>>):CollectionChain<T> { })
	function unionBy(arrays2:Null<List_<T>>, ?iteratee:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:T) -> Any, { }>):CollectionChain<T>;
	@:overload(function(comparator:haxe.extern.Rest<Null<ts.AnyOf2<List_<T>, Comparator<T>>>>):CollectionChain<T> { })
	function unionWith(arrays2:Null<List_<T>>, ?comparator:Comparator<T>):CollectionChain<T>;
	function uniq():CollectionChain<T>;
	function uniqBy(iteratee:ValueIteratee<T>):CollectionChain<T>;
	function uniqWith(?comparator:Comparator<T>):CollectionChain<T>;
	function unzip():Dynamic;
	@:overload(function():Dynamic { })
	function unzipWith<TResult>(iteratee:(values:haxe.extern.Rest<Dynamic>) -> TResult):CollectionChain<TResult>;
	function without(values:haxe.extern.Rest<T>):CollectionChain<T>;
	function xor(arrays:haxe.extern.Rest<Null<List_<T>>>):CollectionChain<T>;
	@:overload(function(iteratee:haxe.extern.Rest<Null<ts.AnyOf7<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, List_<T>, (value:T) -> Any, { }>>>):CollectionChain<T> { })
	function xorBy(arrays2:Null<List_<T>>, ?iteratee:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:T) -> Any, { }>):CollectionChain<T>;
	@:overload(function(comparator:haxe.extern.Rest<Null<ts.AnyOf2<List_<T>, Comparator<T>>>>):CollectionChain<T> { })
	function xorWith(arrays2:Null<List_<T>>, ?comparator:Comparator<T>):CollectionChain<T>;
	@:overload(function(arrays:haxe.extern.Rest<Null<List_<T>>>):CollectionChain<Array<Null<T>>> { })
	function zip<T2>(arrays2:List_<T2>):CollectionChain<ts.Tuple2<Null<T>, Null<T2>>>;
	@:overload(function():ObjectChain<Dictionary<Null<Any>>> { })
	function zipObject<U>(values:List_<U>):ObjectChain<Dictionary<U>>;
	function zipObjectDeep(?values:List_<Dynamic>):ObjectChain<Dynamic>;
	@:overload(function<T2, T3, TResult>(arrays2:List_<T2>, arrays3:List_<T3>, iteratee:(value1:T, value2:T2, value3:T3) -> TResult):CollectionChain<TResult> { })
	@:overload(function<TResult>(iteratee:haxe.extern.Rest<Null<ts.AnyOf2<List_<T>, (group:haxe.extern.Rest<T>) -> TResult>>>):CollectionChain<TResult> { })
	function zipWith<T2, TResult>(arrays2:List_<T2>, iteratee:(value1:T, value2:T2) -> TResult):CollectionChain<TResult>;
	function countBy(?iteratee:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:T) -> Any, { }>):ObjectChain<Dictionary<Float>>;
	dynamic function each(?iteratee:ListIterator<T, Dynamic>):CollectionChain<T>;
	dynamic function eachRight(?iteratee:ListIterator<T, Dynamic>):CollectionChain<T>;
	function every(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ListIterator<T, Bool>, { }>):PrimitiveChain<Bool>;
	@:overload(function(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ListIterator<T, Bool>, { }>):CollectionChain<T> { })
	function filter<S>(predicate:ListIteratorTypeGuard<T, S>):CollectionChain<S>;
	@:overload(function(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ListIterator<T, Bool>, { }>, ?fromIndex:Float):ExpChain<T> { })
	function find<S>(predicate:ListIteratorTypeGuard<T, S>, ?fromIndex:Float):ExpChain<S>;
	@:overload(function(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ListIterator<T, Bool>, { }>, ?fromIndex:Float):ExpChain<T> { })
	function findLast<S>(predicate:ListIteratorTypeGuard<T, S>, ?fromIndex:Float):ExpChain<S>;
	@:overload(function(iteratee:ts.AnyOf2<Dynamic, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>>):CollectionChain<Bool> { })
	@:overload(function():Dynamic { })
	function flatMap<TResult>(iteratee:ts.AnyOf4<String, Float, js.lib.Symbol, ListIterator<T, Many<TResult>>>):CollectionChain<TResult>;
	@:overload(function(iteratee:ts.AnyOf2<Dynamic, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>>):CollectionChain<Bool> { })
	@:overload(function():CollectionChain<T> { })
	function flatMapDeep<TResult>(iteratee:ts.AnyOf4<String, Float, js.lib.Symbol, ListIterator<T, ts.AnyOf2<ListOfRecursiveArraysOrValues<TResult>, TResult>>>):CollectionChain<TResult>;
	@:overload(function(iteratee:ts.AnyOf2<Dynamic, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>>, ?depth:Float):CollectionChain<Bool> { })
	@:overload(function(?depth:Float):CollectionChain<T> { })
	function flatMapDepth<TResult>(iteratee:ts.AnyOf4<String, Float, js.lib.Symbol, ListIterator<T, ts.AnyOf2<ListOfRecursiveArraysOrValues<TResult>, TResult>>>, ?depth:Float):CollectionChain<TResult>;
	function forEach(?iteratee:ListIterator<T, Dynamic>):CollectionChain<T>;
	function forEachRight(?iteratee:ListIterator<T, Dynamic>):CollectionChain<T>;
	function groupBy(?iteratee:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:T) -> Any, { }>):ObjectChain<Dictionary<Array<T>>>;
	function includes(target:T, ?fromIndex:Float):PrimitiveChain<Bool>;
	function keyBy(?iteratee:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:T) -> ts.AnyOf3<String, Float, js.lib.Symbol>, { }>):ObjectChain<Dictionary<T>>;
	@:overload(function<TResult>(iteratee:ListIterator<T, TResult>):CollectionChain<TResult> { })
	@:overload(function(iteratee:ts.AnyOf3<String, Float, js.lib.Symbol>):CollectionChain<Dynamic> { })
	@:overload(function(iteratee:ts.AnyOf2<Dynamic, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>>):CollectionChain<Bool> { })
	@:overload(function():CollectionChain<T> { })
	function map<K>(key:K):CollectionChain<Dynamic>;
	function orderBy(?iteratees:ts.AnyOf6<String, Float, js.lib.Symbol, ListIterator<T, Any>, haxe.ds.ReadOnlyArray<ts.AnyOf5<String, Float, js.lib.Symbol, ListIterator<T, Any>, { }>>, { }>, ?orders:Many<ts.AnyOf2<Bool, String>>):CollectionChain<T>;
	@:overload(function(callback:ValueIteratee<T>):LoDashExplicitWrapper<ts.Tuple2<Array<T>, Array<T>>> { })
	function partition<U>(callback:ValueIteratorTypeGuard<T, U>):LoDashExplicitWrapper<ts.Tuple2<Array<U>, Array<{ }>>>;
	@:overload(function(callback:MemoListIterator<T, T, List_<T>>):ExpChain<T> { })
	function reduce<TResult>(callback:MemoListIterator<T, TResult, List_<T>>, accumulator:TResult):ExpChain<TResult>;
	@:overload(function(callback:MemoListIterator<T, T, List_<T>>):ExpChain<T> { })
	function reduceRight<TResult>(callback:MemoListIterator<T, TResult, List_<T>>, accumulator:TResult):ExpChain<TResult>;
	function reject(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ListIterator<T, Bool>, { }>):CollectionChain<T>;
	function sample():ExpChain<T>;
	function sampleSize(?n:Float):CollectionChain<T>;
	function shuffle():CollectionChain<T>;
	function some(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ListIterator<T, Bool>, { }>):PrimitiveChain<Bool>;
	function sortBy(iteratees:haxe.extern.Rest<Many<ListIteratee<T>>>):CollectionChain<T>;
	function castArray():CollectionChain<T>;
	function toArray():CollectionChain<T>;
	function max():ExpChain<T>;
	function maxBy(?iteratee:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:T) -> Any, { }>):ExpChain<T>;
	function meanBy(?iteratee:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:T) -> Any, { }>):PrimitiveChain<Float>;
	function min():ExpChain<T>;
	function minBy(?iteratee:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:T) -> Any, { }>):ExpChain<T>;
	function sumBy(?iteratee:ts.AnyOf2<String, (value:T) -> Float>):PrimitiveChain<Float>;
	function at(props:haxe.extern.Rest<Many<ts.AnyOf3<String, Float, js.lib.Symbol>>>):CollectionChain<T>;
	@:overload(function<TDefault>(path:Float, defaultValue:TDefault):ts.AnyOf2<ExpChain<T>, ExpChain<TDefault>> { })
	function get(path:Float):ExpChain<T>;
	function invertBy(?iteratee:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:T) -> Any, { }>):ObjectChain<Dictionary<Array<String>>>;
	function mapKeys(?iteratee:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ListIterator<T, Any>, { }>):ObjectChain<Dictionary<T>>;
	@:overload(function<TKey>(iteratee:TKey):ObjectChain<Dictionary<Dynamic>> { })
	@:overload(function(iteratee:Dynamic):ObjectChain<Dictionary<Bool>> { })
	@:overload(function(iteratee:String):ObjectChain<Dictionary<Dynamic>> { })
	@:overload(function():ObjectChain<Dictionary<T>> { })
	function mapValues<TResult>(callback:ObjectIterator<Dictionary<T>, TResult>):ObjectChain<Dictionary<TResult>>;
	function omit(paths:haxe.extern.Rest<Many<ts.AnyOf3<String, Float, js.lib.Symbol>>>):CollectionChain<T>;
	function omitBy(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:T, key:String) -> Any, { }>):ObjectChain<Dictionary<T>>;
	@:overload(function(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:T, key:String) -> Any, { }>):ObjectChain<Dictionary<T>> { })
	function pickBy<S>(predicate:ValueKeyIterateeTypeGuard<T, S>):ObjectChain<Dictionary<S>>;
	@:overload(function():CollectionChain<Dynamic> { })
	function transform<TResult>(iteratee:MemoVoidArrayIterator<T, TResult>, ?accumulator:TResult):ExpChain<TResult>;
	function iteratee():FunctionChain<(o:Dynamic) -> Bool>;
	function over<TResult>(iteratees:haxe.extern.Rest<Many<(args:haxe.extern.Rest<Dynamic>) -> TResult>>):FunctionChain<(args:haxe.extern.Rest<Dynamic>) -> Array<TResult>>;
	function overEvery<TArgs>(iteratees:haxe.extern.Rest<Many<(args:haxe.extern.Rest<TArgs>) -> Bool>>):FunctionChain<(args:haxe.extern.Rest<TArgs>) -> Bool>;
	function overSome<TArgs>(iteratees:haxe.extern.Rest<Many<(args:haxe.extern.Rest<TArgs>) -> Bool>>):FunctionChain<(args:haxe.extern.Rest<TArgs>) -> Bool>;
	@:overload(function<TResult>(method:(args:haxe.extern.Rest<Dynamic>) -> TResult, args:haxe.extern.Rest<Dynamic>):CollectionChain<TResult> { })
	function invokeMap(methodName:String, args:haxe.extern.Rest<Dynamic>):CollectionChain<Dynamic>;
	function size():PrimitiveChain<Float>;
	function now():PrimitiveChain<Float>;
	function bind(thisArg:Dynamic, partials:haxe.extern.Rest<Dynamic>):FunctionChain<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	function bindKey(key:String, partials:haxe.extern.Rest<Dynamic>):FunctionChain<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	function defer(args:haxe.extern.Rest<Dynamic>):PrimitiveChain<Float>;
	function delay(wait:Float, args:haxe.extern.Rest<Dynamic>):PrimitiveChain<Float>;
	function wrap<TArgs, TResult>(wrapper:(value:Array<T>, args:haxe.extern.Rest<TArgs>) -> TResult):FunctionChain<(args:haxe.extern.Rest<TArgs>) -> TResult>;
	function clone():CollectionChain<T>;
	function cloneDeep():CollectionChain<T>;
	@:overload(function():CollectionChain<T> { })
	function cloneDeepWith(customizer:CloneDeepWithCustomizer<Array<T>>):LoDashExplicitWrapper<Dynamic>;
	@:overload(function<TResult>(customizer:CloneWithCustomizer<Array<T>, Null<TResult>>):ts.AnyOf2<CollectionChain<T>, ExpChain<TResult>> { })
	@:overload(function():CollectionChain<T> { })
	function cloneWith<TResult>(customizer:CloneWithCustomizer<Array<T>, TResult>):ExpChain<TResult>;
	function conformsTo(source:Array<Dynamic>):PrimitiveChain<Bool>;
	function eq(other:Dynamic):PrimitiveChain<Bool>;
	function gt(other:Dynamic):PrimitiveChain<Bool>;
	function gte(other:Dynamic):PrimitiveChain<Bool>;
	function isArguments():PrimitiveChain<Bool>;
	function isArray():PrimitiveChain<Bool>;
	function isArrayBuffer():PrimitiveChain<Bool>;
	function isArrayLike():PrimitiveChain<Bool>;
	function isArrayLikeObject():PrimitiveChain<Bool>;
	function isBoolean():PrimitiveChain<Bool>;
	function isBuffer():PrimitiveChain<Bool>;
	function isDate():PrimitiveChain<Bool>;
	function isElement():PrimitiveChain<Bool>;
	function isEmpty():PrimitiveChain<Bool>;
	function isEqual(other:Dynamic):PrimitiveChain<Bool>;
	function isEqualWith(other:Dynamic, ?customizer:IsEqualCustomizer):PrimitiveChain<Bool>;
	function isError():PrimitiveChain<Bool>;
	function isFinite():PrimitiveChain<Bool>;
	function isFunction():PrimitiveChain<Bool>;
	function isInteger():PrimitiveChain<Bool>;
	function isLength():PrimitiveChain<Bool>;
	function isMap():PrimitiveChain<Bool>;
	function isMatch(source:Dynamic):PrimitiveChain<Bool>;
	function isMatchWith(source:Dynamic, customizer:IsMatchWithCustomizer):PrimitiveChain<Bool>;
	function isNaN():PrimitiveChain<Bool>;
	function isNative():PrimitiveChain<Bool>;
	function isNil():PrimitiveChain<Bool>;
	function isNull():PrimitiveChain<Bool>;
	function isNumber():PrimitiveChain<Bool>;
	function isObject():PrimitiveChain<Bool>;
	function isObjectLike():PrimitiveChain<Bool>;
	function isPlainObject():PrimitiveChain<Bool>;
	function isRegExp():PrimitiveChain<Bool>;
	function isSafeInteger():PrimitiveChain<Bool>;
	function isSet():PrimitiveChain<Bool>;
	function isString():PrimitiveChain<Bool>;
	function isSymbol():PrimitiveChain<Bool>;
	function isTypedArray():PrimitiveChain<Bool>;
	function isUndefined():PrimitiveChain<Bool>;
	function isWeakMap():PrimitiveChain<Bool>;
	function isWeakSet():PrimitiveChain<Bool>;
	function lt(other:Dynamic):PrimitiveChain<Bool>;
	function lte(other:Dynamic):PrimitiveChain<Bool>;
	function toFinite():PrimitiveChain<Float>;
	function toInteger():PrimitiveChain<Float>;
	function toLength():PrimitiveChain<Float>;
	function toNumber():PrimitiveChain<Float>;
	function toPlainObject():ObjectChain<Dynamic>;
	function toSafeInteger():PrimitiveChain<Float>;
	function add(addend:Float):PrimitiveChain<Float>;
	function ceil(?precision:Float):PrimitiveChain<Float>;
	function divide(divisor:Float):PrimitiveChain<Float>;
	function floor(?precision:Float):PrimitiveChain<Float>;
	function mean():PrimitiveChain<Float>;
	function multiply(multiplicand:Float):PrimitiveChain<Float>;
	function round(?precision:Float):PrimitiveChain<Float>;
	function subtract(subtrahend:Float):PrimitiveChain<Float>;
	function sum():PrimitiveChain<Float>;
	@:overload(function(upper:Float):PrimitiveChain<Float> { })
	function clamp(lower:Float, upper:Float):PrimitiveChain<Float>;
	function inRange(start:Float, ?end:Float):PrimitiveChain<Bool>;
	@:overload(function(max:Float, ?floating:Bool):PrimitiveChain<Float> { })
	function random(?floating:Bool):PrimitiveChain<Float>;
	function entries():CollectionChain<ts.Tuple2<String, Dynamic>>;
	function entriesIn():CollectionChain<ts.Tuple2<String, Dynamic>>;
	function findKey(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ObjectIterator<Array<T>, Any>, { }>):StringNullableChain;
	function findLastKey(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ObjectIterator<Array<T>, Any>, { }>):StringNullableChain;
	function forIn(?iteratee:ObjectIterator<Array<T>, Dynamic>):CollectionChain<T>;
	function forInRight(?iteratee:ObjectIterator<Array<T>, Dynamic>):CollectionChain<T>;
	function forOwn(?iteratee:ObjectIterator<Array<T>, Dynamic>):CollectionChain<T>;
	function forOwnRight(?iteratee:ObjectIterator<Array<T>, Dynamic>):CollectionChain<T>;
	function functions():CollectionChain<String>;
	function functionsIn():CollectionChain<String>;
	function has(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>):PrimitiveChain<Bool>;
	function hasIn(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>):PrimitiveChain<Bool>;
	function invert():ObjectChain<Dictionary<String>>;
	function invoke(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, args:haxe.extern.Rest<Dynamic>):LoDashExplicitWrapper<Dynamic>;
	function keys():CollectionChain<String>;
	function keysIn():CollectionChain<String>;
	function result<TResult>(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, ?defaultValue:ts.AnyOf2<(args:haxe.extern.Rest<Dynamic>) -> TResult, TResult>):ExpChain<TResult>;
	@:overload(function<TResult>(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, value:Dynamic):ExpChain<TResult> { })
	function set(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, value:Dynamic):CollectionChain<T>;
	@:overload(function<TResult>(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, value:Dynamic, ?customizer:SetWithCustomizer<Array<T>>):ExpChain<TResult> { })
	function setWith(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, value:Dynamic, ?customizer:SetWithCustomizer<Array<T>>):CollectionChain<T>;
	function toPairs():CollectionChain<ts.Tuple2<String, T>>;
	function toPairsIn():CollectionChain<ts.Tuple2<String, T>>;
	function unset(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>):PrimitiveChain<Bool>;
	function update(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, updater:(value:Dynamic) -> Dynamic):ObjectChain<Dynamic>;
	function chain():CollectionChain<T>;
	function commit():CollectionChain<T>;
	function plant(value:Any):CollectionChain<T>;
	function reverse():CollectionChain<T>;
	function toJSON():Array<T>;
	function value():Array<T>;
	function valueOf():Array<T>;
	function tap(interceptor:(value:Array<T>) -> Void):CollectionChain<T>;
	function thru<TResult>(interceptor:(value:Array<T>) -> TResult):ExpChain<TResult>;
	function camelCase():StringChain;
	function capitalize():StringChain;
	function deburr():StringChain;
	function endsWith(?target:String, ?position:Float):PrimitiveChain<Bool>;
	function escape():StringChain;
	function escapeRegExp():StringChain;
	function kebabCase():StringChain;
	function lowerCase():StringChain;
	function lowerFirst():StringChain;
	function pad(?length:Float, ?chars:String):StringChain;
	function padEnd(?length:Float, ?chars:String):StringChain;
	function padStart(?length:Float, ?chars:String):StringChain;
	function parseInt(?radix:Float):PrimitiveChain<Float>;
	function repeat(?n:Float):StringChain;
	@:overload(function(replacement:ts.AnyOf2<String, ReplaceFunction>):StringChain { })
	function replace(pattern:ts.AnyOf2<String, js.lib.RegExp>, replacement:ts.AnyOf2<String, ReplaceFunction>):StringChain;
	function snakeCase():StringChain;
	function split(?separator:ts.AnyOf2<String, js.lib.RegExp>, ?limit:Float):CollectionChain<String>;
	function startCase():StringChain;
	function startsWith(?target:String, ?position:Float):PrimitiveChain<Bool>;
	function template(?options:TemplateOptions):FunctionChain<TemplateExecutor>;
	function toLower():StringChain;
	function toUpper():StringChain;
	function trim(?chars:String):StringChain;
	function trimEnd(?chars:String):StringChain;
	function trimStart(?chars:String):StringChain;
	function truncate(?options:TruncateOptions):StringChain;
	function unescape():StringChain;
	function upperCase():StringChain;
	function upperFirst():StringChain;
	function words(?pattern:ts.AnyOf2<String, js.lib.RegExp>):CollectionChain<String>;
	function attempt<TResult>(args:haxe.extern.Rest<Dynamic>):ts.AnyOf2<ObjectChain<js.lib.Error>, ExpChain<TResult>>;
	function bindAll(methodNames:haxe.extern.Rest<Many<String>>):CollectionChain<T>;
	function conforms():FunctionChain<(value:Array<Dynamic>) -> Bool>;
	function constant():FunctionChain<() -> Array<T>>;
	@:overload(function<TDefault>(defaultValue:TDefault):ts.AnyOf2<CollectionChain<T>, ExpChain<TDefault>> { })
	function defaultTo(defaultValue:Array<T>):CollectionChain<T>;
	function identity():CollectionChain<T>;
	function matches<V>():FunctionChain<(value:V) -> Bool>;
	@:overload(function<SrcValue, Value>(srcValue:SrcValue):FunctionChain<(value:Value) -> Bool> { })
	function matchesProperty<SrcValue>(srcValue:SrcValue):FunctionChain<(value:Dynamic) -> Bool>;
	function method(args:haxe.extern.Rest<Dynamic>):FunctionChain<(object:Dynamic) -> Dynamic>;
	function methodOf(args:haxe.extern.Rest<Dynamic>):LoDashExplicitWrapper<(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>) -> Dynamic>;
	@:overload(function(?options:MixinOptions):LoDashExplicitWrapper<LoDashStatic> { })
	function mixin(source:Dictionary<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>, ?options:MixinOptions):CollectionChain<T>;
	function noConflict():LoDashExplicitWrapper<LoDashStatic>;
	function noop(args:haxe.extern.Rest<Dynamic>):PrimitiveChain<Null<Any>>;
	function nthArg():FunctionChain<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	function property<TObj, TResult>():FunctionChain<(obj:TObj) -> TResult>;
	function propertyOf():LoDashExplicitWrapper<(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>) -> Dynamic>;
	function range(?end:Float, ?step:Float):CollectionChain<Float>;
	function rangeRight(?end:Float, ?step:Float):CollectionChain<Float>;
	function stubArray():CollectionChain<Dynamic>;
	@:overload(function():LoDashExplicitWrapper<Bool> { })
	function stubFalse():PrimitiveChain<Bool>;
	function stubObject():LoDashExplicitWrapper<Dynamic>;
	function stubString():StringChain;
	@:overload(function():LoDashExplicitWrapper<Bool> { })
	function stubTrue():PrimitiveChain<Bool>;
	@:overload(function():CollectionChain<Float> { })
	function times<TResult>(iteratee:(num:Float) -> TResult):CollectionChain<TResult>;
	function toPath():CollectionChain<String>;
	function uniqueId():StringChain;
};