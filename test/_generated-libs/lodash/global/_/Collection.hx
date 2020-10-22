package global._;

typedef Collection<T> = {
	function pop():Null<T>;
	function push(items:haxe.extern.Rest<T>):Collection<T>;
	function shift():Null<T>;
	function sort(?compareFn:(a:T, b:T) -> Float):Collection<T>;
	function splice(start:Float, ?deleteCount:Float, items:haxe.extern.Rest<T>):Collection<T>;
	function unshift(items:haxe.extern.Rest<T>):Collection<T>;
	function chunk(?size:Float):Collection<Array<T>>;
	function compact():Collection<Truthy<T>>;
	function concat(values:haxe.extern.Rest<Many<T>>):Collection<T>;
	function difference(values:haxe.extern.Rest<List_<T>>):Collection<T>;
	@:overload(function(values:haxe.extern.Rest<ts.AnyOf7<String, Float, js.lib.Symbol, List_<Any>, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:T) -> Any, { }>>):Collection<T> { })
	function differenceBy<T2>(values1:List_<T2>, ?iteratee:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:ts.AnyOf2<T, T2>) -> Any, { }>):Collection<T>;
	@:overload(function<T2, T3, T4>(values:haxe.extern.Rest<ts.AnyOf2<List_<Any>, Comparator2<T, Any>>>):Collection<T> { })
	function differenceWith<T2>(values:List_<T2>, comparator:Comparator2<T, T2>):Collection<T>;
	function drop(?n:Float):Collection<T>;
	function dropRight(?n:Float):Collection<T>;
	function dropRightWhile(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ListIterator<T, Any>, { }>):Collection<T>;
	function dropWhile(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ListIterator<T, Any>, { }>):Collection<T>;
	function fill<U>(value:U, ?start:Float, ?end:Float):Collection<ts.AnyOf2<T, U>>;
	function findIndex(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ListIterator<T, Bool>, { }>, ?fromIndex:Float):Float;
	function findLastIndex(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ListIterator<T, Bool>, { }>, ?fromIndex:Float):Float;
	function first():Null<T>;
	function flatten():Dynamic;
	function flattenDeep():Dynamic;
	function flattenDepth(?depth:Float):Collection<T>;
	function fromPairs():Object<Dictionary<Dynamic>>;
	function head():Null<T>;
	function indexOf(value:T, ?fromIndex:Float):Float;
	function initial():Collection<T>;
	function intersection(arrays:haxe.extern.Rest<Null<List_<T>>>):Collection<T>;
	@:overload(function(values:haxe.extern.Rest<ts.AnyOf7<String, Float, js.lib.Symbol, List_<Any>, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:T) -> Any, { }>>):Collection<T> { })
	function intersectionBy<T2>(values:List_<T2>, iteratee:ValueIteratee<ts.AnyOf2<T, T2>>):Collection<T>;
	@:overload(function(values:haxe.extern.Rest<ts.AnyOf2<List_<Any>, Comparator2<T, Any>>>):Collection<T> { })
	function intersectionWith<T2>(values:List_<T2>, comparator:Comparator2<T, T2>):Collection<T>;
	function join(?separator:String):String;
	function last():Null<T>;
	function lastIndexOf(value:T, ?fromIndex:ts.AnyOf2<Float, Bool>):Float;
	function nth(?n:Float):Null<T>;
	function pull(values:haxe.extern.Rest<T>):Collection<T>;
	function pullAll(?values:List_<T>):Collection<T>;
	function pullAllBy<T2>(?values:List_<T2>, ?iteratee:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:ts.AnyOf2<T, T2>) -> Any, { }>):Collection<T>;
	function pullAllWith<T2>(?values:List_<T2>, ?comparator:Comparator2<T, T2>):Collection<T>;
	function pullAt(indexes:haxe.extern.Rest<Many<Float>>):Collection<T>;
	function remove(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ListIterator<T, Any>, { }>):Collection<T>;
	function slice(?start:Float, ?end:Float):Collection<T>;
	@:overload(function(value:T):Float { })
	function sortedIndex(value:T):Float;
	function sortedIndexBy(value:T, ?iteratee:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:T) -> Any, { }>):Float;
	function sortedIndexOf(value:T):Float;
	function sortedLastIndex(value:T):Float;
	function sortedLastIndexBy(value:T, iteratee:ValueIteratee<T>):Float;
	function sortedLastIndexOf(value:T):Float;
	function sortedUniq():Collection<T>;
	function sortedUniqBy(iteratee:ValueIteratee<T>):Collection<T>;
	function tail():Collection<T>;
	function take(?n:Float):Collection<T>;
	function takeRight(?n:Float):Collection<T>;
	function takeRightWhile(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ListIterator<T, Any>, { }>):Collection<T>;
	function takeWhile(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ListIterator<T, Any>, { }>):Collection<T>;
	function union(arrays:haxe.extern.Rest<Null<List_<T>>>):Collection<T>;
	@:overload(function(iteratee:haxe.extern.Rest<Null<ts.AnyOf7<String, Float, js.lib.Symbol, List_<T>, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:T) -> Any, { }>>>):Collection<T> { })
	function unionBy(arrays2:Null<List_<T>>, ?iteratee:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:T) -> Any, { }>):Collection<T>;
	@:overload(function(comparator:haxe.extern.Rest<Null<ts.AnyOf2<List_<T>, Comparator<T>>>>):Collection<T> { })
	function unionWith(arrays2:Null<List_<T>>, ?comparator:Comparator<T>):Collection<T>;
	function uniq():Collection<T>;
	function uniqBy(iteratee:ValueIteratee<T>):Collection<T>;
	function uniqWith(?comparator:Comparator<T>):Collection<T>;
	function unzip():Dynamic;
	@:overload(function():Dynamic { })
	function unzipWith<TResult>(iteratee:(values:haxe.extern.Rest<Dynamic>) -> TResult):Collection<TResult>;
	function without(values:haxe.extern.Rest<T>):Collection<T>;
	function xor(arrays:haxe.extern.Rest<Null<List_<T>>>):Collection<T>;
	@:overload(function(iteratee:haxe.extern.Rest<Null<ts.AnyOf7<String, Float, js.lib.Symbol, List_<T>, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:T) -> Any, { }>>>):Collection<T> { })
	function xorBy(arrays2:Null<List_<T>>, ?iteratee:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:T) -> Any, { }>):Collection<T>;
	@:overload(function(comparator:haxe.extern.Rest<Null<ts.AnyOf2<List_<T>, Comparator<T>>>>):Collection<T> { })
	function xorWith(arrays2:Null<List_<T>>, ?comparator:Comparator<T>):Collection<T>;
	@:overload(function(arrays:haxe.extern.Rest<Null<List_<T>>>):Collection<Array<Null<T>>> { })
	function zip<T2>(arrays2:List_<T2>):Collection<ts.Tuple2<Null<T>, Null<T2>>>;
	@:overload(function():Object<Dictionary<Null<Any>>> { })
	function zipObject<U>(values:List_<U>):Object<Dictionary<U>>;
	function zipObjectDeep(?values:List_<Dynamic>):Object<Dynamic>;
	@:overload(function<T2, T3, TResult>(arrays2:List_<T2>, arrays3:List_<T3>, iteratee:(value1:T, value2:T2, value3:T3) -> TResult):Collection<TResult> { })
	@:overload(function<TResult>(iteratee:haxe.extern.Rest<Null<ts.AnyOf2<List_<T>, (group:haxe.extern.Rest<T>) -> TResult>>>):Collection<TResult> { })
	function zipWith<T2, TResult>(arrays2:List_<T2>, iteratee:(value1:T, value2:T2) -> TResult):Collection<TResult>;
	function countBy(?iteratee:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:T) -> Any, { }>):Object<Dictionary<Float>>;
	dynamic function each(?iteratee:ListIterator<T, Dynamic>):Collection<T>;
	dynamic function eachRight(?iteratee:ListIterator<T, Dynamic>):Collection<T>;
	function every(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ListIterator<T, Bool>, { }>):Bool;
	@:overload(function(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ListIterator<T, Bool>, { }>):Collection<T> { })
	function filter<S>(predicate:ListIteratorTypeGuard<T, S>):Collection<S>;
	@:overload(function(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ListIterator<T, Bool>, { }>, ?fromIndex:Float):Null<T> { })
	function find<S>(predicate:ListIteratorTypeGuard<T, S>, ?fromIndex:Float):Null<S>;
	@:overload(function(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ListIterator<T, Bool>, { }>, ?fromIndex:Float):Null<T> { })
	function findLast<S>(predicate:ListIteratorTypeGuard<T, S>, ?fromIndex:Float):Null<S>;
	@:overload(function(iteratee:ts.AnyOf2<Dynamic, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>>):Collection<Bool> { })
	@:overload(function():Dynamic { })
	function flatMap<TResult>(iteratee:ts.AnyOf4<String, Float, js.lib.Symbol, ListIterator<T, Many<TResult>>>):Collection<TResult>;
	@:overload(function(iteratee:ts.AnyOf2<Dynamic, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>>):Collection<Bool> { })
	@:overload(function():Collection<T> { })
	function flatMapDeep<TResult>(iteratee:ts.AnyOf4<String, Float, js.lib.Symbol, ListIterator<T, ts.AnyOf2<ListOfRecursiveArraysOrValues<TResult>, TResult>>>):Collection<TResult>;
	@:overload(function(iteratee:ts.AnyOf2<Dynamic, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>>, ?depth:Float):Collection<Bool> { })
	@:overload(function(?depth:Float):Collection<T> { })
	function flatMapDepth<TResult>(iteratee:ts.AnyOf4<String, Float, js.lib.Symbol, ListIterator<T, ts.AnyOf2<ListOfRecursiveArraysOrValues<TResult>, TResult>>>, ?depth:Float):Collection<TResult>;
	function forEach(?iteratee:ListIterator<T, Dynamic>):Collection<T>;
	function forEachRight(?iteratee:ListIterator<T, Dynamic>):Collection<T>;
	function groupBy(?iteratee:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:T) -> Any, { }>):Object<Dictionary<Array<T>>>;
	function includes(target:T, ?fromIndex:Float):Bool;
	function keyBy(?iteratee:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:T) -> ts.AnyOf3<String, Float, js.lib.Symbol>, { }>):Object<Dictionary<T>>;
	@:overload(function<TResult>(iteratee:ListIterator<T, TResult>):Collection<TResult> { })
	@:overload(function(iteratee:ts.AnyOf3<String, Float, js.lib.Symbol>):Collection<Dynamic> { })
	@:overload(function(iteratee:ts.AnyOf2<Dynamic, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>>):Collection<Bool> { })
	@:overload(function():Collection<T> { })
	function map<K>(key:K):Collection<Dynamic>;
	function orderBy(?iteratees:ts.AnyOf6<String, Float, js.lib.Symbol, ListIterator<T, Any>, haxe.ds.ReadOnlyArray<ts.AnyOf5<String, Float, js.lib.Symbol, ListIterator<T, Any>, { }>>, { }>, ?orders:Many<ts.AnyOf2<Bool, String>>):Collection<T>;
	@:overload(function(callback:ValueIteratee<T>):LoDashImplicitWrapper<ts.Tuple2<Array<T>, Array<T>>> { })
	function partition<U>(callback:ValueIteratorTypeGuard<T, U>):LoDashImplicitWrapper<ts.Tuple2<Array<U>, Array<{ }>>>;
	@:overload(function(callback:MemoListIterator<T, T, List_<T>>):Null<T> { })
	function reduce<TResult>(callback:MemoListIterator<T, TResult, List_<T>>, accumulator:TResult):TResult;
	@:overload(function(callback:MemoListIterator<T, T, List_<T>>):Null<T> { })
	function reduceRight<TResult>(callback:MemoListIterator<T, TResult, List_<T>>, accumulator:TResult):TResult;
	function reject(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ListIterator<T, Bool>, { }>):Collection<T>;
	function sample():Null<T>;
	function sampleSize(?n:Float):Collection<T>;
	function shuffle():Collection<T>;
	function some(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ListIterator<T, Bool>, { }>):Bool;
	function sortBy(iteratees:haxe.extern.Rest<Many<ListIteratee<T>>>):Collection<T>;
	function castArray():Collection<T>;
	function toArray():Collection<T>;
	function max():Null<T>;
	function maxBy(?iteratee:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:T) -> Any, { }>):Null<T>;
	function meanBy(?iteratee:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:T) -> Any, { }>):Float;
	function min():Null<T>;
	function minBy(?iteratee:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:T) -> Any, { }>):Null<T>;
	function sumBy(?iteratee:ts.AnyOf2<String, (value:T) -> Float>):Float;
	function at(props:haxe.extern.Rest<Many<ts.AnyOf3<String, Float, js.lib.Symbol>>>):Collection<T>;
	@:overload(function<TDefault>(path:Float, defaultValue:TDefault):ts.AnyOf2<T, TDefault> { })
	function get(path:Float):T;
	function invertBy(?iteratee:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:T) -> Any, { }>):Object<Dictionary<Array<String>>>;
	function mapKeys(?iteratee:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ListIterator<T, Any>, { }>):Object<Dictionary<T>>;
	@:overload(function<TKey>(iteratee:TKey):Object<Dictionary<Dynamic>> { })
	@:overload(function(iteratee:Dynamic):Object<Dictionary<Bool>> { })
	@:overload(function(iteratee:String):Object<Dictionary<Dynamic>> { })
	@:overload(function():Object<Dictionary<T>> { })
	function mapValues<TResult>(callback:ObjectIterator<Dictionary<T>, TResult>):Object<Dictionary<TResult>>;
	function omit(paths:haxe.extern.Rest<Many<ts.AnyOf3<String, Float, js.lib.Symbol>>>):Collection<T>;
	function omitBy(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:T, key:String) -> Any, { }>):Object<Dictionary<T>>;
	@:overload(function(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:T, key:String) -> Any, { }>):Object<Dictionary<T>> { })
	function pickBy<S>(predicate:ValueKeyIterateeTypeGuard<T, S>):Object<Dictionary<S>>;
	@:overload(function():Collection<Dynamic> { })
	function transform<TResult>(iteratee:MemoVoidArrayIterator<T, TResult>, ?accumulator:TResult):ImpChain<TResult>;
	function chain():CollectionChain<T>;
	function iteratee():Function<(o:Dynamic) -> Bool>;
	function over<TResult>(iteratees:haxe.extern.Rest<Many<(args:haxe.extern.Rest<Dynamic>) -> TResult>>):Function<(args:haxe.extern.Rest<Dynamic>) -> Array<TResult>>;
	function overEvery<TArgs>(iteratees:haxe.extern.Rest<Many<(args:haxe.extern.Rest<TArgs>) -> Bool>>):Function<(args:haxe.extern.Rest<TArgs>) -> Bool>;
	function overSome<TArgs>(iteratees:haxe.extern.Rest<Many<(args:haxe.extern.Rest<TArgs>) -> Bool>>):Function<(args:haxe.extern.Rest<TArgs>) -> Bool>;
	@:overload(function<TResult>(method:(args:haxe.extern.Rest<Dynamic>) -> TResult, args:haxe.extern.Rest<Dynamic>):Collection<TResult> { })
	function invokeMap(methodName:String, args:haxe.extern.Rest<Dynamic>):Collection<Dynamic>;
	function size():Float;
	function now():Float;
	function bind(thisArg:Dynamic, partials:haxe.extern.Rest<Dynamic>):Function<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	function bindKey(key:String, partials:haxe.extern.Rest<Dynamic>):Function<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	function defer(args:haxe.extern.Rest<Dynamic>):Primitive<Float>;
	function delay(wait:Float, args:haxe.extern.Rest<Dynamic>):Primitive<Float>;
	function wrap<TArgs, TResult>(wrapper:(value:Array<T>, args:haxe.extern.Rest<TArgs>) -> TResult):Function<(args:haxe.extern.Rest<TArgs>) -> TResult>;
	function clone():Array<T>;
	function cloneDeep():Array<T>;
	@:overload(function():Array<T> { })
	function cloneDeepWith(customizer:CloneDeepWithCustomizer<Array<T>>):Dynamic;
	@:overload(function<TResult>(customizer:CloneWithCustomizer<Array<T>, Null<TResult>>):ts.AnyOf2<Array<T>, TResult> { })
	@:overload(function():Array<T> { })
	function cloneWith<TResult>(customizer:CloneWithCustomizer<Array<T>, TResult>):TResult;
	function conformsTo(source:Array<Dynamic>):Bool;
	function eq(other:Dynamic):Bool;
	function gt(other:Dynamic):Bool;
	function gte(other:Dynamic):Bool;
	function isArguments():Bool;
	function isArray():Bool;
	function isArrayBuffer():Bool;
	function isArrayLike():Bool;
	function isArrayLikeObject():Bool;
	function isBoolean():Bool;
	function isBuffer():Bool;
	function isDate():Bool;
	function isElement():Bool;
	function isEmpty():Bool;
	function isEqual(other:Dynamic):Bool;
	function isEqualWith(other:Dynamic, ?customizer:IsEqualCustomizer):Bool;
	function isError():Bool;
	function isFinite():Bool;
	function isFunction():Bool;
	function isInteger():Bool;
	function isLength():Bool;
	function isMap():Bool;
	function isMatch(source:Dynamic):Bool;
	function isMatchWith(source:Dynamic, customizer:IsMatchWithCustomizer):Bool;
	function isNaN():Bool;
	function isNative():Bool;
	function isNil():Bool;
	function isNull():Bool;
	function isNumber():Bool;
	function isObject():Bool;
	function isObjectLike():Bool;
	function isPlainObject():Bool;
	function isRegExp():Bool;
	function isSafeInteger():Bool;
	function isSet():Bool;
	function isString():Bool;
	function isSymbol():Bool;
	function isTypedArray():Bool;
	function isUndefined():Bool;
	function isWeakMap():Bool;
	function isWeakSet():Bool;
	function lt(other:Dynamic):Bool;
	function lte(other:Dynamic):Bool;
	function toFinite():Float;
	function toInteger():Float;
	function toLength():Float;
	function toNumber():Float;
	function toPlainObject():Object<Dynamic>;
	function toSafeInteger():Float;
	function add(addend:Float):Float;
	function ceil(?precision:Float):Float;
	function divide(divisor:Float):Float;
	function floor(?precision:Float):Float;
	function mean():Float;
	function multiply(multiplicand:Float):Float;
	function round(?precision:Float):Float;
	function subtract(subtrahend:Float):Float;
	function sum():Float;
	@:overload(function(upper:Float):Float { })
	function clamp(lower:Float, upper:Float):Float;
	function inRange(start:Float, ?end:Float):Bool;
	@:overload(function(max:Float, ?floating:Bool):Float { })
	function random(?floating:Bool):Float;
	function entries():Collection<ts.Tuple2<String, Dynamic>>;
	function entriesIn():Collection<ts.Tuple2<String, Dynamic>>;
	function findKey(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ObjectIterator<Array<T>, Any>, { }>):Null<String>;
	function findLastKey(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ObjectIterator<Array<T>, Any>, { }>):Null<String>;
	function forIn(?iteratee:ObjectIterator<Array<T>, Dynamic>):Collection<T>;
	function forInRight(?iteratee:ObjectIterator<Array<T>, Dynamic>):Collection<T>;
	function forOwn(?iteratee:ObjectIterator<Array<T>, Dynamic>):Collection<T>;
	function forOwnRight(?iteratee:ObjectIterator<Array<T>, Dynamic>):Collection<T>;
	function functions():Collection<String>;
	function functionsIn():Collection<String>;
	function has(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>):Bool;
	function hasIn(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>):Bool;
	function invert():Object<Dictionary<String>>;
	function invoke(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, args:haxe.extern.Rest<Dynamic>):Dynamic;
	function keys():Collection<String>;
	function keysIn():Collection<String>;
	function result<TResult>(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, ?defaultValue:ts.AnyOf2<(args:haxe.extern.Rest<Dynamic>) -> TResult, TResult>):TResult;
	@:overload(function<TResult>(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, value:Dynamic):ImpChain<TResult> { })
	function set(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, value:Dynamic):Collection<T>;
	@:overload(function<TResult>(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, value:Dynamic, ?customizer:SetWithCustomizer<Array<T>>):ImpChain<TResult> { })
	function setWith(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, value:Dynamic, ?customizer:SetWithCustomizer<Array<T>>):Collection<T>;
	function toPairs():Collection<ts.Tuple2<String, T>>;
	function toPairsIn():Collection<ts.Tuple2<String, T>>;
	function unset(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>):Primitive<Bool>;
	function update(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, updater:(value:Dynamic) -> Dynamic):Object<Dynamic>;
	function commit():Collection<T>;
	function plant(value:Any):Collection<T>;
	function reverse():Collection<T>;
	function toJSON():Array<T>;
	function value():Array<T>;
	function valueOf():Array<T>;
	function tap(interceptor:(value:Array<T>) -> Void):Collection<T>;
	function thru<TResult>(interceptor:(value:Array<T>) -> TResult):ImpChain<TResult>;
	function camelCase():String;
	function capitalize():String;
	function deburr():String;
	function endsWith(?target:String, ?position:Float):Bool;
	function escape():String;
	function escapeRegExp():String;
	function kebabCase():String;
	function lowerCase():String;
	function lowerFirst():String;
	function pad(?length:Float, ?chars:String):String;
	function padEnd(?length:Float, ?chars:String):String;
	function padStart(?length:Float, ?chars:String):String;
	function parseInt(?radix:Float):Float;
	function repeat(?n:Float):String;
	@:overload(function(replacement:ts.AnyOf2<String, ReplaceFunction>):String { })
	function replace(pattern:ts.AnyOf2<String, js.lib.RegExp>, replacement:ts.AnyOf2<String, ReplaceFunction>):String;
	function snakeCase():String;
	function split(?separator:ts.AnyOf2<String, js.lib.RegExp>, ?limit:Float):Collection<String>;
	function startCase():String;
	function startsWith(?target:String, ?position:Float):Bool;
	function template(?options:TemplateOptions):TemplateExecutor;
	function toLower():String;
	function toUpper():String;
	function trim(?chars:String):String;
	function trimEnd(?chars:String):String;
	function trimStart(?chars:String):String;
	function truncate(?options:TruncateOptions):String;
	function unescape():String;
	function upperCase():String;
	function upperFirst():String;
	function words(?pattern:ts.AnyOf2<String, js.lib.RegExp>):Array<String>;
	function attempt<TResult>(args:haxe.extern.Rest<Dynamic>):ts.AnyOf2<js.lib.Error, TResult>;
	function bindAll(methodNames:haxe.extern.Rest<Many<String>>):Collection<T>;
	function conforms():Function<(value:Array<Dynamic>) -> Bool>;
	function constant():Function<() -> Array<T>>;
	@:overload(function<TDefault>(defaultValue:TDefault):ts.AnyOf2<Array<T>, TDefault> { })
	function defaultTo(defaultValue:Array<T>):Array<T>;
	function identity():Array<T>;
	function matches<V>():Function<(value:V) -> Bool>;
	@:overload(function<SrcValue, Value>(srcValue:SrcValue):Function<(value:Value) -> Bool> { })
	function matchesProperty<SrcValue>(srcValue:SrcValue):Function<(value:Dynamic) -> Bool>;
	function method(args:haxe.extern.Rest<Dynamic>):Function<(object:Dynamic) -> Dynamic>;
	function methodOf(args:haxe.extern.Rest<Dynamic>):LoDashImplicitWrapper<(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>) -> Dynamic>;
	@:overload(function(?options:MixinOptions):LoDashImplicitWrapper<LoDashStatic> { })
	function mixin(source:Dictionary<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>, ?options:MixinOptions):Collection<T>;
	function noConflict():LoDashStatic;
	function noop(args:haxe.extern.Rest<Dynamic>):Void;
	function nthArg():Function<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	function property<TObj, TResult>():Function<(obj:TObj) -> TResult>;
	function propertyOf():LoDashImplicitWrapper<(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>) -> Dynamic>;
	function range(?end:Float, ?step:Float):Collection<Float>;
	function rangeRight(?end:Float, ?step:Float):Collection<Float>;
	function runInContext():LoDashStatic;
	function stubArray():Array<Dynamic>;
	@:overload(function():Bool { })
	function stubFalse():Bool;
	function stubObject():Dynamic;
	function stubString():String;
	@:overload(function():Bool { })
	function stubTrue():Bool;
	@:overload(function():Array<Float> { })
	function times<TResult>(iteratee:(num:Float) -> TResult):Array<TResult>;
	function toPath():Collection<String>;
	function uniqueId():String;
};