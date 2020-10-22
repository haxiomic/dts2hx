package lowdb;

typedef LowdbSync<SchemaT> = {
	var _ : lodash.LoDashStatic;
	dynamic function read():LowdbSync<SchemaT>;
	function write<T>(?returnValue:T):Dynamic;
	dynamic function getState():SchemaT;
	dynamic function setState(state:SchemaT):LowdbSync<SchemaT>;
	function concat(values:haxe.extern.Rest<lodash.Many<SchemaT>>):lodash.CollectionChain<SchemaT>;
	function countBy(?iteratee:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:Dynamic) -> Any, { }>):lodash.ObjectChain<lodash.Dictionary<Float>>;
	dynamic function each(?iteratee:lodash.ObjectIterator<SchemaT, Dynamic>):lodash.ObjectChain<SchemaT>;
	dynamic function eachRight(?iteratee:lodash.ObjectIterator<SchemaT, Dynamic>):lodash.ObjectChain<SchemaT>;
	function every(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, lodash.ObjectIterator<SchemaT, Bool>, { }>):lodash.PrimitiveChain<Bool>;
	@:overload(function(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, lodash.ObjectIterator<SchemaT, Bool>, { }>):lodash.CollectionChain<Dynamic> { })
	function filter<S>(predicate:lodash.ObjectIteratorTypeGuard<SchemaT, S>):lodash.CollectionChain<S>;
	@:overload(function(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, lodash.ObjectIterator<SchemaT, Bool>, { }>, ?fromIndex:Float):lodash.ExpChain<Dynamic> { })
	function find<S>(predicate:lodash.ObjectIteratorTypeGuard<SchemaT, S>, ?fromIndex:Float):lodash.ExpChain<S>;
	@:overload(function(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, lodash.ObjectIterator<SchemaT, Bool>, { }>, ?fromIndex:Float):lodash.ExpChain<Dynamic> { })
	function findLast<S>(predicate:lodash.ObjectIteratorTypeGuard<SchemaT, S>, ?fromIndex:Float):lodash.ExpChain<S>;
	@:overload(function(iteratee:ts.AnyOf2<Dynamic, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>>):lodash.CollectionChain<Bool> { })
	@:overload(function():lodash.CollectionChain<Dynamic> { })
	function flatMap<TResult>(iteratee:ts.AnyOf4<String, Float, js.lib.Symbol, lodash.ObjectIterator<SchemaT, lodash.Many<TResult>>>):lodash.CollectionChain<TResult>;
	@:overload(function(iteratee:ts.AnyOf2<Dynamic, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>>):lodash.CollectionChain<Bool> { })
	@:overload(function():lodash.CollectionChain<Dynamic> { })
	function flatMapDeep<TResult>(iteratee:ts.AnyOf4<String, Float, js.lib.Symbol, lodash.ObjectIterator<SchemaT, ts.AnyOf2<lodash.ListOfRecursiveArraysOrValues<TResult>, TResult>>>):lodash.CollectionChain<TResult>;
	@:overload(function(iteratee:ts.AnyOf2<Dynamic, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>>, ?depth:Float):lodash.CollectionChain<Bool> { })
	@:overload(function(?depth:Float):lodash.CollectionChain<Dynamic> { })
	function flatMapDepth<TResult>(iteratee:ts.AnyOf4<String, Float, js.lib.Symbol, lodash.ObjectIterator<SchemaT, ts.AnyOf2<lodash.ListOfRecursiveArraysOrValues<TResult>, TResult>>>, ?depth:Float):lodash.CollectionChain<TResult>;
	function forEach(?iteratee:lodash.ObjectIterator<SchemaT, Dynamic>):lodash.ObjectChain<SchemaT>;
	function forEachRight(?iteratee:lodash.ObjectIterator<SchemaT, Dynamic>):lodash.ObjectChain<SchemaT>;
	function groupBy(?iteratee:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:Dynamic) -> Any, { }>):lodash.ObjectChain<lodash.Dictionary<Array<Dynamic>>>;
	function includes(target:Dynamic, ?fromIndex:Float):lodash.PrimitiveChain<Bool>;
	function keyBy(?iteratee:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:Dynamic) -> ts.AnyOf3<String, Float, js.lib.Symbol>, { }>):lodash.ObjectChain<lodash.Dictionary<Dynamic>>;
	@:overload(function<TResult>(iteratee:lodash.ObjectIterator<SchemaT, TResult>):lodash.CollectionChain<TResult> { })
	@:overload(function(iteratee:ts.AnyOf3<String, Float, js.lib.Symbol>):lodash.CollectionChain<Dynamic> { })
	@:overload(function(iteratee:ts.AnyOf2<Dynamic, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>>):lodash.CollectionChain<Bool> { })
	@:overload(function():lodash.CollectionChain<Dynamic> { })
	function map<K>(key:K):lodash.CollectionChain<Dynamic>;
	function orderBy(?iteratees:ts.AnyOf2<lodash.ObjectIterator<SchemaT, Any>, haxe.ds.ReadOnlyArray<lodash.ObjectIterator<SchemaT, Any>>>, ?orders:lodash.Many<ts.AnyOf2<Bool, String>>):lodash.CollectionChain<Dynamic>;
	function partition(callback:lodash.ValueIteratee<Dynamic>):lodash.LoDashExplicitWrapper<ts.Tuple2<Array<Dynamic>, Array<Dynamic>>>;
	@:overload(function(callback:lodash.MemoObjectIterator<Dynamic, Dynamic, SchemaT>):lodash.ExpChain<Dynamic> { })
	function reduce<TResult>(callback:lodash.MemoObjectIterator<Dynamic, TResult, SchemaT>, accumulator:TResult):lodash.ExpChain<TResult>;
	@:overload(function(callback:lodash.MemoObjectIterator<Dynamic, Dynamic, SchemaT>):lodash.ExpChain<Dynamic> { })
	function reduceRight<TResult>(callback:lodash.MemoObjectIterator<Dynamic, TResult, SchemaT>, accumulator:TResult):lodash.ExpChain<TResult>;
	function reject(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, lodash.ObjectIterator<SchemaT, Bool>, { }>):lodash.CollectionChain<Dynamic>;
	function sample():lodash.ExpChain<Dynamic>;
	function sampleSize(?n:Float):lodash.CollectionChain<Dynamic>;
	function shuffle():lodash.CollectionChain<Dynamic>;
	function some(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, lodash.ObjectIterator<SchemaT, Bool>, { }>):lodash.PrimitiveChain<Bool>;
	function sortBy(iteratees:haxe.extern.Rest<lodash.Many<lodash.ObjectIteratee<SchemaT>>>):lodash.CollectionChain<Dynamic>;
	function castArray():lodash.CollectionChain<SchemaT>;
	function toArray():lodash.CollectionChain<Dynamic>;
	@:overload(function<TSource1, TSource2>(source1:TSource1, source2:TSource2):lodash.ObjectChain<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3>(source1:TSource1, source2:TSource2, source3:TSource3):lodash.ObjectChain<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3, TSource4>(source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4):lodash.ObjectChain<Dynamic> { })
	@:overload(function():lodash.ObjectChain<SchemaT> { })
	@:overload(function(otherArgs:haxe.extern.Rest<Dynamic>):lodash.ObjectChain<Dynamic> { })
	function assign<TSource>(source:TSource):lodash.ObjectChain<Dynamic>;
	@:overload(function<TSource1, TSource2>(source1:TSource1, source2:TSource2):lodash.ObjectChain<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3>(source1:TSource1, source2:TSource2, source3:TSource3):lodash.ObjectChain<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3, TSource4>(source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4):lodash.ObjectChain<Dynamic> { })
	@:overload(function():lodash.ObjectChain<SchemaT> { })
	@:overload(function(otherArgs:haxe.extern.Rest<Dynamic>):lodash.ObjectChain<Dynamic> { })
	function assignIn<TSource>(source:TSource):lodash.ObjectChain<Dynamic>;
	@:overload(function<TSource1, TSource2>(source1:TSource1, source2:TSource2, customizer:lodash.AssignCustomizer):lodash.ObjectChain<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3>(source1:TSource1, source2:TSource2, source3:TSource3, customizer:lodash.AssignCustomizer):lodash.ObjectChain<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3, TSource4>(source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4, customizer:lodash.AssignCustomizer):lodash.ObjectChain<Dynamic> { })
	@:overload(function():lodash.ObjectChain<SchemaT> { })
	@:overload(function(otherArgs:haxe.extern.Rest<Dynamic>):lodash.ObjectChain<Dynamic> { })
	function assignInWith<TSource>(source:TSource, customizer:lodash.AssignCustomizer):lodash.ObjectChain<Dynamic>;
	@:overload(function<TSource1, TSource2>(source1:TSource1, source2:TSource2, customizer:lodash.AssignCustomizer):lodash.ObjectChain<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3>(source1:TSource1, source2:TSource2, source3:TSource3, customizer:lodash.AssignCustomizer):lodash.ObjectChain<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3, TSource4>(source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4, customizer:lodash.AssignCustomizer):lodash.ObjectChain<Dynamic> { })
	@:overload(function():lodash.ObjectChain<SchemaT> { })
	@:overload(function(otherArgs:haxe.extern.Rest<Dynamic>):lodash.ObjectChain<Dynamic> { })
	function assignWith<TSource>(source:TSource, customizer:lodash.AssignCustomizer):lodash.ObjectChain<Dynamic>;
	function at(props:haxe.extern.Rest<lodash.Many<Dynamic>>):lodash.CollectionChain<Dynamic>;
	function create<U>(?properties:U):lodash.ObjectChain<Dynamic>;
	@:overload(function<TSource1, TSource2>(source1:TSource1, source2:TSource2):lodash.ObjectChain<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3>(source1:TSource1, source2:TSource2, source3:TSource3):lodash.ObjectChain<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3, TSource4>(source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4):lodash.ObjectChain<Dynamic> { })
	@:overload(function():lodash.ObjectChain<SchemaT> { })
	@:overload(function(sources:haxe.extern.Rest<Dynamic>):lodash.ObjectChain<Dynamic> { })
	function defaults<TSource>(source:TSource):lodash.ObjectChain<Dynamic>;
	function defaultsDeep(sources:haxe.extern.Rest<Dynamic>):lodash.ObjectChain<Dynamic>;
	function entries():lodash.CollectionChain<ts.Tuple2<String, Dynamic>>;
	function entriesIn():lodash.CollectionChain<ts.Tuple2<String, Dynamic>>;
	@:overload(function<TSource1, TSource2>(source1:TSource1, source2:TSource2):lodash.ObjectChain<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3>(source1:TSource1, source2:TSource2, source3:TSource3):lodash.ObjectChain<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3, TSource4>(source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4):lodash.ObjectChain<Dynamic> { })
	@:overload(function():lodash.ObjectChain<SchemaT> { })
	@:overload(function(otherArgs:haxe.extern.Rest<Dynamic>):lodash.ObjectChain<Dynamic> { })
	function extend<TSource>(source:TSource):lodash.ObjectChain<Dynamic>;
	@:overload(function<TSource1, TSource2>(source1:TSource1, source2:TSource2, customizer:lodash.AssignCustomizer):lodash.ObjectChain<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3>(source1:TSource1, source2:TSource2, source3:TSource3, customizer:lodash.AssignCustomizer):lodash.ObjectChain<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3, TSource4>(source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4, customizer:lodash.AssignCustomizer):lodash.ObjectChain<Dynamic> { })
	@:overload(function():lodash.ObjectChain<SchemaT> { })
	@:overload(function(otherArgs:haxe.extern.Rest<Dynamic>):lodash.ObjectChain<Dynamic> { })
	function extendWith<TSource>(source:TSource, customizer:lodash.AssignCustomizer):lodash.ObjectChain<Dynamic>;
	@:overload(function<TKey>(path:ts.AnyOf2<ts.Tuple1<TKey>, TKey>, defaultValue:Array<Any>):Dynamic { })
	@:overload(function<TKey, TDefault>(path:ts.AnyOf2<ts.Tuple1<TKey>, TKey>, defaultValue:TDefault):ts.AnyOf2<lodash.ExpChain<TDefault>, lodash.ExpChain<{ }>> { })
	@:overload(function<TKey1, TKey2>(path:ts.Tuple2<TKey1, TKey2>):lodash.ExpChain<Dynamic> { })
	@:overload(function<TKey1, TKey2>(path:ts.Tuple2<TKey1, TKey2>, defaultValue:Array<Any>):Dynamic { })
	@:overload(function<TKey1, TKey2, TDefault>(path:ts.Tuple2<TKey1, TKey2>, defaultValue:TDefault):ts.AnyOf2<lodash.ExpChain<TDefault>, lodash.ExpChain<{ }>> { })
	@:overload(function<TKey1, TKey2, TKey3>(path:ts.Tuple3<TKey1, TKey2, TKey3>):lodash.ExpChain<Dynamic> { })
	@:overload(function<TKey1, TKey2, TKey3>(path:ts.Tuple3<TKey1, TKey2, TKey3>, defaultValue:Array<Any>):Dynamic { })
	@:overload(function<TKey1, TKey2, TKey3, TDefault>(path:ts.Tuple3<TKey1, TKey2, TKey3>, defaultValue:TDefault):ts.AnyOf2<lodash.ExpChain<TDefault>, lodash.ExpChain<{ }>> { })
	@:overload(function<TKey1, TKey2, TKey3, TKey4>(path:ts.Tuple4<TKey1, TKey2, TKey3, TKey4>):lodash.ExpChain<Dynamic> { })
	@:overload(function<TKey1, TKey2, TKey3, TKey4>(path:ts.Tuple4<TKey1, TKey2, TKey3, TKey4>, defaultValue:Array<Any>):Dynamic { })
	@:overload(function<TKey1, TKey2, TKey3, TKey4, TDefault>(path:ts.Tuple4<TKey1, TKey2, TKey3, TKey4>, defaultValue:TDefault):ts.AnyOf2<lodash.ExpChain<TDefault>, lodash.ExpChain<{ }>> { })
	@:overload(function(path:lodash.Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, ?defaultValue:Dynamic):lodash.LoDashExplicitWrapper<Dynamic> { })
	function get<TKey>(path:ts.AnyOf2<ts.Tuple1<TKey>, TKey>):lodash.ExpChain<Dynamic>;
	function invertBy(?iteratee:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:Dynamic) -> Any, { }>):lodash.ObjectChain<lodash.Dictionary<Array<String>>>;
	function mapKeys(?iteratee:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, lodash.ObjectIterator<SchemaT, Any>, { }>):lodash.ObjectChain<lodash.Dictionary<Dynamic>>;
	@:overload(function<TResult>(callback:lodash.ObjectIterator<lodash.Dictionary<Dynamic>, TResult>):lodash.ObjectChain<lodash.Dictionary<TResult>> { })
	@:overload(function(iteratee:Dynamic):lodash.ObjectChain<Dynamic> { })
	@:overload(function<TKey>(iteratee:TKey):lodash.ObjectChain<lodash.Dictionary<Dynamic>> { })
	@:overload(function(iteratee:String):lodash.ObjectChain<Dynamic> { })
	@:overload(function():lodash.ObjectChain<SchemaT> { })
	function mapValues<TResult>(callback:lodash.ObjectIterator<SchemaT, TResult>):lodash.ObjectChain<Dynamic>;
	@:overload(function<TSource1, TSource2>(source1:TSource1, source2:TSource2):lodash.ObjectChain<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3>(source1:TSource1, source2:TSource2, source3:TSource3):lodash.ObjectChain<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3, TSource4>(source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4):lodash.ObjectChain<Dynamic> { })
	@:overload(function(otherArgs:haxe.extern.Rest<Dynamic>):lodash.ObjectChain<Dynamic> { })
	function merge<TSource>(source:TSource):lodash.ObjectChain<Dynamic>;
	@:overload(function<TSource1, TSource2>(source1:TSource1, source2:TSource2, customizer:(value:Dynamic, srcValue:Dynamic, key:String, object:Dynamic, source:Dynamic) -> Dynamic):lodash.ObjectChain<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3>(source1:TSource1, source2:TSource2, source3:TSource3, customizer:(value:Dynamic, srcValue:Dynamic, key:String, object:Dynamic, source:Dynamic) -> Dynamic):lodash.ObjectChain<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3, TSource4>(source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4, customizer:(value:Dynamic, srcValue:Dynamic, key:String, object:Dynamic, source:Dynamic) -> Dynamic):lodash.ObjectChain<Dynamic> { })
	@:overload(function(otherArgs:haxe.extern.Rest<Dynamic>):lodash.ObjectChain<Dynamic> { })
	function mergeWith<TSource>(source:TSource, customizer:(value:Dynamic, srcValue:Dynamic, key:String, object:Dynamic, source:Dynamic) -> Dynamic):lodash.ObjectChain<Dynamic>;
	@:overload(function(paths:haxe.extern.Rest<lodash.Many<ts.AnyOf3<String, Float, js.lib.Symbol>>>):lodash.ObjectChain<SchemaT> { })
	function omit<K>(paths:haxe.extern.Rest<lodash.Many<K>>):lodash.ObjectChain<{ }>;
	function omitBy(predicate:lodash.ValueKeyIteratee<Dynamic>):lodash.ObjectChain<SchemaT>;
	@:overload(function(props:haxe.extern.Rest<lodash.Many<ts.AnyOf3<String, Float, js.lib.Symbol>>>):lodash.ObjectChain<SchemaT> { })
	function pick<U>(props:haxe.extern.Rest<lodash.Many<U>>):lodash.ObjectChain<{ }>;
	@:overload(function(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:Dynamic, key:String) -> Any, { }>):lodash.ObjectChain<SchemaT> { })
	function pickBy<S>(predicate:lodash.ValueKeyIterateeTypeGuard<Dynamic, S>):lodash.ObjectChain<Dynamic>;
	@:overload(function():lodash.ExpChain<Dynamic> { })
	function transform<TResult>(iteratee:lodash.MemoVoidDictionaryIterator<Dynamic, TResult>, ?accumulator:TResult):lodash.ExpChain<TResult>;
	@:overload(function<TResult>(path:lodash.Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, updater:(oldValue:Dynamic) -> Dynamic, ?customizer:lodash.SetWithCustomizer<SchemaT>):lodash.ObjectChain<TResult> { })
	function updateWith(path:lodash.Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, updater:(oldValue:Dynamic) -> Dynamic, ?customizer:lodash.SetWithCustomizer<SchemaT>):LowdbSync<SchemaT>;
	function values():lodash.CollectionChain<Dynamic>;
	function valuesIn():lodash.CollectionChain<Dynamic>;
	function iteratee():lodash.FunctionChain<(o:SchemaT) -> Bool>;
	@:overload(function<TResult>(method:(args:haxe.extern.Rest<Dynamic>) -> TResult, args:haxe.extern.Rest<Dynamic>):lodash.CollectionChain<TResult> { })
	function invokeMap(methodName:String, args:haxe.extern.Rest<Dynamic>):lodash.CollectionChain<Dynamic>;
	function size():lodash.PrimitiveChain<Float>;
	function now():lodash.PrimitiveChain<Float>;
	function bind(thisArg:Dynamic, partials:haxe.extern.Rest<Dynamic>):lodash.FunctionChain<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	function bindKey(key:String, partials:haxe.extern.Rest<Dynamic>):lodash.FunctionChain<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	function defer(args:haxe.extern.Rest<Dynamic>):lodash.PrimitiveChain<Float>;
	function delay(wait:Float, args:haxe.extern.Rest<Dynamic>):lodash.PrimitiveChain<Float>;
	function wrap<TArgs, TResult>(wrapper:(value:SchemaT, args:haxe.extern.Rest<TArgs>) -> TResult):lodash.FunctionChain<(args:haxe.extern.Rest<TArgs>) -> TResult>;
	function clone():LowdbSync<SchemaT>;
	function cloneDeep():LowdbSync<SchemaT>;
	@:overload(function():LowdbSync<SchemaT> { })
	function cloneDeepWith(customizer:lodash.CloneDeepWithCustomizer<SchemaT>):lodash.LoDashExplicitWrapper<Dynamic>;
	@:overload(function<TResult>(customizer:lodash.CloneWithCustomizer<SchemaT, Null<TResult>>):ts.AnyOf2<lodash.ExpChain<SchemaT>, lodash.ExpChain<TResult>> { })
	@:overload(function():LowdbSync<SchemaT> { })
	function cloneWith<TResult>(customizer:lodash.CloneWithCustomizer<SchemaT, TResult>):lodash.ExpChain<TResult>;
	function conformsTo(source:{ }):lodash.PrimitiveChain<Bool>;
	function eq(other:Dynamic):lodash.PrimitiveChain<Bool>;
	function gt(other:Dynamic):lodash.PrimitiveChain<Bool>;
	function gte(other:Dynamic):lodash.PrimitiveChain<Bool>;
	function isArguments():lodash.PrimitiveChain<Bool>;
	function isArray():lodash.PrimitiveChain<Bool>;
	function isArrayBuffer():lodash.PrimitiveChain<Bool>;
	function isArrayLike():lodash.PrimitiveChain<Bool>;
	function isArrayLikeObject():lodash.PrimitiveChain<Bool>;
	function isBoolean():lodash.PrimitiveChain<Bool>;
	function isBuffer():lodash.PrimitiveChain<Bool>;
	function isDate():lodash.PrimitiveChain<Bool>;
	function isElement():lodash.PrimitiveChain<Bool>;
	function isEmpty():lodash.PrimitiveChain<Bool>;
	function isEqual(other:Dynamic):lodash.PrimitiveChain<Bool>;
	function isEqualWith(other:Dynamic, ?customizer:lodash.IsEqualCustomizer):lodash.PrimitiveChain<Bool>;
	function isError():lodash.PrimitiveChain<Bool>;
	function isFinite():lodash.PrimitiveChain<Bool>;
	function isFunction():lodash.PrimitiveChain<Bool>;
	function isInteger():lodash.PrimitiveChain<Bool>;
	function isLength():lodash.PrimitiveChain<Bool>;
	function isMap():lodash.PrimitiveChain<Bool>;
	function isMatch(source:Dynamic):lodash.PrimitiveChain<Bool>;
	function isMatchWith(source:Dynamic, customizer:lodash.IsMatchWithCustomizer):lodash.PrimitiveChain<Bool>;
	function isNaN():lodash.PrimitiveChain<Bool>;
	function isNative():lodash.PrimitiveChain<Bool>;
	function isNil():lodash.PrimitiveChain<Bool>;
	function isNull():lodash.PrimitiveChain<Bool>;
	function isNumber():lodash.PrimitiveChain<Bool>;
	function isObject():lodash.PrimitiveChain<Bool>;
	function isObjectLike():lodash.PrimitiveChain<Bool>;
	function isPlainObject():lodash.PrimitiveChain<Bool>;
	function isRegExp():lodash.PrimitiveChain<Bool>;
	function isSafeInteger():lodash.PrimitiveChain<Bool>;
	function isSet():lodash.PrimitiveChain<Bool>;
	function isString():lodash.PrimitiveChain<Bool>;
	function isSymbol():lodash.PrimitiveChain<Bool>;
	function isTypedArray():lodash.PrimitiveChain<Bool>;
	function isUndefined():lodash.PrimitiveChain<Bool>;
	function isWeakMap():lodash.PrimitiveChain<Bool>;
	function isWeakSet():lodash.PrimitiveChain<Bool>;
	function lt(other:Dynamic):lodash.PrimitiveChain<Bool>;
	function lte(other:Dynamic):lodash.PrimitiveChain<Bool>;
	function toFinite():lodash.PrimitiveChain<Float>;
	function toInteger():lodash.PrimitiveChain<Float>;
	function toLength():lodash.PrimitiveChain<Float>;
	function toNumber():lodash.PrimitiveChain<Float>;
	function toPlainObject():lodash.ObjectChain<Dynamic>;
	function toSafeInteger():lodash.PrimitiveChain<Float>;
	function add(addend:Float):lodash.PrimitiveChain<Float>;
	function ceil(?precision:Float):lodash.PrimitiveChain<Float>;
	function divide(divisor:Float):lodash.PrimitiveChain<Float>;
	function floor(?precision:Float):lodash.PrimitiveChain<Float>;
	function mean():lodash.PrimitiveChain<Float>;
	function multiply(multiplicand:Float):lodash.PrimitiveChain<Float>;
	function round(?precision:Float):lodash.PrimitiveChain<Float>;
	function subtract(subtrahend:Float):lodash.PrimitiveChain<Float>;
	function sum():lodash.PrimitiveChain<Float>;
	@:overload(function(upper:Float):lodash.PrimitiveChain<Float> { })
	function clamp(lower:Float, upper:Float):lodash.PrimitiveChain<Float>;
	function inRange(start:Float, ?end:Float):lodash.PrimitiveChain<Bool>;
	@:overload(function(max:Float, ?floating:Bool):lodash.PrimitiveChain<Float> { })
	function random(?floating:Bool):lodash.PrimitiveChain<Float>;
	function findKey(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, lodash.ObjectIterator<SchemaT, Any>, { }>):lodash.StringNullableChain;
	function findLastKey(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, lodash.ObjectIterator<SchemaT, Any>, { }>):lodash.StringNullableChain;
	function forIn(?iteratee:lodash.ObjectIterator<SchemaT, Dynamic>):LowdbSync<SchemaT>;
	function forInRight(?iteratee:lodash.ObjectIterator<SchemaT, Dynamic>):LowdbSync<SchemaT>;
	function forOwn(?iteratee:lodash.ObjectIterator<SchemaT, Dynamic>):LowdbSync<SchemaT>;
	function forOwnRight(?iteratee:lodash.ObjectIterator<SchemaT, Dynamic>):LowdbSync<SchemaT>;
	function functions():lodash.CollectionChain<String>;
	function functionsIn():lodash.CollectionChain<String>;
	function has(path:lodash.Many<ts.AnyOf3<String, Float, js.lib.Symbol>>):lodash.PrimitiveChain<Bool>;
	function hasIn(path:lodash.Many<ts.AnyOf3<String, Float, js.lib.Symbol>>):lodash.PrimitiveChain<Bool>;
	function invert():lodash.ObjectChain<lodash.Dictionary<String>>;
	function invoke(path:lodash.Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, args:haxe.extern.Rest<Dynamic>):lodash.LoDashExplicitWrapper<Dynamic>;
	function keys():lodash.CollectionChain<String>;
	function keysIn():lodash.CollectionChain<String>;
	function result<TResult>(path:lodash.Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, ?defaultValue:ts.AnyOf2<(args:haxe.extern.Rest<Dynamic>) -> TResult, TResult>):lodash.ExpChain<TResult>;
	@:overload(function<TResult>(path:lodash.Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, value:Dynamic):lodash.ExpChain<TResult> { })
	function set(path:lodash.Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, value:Dynamic):LowdbSync<SchemaT>;
	@:overload(function<TResult>(path:lodash.Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, value:Dynamic, ?customizer:lodash.SetWithCustomizer<SchemaT>):lodash.ExpChain<TResult> { })
	function setWith(path:lodash.Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, value:Dynamic, ?customizer:lodash.SetWithCustomizer<SchemaT>):LowdbSync<SchemaT>;
	function toPairs():lodash.CollectionChain<ts.Tuple2<String, Dynamic>>;
	function toPairsIn():lodash.CollectionChain<ts.Tuple2<String, Dynamic>>;
	function unset(path:lodash.Many<ts.AnyOf3<String, Float, js.lib.Symbol>>):lodash.PrimitiveChain<Bool>;
	function update(path:lodash.Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, updater:(value:Dynamic) -> Dynamic):lodash.ObjectChain<Dynamic>;
	function chain():LowdbSync<SchemaT>;
	function commit():LowdbSync<SchemaT>;
	function plant(value:Any):LowdbSync<SchemaT>;
	function reverse():LowdbSync<SchemaT>;
	function toJSON():SchemaT;
	function value():SchemaT;
	function valueOf():SchemaT;
	function tap(interceptor:(value:SchemaT) -> Void):LowdbSync<SchemaT>;
	function thru<TResult>(interceptor:(value:SchemaT) -> TResult):lodash.ExpChain<TResult>;
	function camelCase():lodash.StringChain;
	function capitalize():lodash.StringChain;
	function deburr():lodash.StringChain;
	function endsWith(?target:String, ?position:Float):lodash.PrimitiveChain<Bool>;
	function escape():lodash.StringChain;
	function escapeRegExp():lodash.StringChain;
	function kebabCase():lodash.StringChain;
	function lowerCase():lodash.StringChain;
	function lowerFirst():lodash.StringChain;
	function pad(?length:Float, ?chars:String):lodash.StringChain;
	function padEnd(?length:Float, ?chars:String):lodash.StringChain;
	function padStart(?length:Float, ?chars:String):lodash.StringChain;
	function parseInt(?radix:Float):lodash.PrimitiveChain<Float>;
	function repeat(?n:Float):lodash.StringChain;
	@:overload(function(replacement:ts.AnyOf2<String, lodash.ReplaceFunction>):lodash.StringChain { })
	function replace(pattern:ts.AnyOf2<String, js.lib.RegExp>, replacement:ts.AnyOf2<String, lodash.ReplaceFunction>):lodash.StringChain;
	function snakeCase():lodash.StringChain;
	function split(?separator:ts.AnyOf2<String, js.lib.RegExp>, ?limit:Float):lodash.CollectionChain<String>;
	function startCase():lodash.StringChain;
	function startsWith(?target:String, ?position:Float):lodash.PrimitiveChain<Bool>;
	function template(?options:lodash.TemplateOptions):lodash.FunctionChain<lodash.TemplateExecutor>;
	function toLower():lodash.StringChain;
	function toUpper():lodash.StringChain;
	function trim(?chars:String):lodash.StringChain;
	function trimEnd(?chars:String):lodash.StringChain;
	function trimStart(?chars:String):lodash.StringChain;
	function truncate(?options:lodash.TruncateOptions):lodash.StringChain;
	function unescape():lodash.StringChain;
	function upperCase():lodash.StringChain;
	function upperFirst():lodash.StringChain;
	function words(?pattern:ts.AnyOf2<String, js.lib.RegExp>):lodash.CollectionChain<String>;
	function attempt<TResult>(args:haxe.extern.Rest<Dynamic>):ts.AnyOf2<lodash.ObjectChain<js.lib.Error>, lodash.ExpChain<TResult>>;
	function bindAll(methodNames:haxe.extern.Rest<lodash.Many<String>>):LowdbSync<SchemaT>;
	function conforms():lodash.FunctionChain<(value:{ }) -> Bool>;
	function constant():lodash.FunctionChain<() -> SchemaT>;
	@:overload(function<TDefault>(defaultValue:TDefault):lodash.ExpChain<Dynamic> { })
	function defaultTo(defaultValue:SchemaT):lodash.ExpChain<SchemaT>;
	function identity():LowdbSync<SchemaT>;
	function matches<V>():lodash.FunctionChain<(value:V) -> Bool>;
	@:overload(function<SrcValue, Value>(srcValue:SrcValue):lodash.FunctionChain<(value:Value) -> Bool> { })
	function matchesProperty<SrcValue>(srcValue:SrcValue):lodash.FunctionChain<(value:Dynamic) -> Bool>;
	function method(args:haxe.extern.Rest<Dynamic>):lodash.FunctionChain<(object:Dynamic) -> Dynamic>;
	function methodOf(args:haxe.extern.Rest<Dynamic>):lodash.LoDashExplicitWrapper<(path:lodash.Many<ts.AnyOf3<String, Float, js.lib.Symbol>>) -> Dynamic>;
	@:overload(function(?options:lodash.MixinOptions):lodash.LoDashExplicitWrapper<lodash.LoDashStatic> { })
	function mixin(source:lodash.Dictionary<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>, ?options:lodash.MixinOptions):LowdbSync<SchemaT>;
	function noConflict():lodash.LoDashExplicitWrapper<lodash.LoDashStatic>;
	function noop(args:haxe.extern.Rest<Dynamic>):lodash.PrimitiveChain<Null<Any>>;
	function nthArg():lodash.FunctionChain<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	function property<TObj, TResult>():lodash.FunctionChain<(obj:TObj) -> TResult>;
	function propertyOf():lodash.LoDashExplicitWrapper<(path:lodash.Many<ts.AnyOf3<String, Float, js.lib.Symbol>>) -> Dynamic>;
	function range(?end:Float, ?step:Float):lodash.CollectionChain<Float>;
	function rangeRight(?end:Float, ?step:Float):lodash.CollectionChain<Float>;
	function stubArray():lodash.CollectionChain<Dynamic>;
	@:overload(function():lodash.LoDashExplicitWrapper<Bool> { })
	function stubFalse():lodash.PrimitiveChain<Bool>;
	function stubObject():lodash.LoDashExplicitWrapper<Dynamic>;
	function stubString():lodash.StringChain;
	@:overload(function():lodash.LoDashExplicitWrapper<Bool> { })
	function stubTrue():lodash.PrimitiveChain<Bool>;
	@:overload(function():lodash.CollectionChain<Float> { })
	function times<TResult>(iteratee:(num:Float) -> TResult):lodash.CollectionChain<TResult>;
	function toPath():lodash.CollectionChain<String>;
	function uniqueId():lodash.StringChain;
};