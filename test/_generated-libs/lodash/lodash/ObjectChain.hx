package lodash;

typedef ObjectChain<T> = {
	function concat(values:haxe.extern.Rest<Many<T>>):CollectionChain<T>;
	function countBy(?iteratee:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:Dynamic) -> Any, { }>):ObjectChain<Dictionary<Float>>;
	dynamic function each(?iteratee:ObjectIterator<T, Dynamic>):ObjectChain<T>;
	dynamic function eachRight(?iteratee:ObjectIterator<T, Dynamic>):ObjectChain<T>;
	function every(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ObjectIterator<T, Bool>, { }>):PrimitiveChain<Bool>;
	@:overload(function(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ObjectIterator<T, Bool>, { }>):CollectionChain<Dynamic> { })
	function filter<S>(predicate:ObjectIteratorTypeGuard<T, S>):CollectionChain<S>;
	@:overload(function(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ObjectIterator<T, Bool>, { }>, ?fromIndex:Float):ExpChain<Dynamic> { })
	function find<S>(predicate:ObjectIteratorTypeGuard<T, S>, ?fromIndex:Float):ExpChain<S>;
	@:overload(function(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ObjectIterator<T, Bool>, { }>, ?fromIndex:Float):ExpChain<Dynamic> { })
	function findLast<S>(predicate:ObjectIteratorTypeGuard<T, S>, ?fromIndex:Float):ExpChain<S>;
	@:overload(function(iteratee:ts.AnyOf2<Dynamic, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>>):CollectionChain<Bool> { })
	@:overload(function():CollectionChain<Dynamic> { })
	function flatMap<TResult>(iteratee:ts.AnyOf4<String, Float, js.lib.Symbol, ObjectIterator<T, Many<TResult>>>):CollectionChain<TResult>;
	@:overload(function(iteratee:ts.AnyOf2<Dynamic, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>>):CollectionChain<Bool> { })
	@:overload(function():CollectionChain<Dynamic> { })
	function flatMapDeep<TResult>(iteratee:ts.AnyOf4<String, Float, js.lib.Symbol, ObjectIterator<T, ts.AnyOf2<ListOfRecursiveArraysOrValues<TResult>, TResult>>>):CollectionChain<TResult>;
	@:overload(function(iteratee:ts.AnyOf2<Dynamic, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>>, ?depth:Float):CollectionChain<Bool> { })
	@:overload(function(?depth:Float):CollectionChain<Dynamic> { })
	function flatMapDepth<TResult>(iteratee:ts.AnyOf4<String, Float, js.lib.Symbol, ObjectIterator<T, ts.AnyOf2<ListOfRecursiveArraysOrValues<TResult>, TResult>>>, ?depth:Float):CollectionChain<TResult>;
	function forEach(?iteratee:ObjectIterator<T, Dynamic>):ObjectChain<T>;
	function forEachRight(?iteratee:ObjectIterator<T, Dynamic>):ObjectChain<T>;
	function groupBy(?iteratee:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:Dynamic) -> Any, { }>):ObjectChain<Dictionary<Array<Dynamic>>>;
	function includes(target:Dynamic, ?fromIndex:Float):PrimitiveChain<Bool>;
	function keyBy(?iteratee:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:Dynamic) -> ts.AnyOf3<String, Float, js.lib.Symbol>, { }>):ObjectChain<Dictionary<Dynamic>>;
	@:overload(function<TResult>(iteratee:ObjectIterator<T, TResult>):CollectionChain<TResult> { })
	@:overload(function(iteratee:ts.AnyOf3<String, Float, js.lib.Symbol>):CollectionChain<Dynamic> { })
	@:overload(function(iteratee:ts.AnyOf2<Dynamic, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>>):CollectionChain<Bool> { })
	@:overload(function():CollectionChain<Dynamic> { })
	function map<K>(key:K):CollectionChain<Dynamic>;
	function orderBy(?iteratees:Many<ObjectIterator<T, Any>>, ?orders:Many<ts.AnyOf2<Bool, String>>):CollectionChain<Dynamic>;
	function partition(callback:ValueIteratee<Dynamic>):LoDashExplicitWrapper<ts.Tuple2<Array<Dynamic>, Array<Dynamic>>>;
	@:overload(function(callback:MemoObjectIterator<Dynamic, Dynamic, T>):ExpChain<Dynamic> { })
	function reduce<TResult>(callback:MemoObjectIterator<Dynamic, TResult, T>, accumulator:TResult):ExpChain<TResult>;
	@:overload(function(callback:MemoObjectIterator<Dynamic, Dynamic, T>):ExpChain<Dynamic> { })
	function reduceRight<TResult>(callback:MemoObjectIterator<Dynamic, TResult, T>, accumulator:TResult):ExpChain<TResult>;
	function reject(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ObjectIterator<T, Bool>, { }>):CollectionChain<Dynamic>;
	function sample():ExpChain<Dynamic>;
	function sampleSize(?n:Float):CollectionChain<Dynamic>;
	function shuffle():CollectionChain<Dynamic>;
	function some(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ObjectIterator<T, Bool>, { }>):PrimitiveChain<Bool>;
	function sortBy(iteratees:haxe.extern.Rest<Many<ObjectIteratee<T>>>):CollectionChain<Dynamic>;
	function castArray():CollectionChain<T>;
	function toArray():CollectionChain<Dynamic>;
	@:overload(function<TSource1, TSource2>(source1:TSource1, source2:TSource2):ObjectChain<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3>(source1:TSource1, source2:TSource2, source3:TSource3):ObjectChain<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3, TSource4>(source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4):ObjectChain<Dynamic> { })
	@:overload(function():ObjectChain<T> { })
	@:overload(function(otherArgs:haxe.extern.Rest<Dynamic>):ObjectChain<Dynamic> { })
	function assign<TSource>(source:TSource):ObjectChain<Dynamic>;
	@:overload(function<TSource1, TSource2>(source1:TSource1, source2:TSource2):ObjectChain<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3>(source1:TSource1, source2:TSource2, source3:TSource3):ObjectChain<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3, TSource4>(source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4):ObjectChain<Dynamic> { })
	@:overload(function():ObjectChain<T> { })
	@:overload(function(otherArgs:haxe.extern.Rest<Dynamic>):ObjectChain<Dynamic> { })
	function assignIn<TSource>(source:TSource):ObjectChain<Dynamic>;
	@:overload(function<TSource1, TSource2>(source1:TSource1, source2:TSource2, customizer:AssignCustomizer):ObjectChain<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3>(source1:TSource1, source2:TSource2, source3:TSource3, customizer:AssignCustomizer):ObjectChain<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3, TSource4>(source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4, customizer:AssignCustomizer):ObjectChain<Dynamic> { })
	@:overload(function():ObjectChain<T> { })
	@:overload(function(otherArgs:haxe.extern.Rest<Dynamic>):ObjectChain<Dynamic> { })
	function assignInWith<TSource>(source:TSource, customizer:AssignCustomizer):ObjectChain<Dynamic>;
	@:overload(function<TSource1, TSource2>(source1:TSource1, source2:TSource2, customizer:AssignCustomizer):ObjectChain<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3>(source1:TSource1, source2:TSource2, source3:TSource3, customizer:AssignCustomizer):ObjectChain<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3, TSource4>(source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4, customizer:AssignCustomizer):ObjectChain<Dynamic> { })
	@:overload(function():ObjectChain<T> { })
	@:overload(function(otherArgs:haxe.extern.Rest<Dynamic>):ObjectChain<Dynamic> { })
	function assignWith<TSource>(source:TSource, customizer:AssignCustomizer):ObjectChain<Dynamic>;
	function at(props:haxe.extern.Rest<Many<Dynamic>>):CollectionChain<Dynamic>;
	function create<U>(?properties:U):ObjectChain<Dynamic>;
	@:overload(function<TSource1, TSource2>(source1:TSource1, source2:TSource2):ObjectChain<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3>(source1:TSource1, source2:TSource2, source3:TSource3):ObjectChain<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3, TSource4>(source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4):ObjectChain<Dynamic> { })
	@:overload(function():ObjectChain<T> { })
	@:overload(function(sources:haxe.extern.Rest<Dynamic>):ObjectChain<Dynamic> { })
	function defaults<TSource>(source:TSource):ObjectChain<Dynamic>;
	function defaultsDeep(sources:haxe.extern.Rest<Dynamic>):ObjectChain<Dynamic>;
	function entries():CollectionChain<ts.Tuple2<String, Dynamic>>;
	function entriesIn():CollectionChain<ts.Tuple2<String, Dynamic>>;
	@:overload(function<TSource1, TSource2>(source1:TSource1, source2:TSource2):ObjectChain<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3>(source1:TSource1, source2:TSource2, source3:TSource3):ObjectChain<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3, TSource4>(source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4):ObjectChain<Dynamic> { })
	@:overload(function():ObjectChain<T> { })
	@:overload(function(otherArgs:haxe.extern.Rest<Dynamic>):ObjectChain<Dynamic> { })
	function extend<TSource>(source:TSource):ObjectChain<Dynamic>;
	@:overload(function<TSource1, TSource2>(source1:TSource1, source2:TSource2, customizer:AssignCustomizer):ObjectChain<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3>(source1:TSource1, source2:TSource2, source3:TSource3, customizer:AssignCustomizer):ObjectChain<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3, TSource4>(source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4, customizer:AssignCustomizer):ObjectChain<Dynamic> { })
	@:overload(function():ObjectChain<T> { })
	@:overload(function(otherArgs:haxe.extern.Rest<Dynamic>):ObjectChain<Dynamic> { })
	function extendWith<TSource>(source:TSource, customizer:AssignCustomizer):ObjectChain<Dynamic>;
	@:overload(function<TKey>(path:ts.AnyOf2<ts.Tuple1<TKey>, TKey>, defaultValue:Array<Any>):Dynamic { })
	@:overload(function<TKey, TDefault>(path:ts.AnyOf2<ts.Tuple1<TKey>, TKey>, defaultValue:TDefault):ts.AnyOf2<ExpChain<TDefault>, ExpChain<{ }>> { })
	@:overload(function<TKey1, TKey2>(path:ts.Tuple2<TKey1, TKey2>):ExpChain<Dynamic> { })
	@:overload(function<TKey1, TKey2>(path:ts.Tuple2<TKey1, TKey2>, defaultValue:Array<Any>):Dynamic { })
	@:overload(function<TKey1, TKey2, TDefault>(path:ts.Tuple2<TKey1, TKey2>, defaultValue:TDefault):ts.AnyOf2<ExpChain<TDefault>, ExpChain<{ }>> { })
	@:overload(function<TKey1, TKey2, TKey3>(path:ts.Tuple3<TKey1, TKey2, TKey3>):ExpChain<Dynamic> { })
	@:overload(function<TKey1, TKey2, TKey3>(path:ts.Tuple3<TKey1, TKey2, TKey3>, defaultValue:Array<Any>):Dynamic { })
	@:overload(function<TKey1, TKey2, TKey3, TDefault>(path:ts.Tuple3<TKey1, TKey2, TKey3>, defaultValue:TDefault):ts.AnyOf2<ExpChain<TDefault>, ExpChain<{ }>> { })
	@:overload(function<TKey1, TKey2, TKey3, TKey4>(path:ts.Tuple4<TKey1, TKey2, TKey3, TKey4>):ExpChain<Dynamic> { })
	@:overload(function<TKey1, TKey2, TKey3, TKey4>(path:ts.Tuple4<TKey1, TKey2, TKey3, TKey4>, defaultValue:Array<Any>):Dynamic { })
	@:overload(function<TKey1, TKey2, TKey3, TKey4, TDefault>(path:ts.Tuple4<TKey1, TKey2, TKey3, TKey4>, defaultValue:TDefault):ts.AnyOf2<ExpChain<TDefault>, ExpChain<{ }>> { })
	@:overload(function(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, ?defaultValue:Dynamic):LoDashExplicitWrapper<Dynamic> { })
	function get<TKey>(path:ts.AnyOf2<ts.Tuple1<TKey>, TKey>):ExpChain<Dynamic>;
	function invertBy(?iteratee:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:Dynamic) -> Any, { }>):ObjectChain<Dictionary<Array<String>>>;
	function mapKeys(?iteratee:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ObjectIterator<T, Any>, { }>):ObjectChain<Dictionary<Dynamic>>;
	@:overload(function<TResult>(callback:ObjectIterator<Dictionary<Dynamic>, TResult>):ObjectChain<Dictionary<TResult>> { })
	@:overload(function(iteratee:Dynamic):ObjectChain<Dynamic> { })
	@:overload(function<TKey>(iteratee:TKey):ObjectChain<Dictionary<Dynamic>> { })
	@:overload(function(iteratee:String):ObjectChain<Dynamic> { })
	@:overload(function():ObjectChain<T> { })
	function mapValues<TResult>(callback:ObjectIterator<T, TResult>):ObjectChain<Dynamic>;
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
	@:overload(function(paths:haxe.extern.Rest<Many<ts.AnyOf3<String, Float, js.lib.Symbol>>>):ObjectChain<T> { })
	function omit<K>(paths:haxe.extern.Rest<Many<K>>):ObjectChain<{ }>;
	function omitBy(predicate:ValueKeyIteratee<Dynamic>):ObjectChain<T>;
	@:overload(function(props:haxe.extern.Rest<Many<ts.AnyOf3<String, Float, js.lib.Symbol>>>):ObjectChain<T> { })
	function pick<U>(props:haxe.extern.Rest<Many<U>>):ObjectChain<{ }>;
	@:overload(function(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:Dynamic, key:String) -> Any, { }>):ObjectChain<T> { })
	function pickBy<S>(predicate:ValueKeyIterateeTypeGuard<Dynamic, S>):ObjectChain<Dynamic>;
	@:overload(function():ExpChain<Dynamic> { })
	function transform<TResult>(iteratee:MemoVoidDictionaryIterator<Dynamic, TResult>, ?accumulator:TResult):ExpChain<TResult>;
	@:overload(function<TResult>(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, updater:(oldValue:Dynamic) -> Dynamic, ?customizer:SetWithCustomizer<T>):ObjectChain<TResult> { })
	function updateWith(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, updater:(oldValue:Dynamic) -> Dynamic, ?customizer:SetWithCustomizer<T>):ObjectChain<T>;
	function values():CollectionChain<Dynamic>;
	function valuesIn():CollectionChain<Dynamic>;
	function iteratee():FunctionChain<(o:T) -> Bool>;
	@:overload(function<TResult>(method:(args:haxe.extern.Rest<Dynamic>) -> TResult, args:haxe.extern.Rest<Dynamic>):CollectionChain<TResult> { })
	function invokeMap(methodName:String, args:haxe.extern.Rest<Dynamic>):CollectionChain<Dynamic>;
	function size():PrimitiveChain<Float>;
	function now():PrimitiveChain<Float>;
	function bind(thisArg:Dynamic, partials:haxe.extern.Rest<Dynamic>):FunctionChain<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	function bindKey(key:String, partials:haxe.extern.Rest<Dynamic>):FunctionChain<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	function defer(args:haxe.extern.Rest<Dynamic>):PrimitiveChain<Float>;
	function delay(wait:Float, args:haxe.extern.Rest<Dynamic>):PrimitiveChain<Float>;
	function wrap<TArgs, TResult>(wrapper:(value:T, args:haxe.extern.Rest<TArgs>) -> TResult):FunctionChain<(args:haxe.extern.Rest<TArgs>) -> TResult>;
	function clone():ObjectChain<T>;
	function cloneDeep():ObjectChain<T>;
	@:overload(function():ObjectChain<T> { })
	function cloneDeepWith(customizer:CloneDeepWithCustomizer<T>):LoDashExplicitWrapper<Dynamic>;
	@:overload(function<TResult>(customizer:CloneWithCustomizer<T, Null<TResult>>):ts.AnyOf2<ExpChain<T>, ExpChain<TResult>> { })
	@:overload(function():ObjectChain<T> { })
	function cloneWith<TResult>(customizer:CloneWithCustomizer<T, TResult>):ExpChain<TResult>;
	function conformsTo(source:{ }):PrimitiveChain<Bool>;
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
	function findKey(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ObjectIterator<T, Any>, { }>):StringNullableChain;
	function findLastKey(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ObjectIterator<T, Any>, { }>):StringNullableChain;
	function forIn(?iteratee:ObjectIterator<T, Dynamic>):ObjectChain<T>;
	function forInRight(?iteratee:ObjectIterator<T, Dynamic>):ObjectChain<T>;
	function forOwn(?iteratee:ObjectIterator<T, Dynamic>):ObjectChain<T>;
	function forOwnRight(?iteratee:ObjectIterator<T, Dynamic>):ObjectChain<T>;
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
	function set(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, value:Dynamic):ObjectChain<T>;
	@:overload(function<TResult>(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, value:Dynamic, ?customizer:SetWithCustomizer<T>):ExpChain<TResult> { })
	function setWith(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, value:Dynamic, ?customizer:SetWithCustomizer<T>):ObjectChain<T>;
	function toPairs():CollectionChain<ts.Tuple2<String, Dynamic>>;
	function toPairsIn():CollectionChain<ts.Tuple2<String, Dynamic>>;
	function unset(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>):PrimitiveChain<Bool>;
	function update(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, updater:(value:Dynamic) -> Dynamic):ObjectChain<Dynamic>;
	function chain():ObjectChain<T>;
	function commit():ObjectChain<T>;
	function plant(value:Any):ObjectChain<T>;
	function reverse():ObjectChain<T>;
	function toJSON():T;
	function value():T;
	function valueOf():T;
	function tap(interceptor:(value:T) -> Void):ObjectChain<T>;
	function thru<TResult>(interceptor:(value:T) -> TResult):ExpChain<TResult>;
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
	function bindAll(methodNames:haxe.extern.Rest<Many<String>>):ObjectChain<T>;
	function conforms():FunctionChain<(value:{ }) -> Bool>;
	function constant():FunctionChain<() -> T>;
	@:overload(function<TDefault>(defaultValue:TDefault):ExpChain<Dynamic> { })
	function defaultTo(defaultValue:T):ExpChain<T>;
	function identity():ObjectChain<T>;
	function matches<V>():FunctionChain<(value:V) -> Bool>;
	@:overload(function<SrcValue, Value>(srcValue:SrcValue):FunctionChain<(value:Value) -> Bool> { })
	function matchesProperty<SrcValue>(srcValue:SrcValue):FunctionChain<(value:Dynamic) -> Bool>;
	function method(args:haxe.extern.Rest<Dynamic>):FunctionChain<(object:Dynamic) -> Dynamic>;
	function methodOf(args:haxe.extern.Rest<Dynamic>):LoDashExplicitWrapper<(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>) -> Dynamic>;
	@:overload(function(?options:MixinOptions):LoDashExplicitWrapper<LoDashStatic> { })
	function mixin(source:Dictionary<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>, ?options:MixinOptions):ObjectChain<T>;
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