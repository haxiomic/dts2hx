package global._;

typedef Object<T> = {
	function concat(values:haxe.extern.Rest<Many<T>>):Collection<T>;
	function countBy(?iteratee:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:Dynamic) -> Any, { }>):Object<Dictionary<Float>>;
	dynamic function each(?iteratee:ObjectIterator<T, Dynamic>):Object<T>;
	dynamic function eachRight(?iteratee:ObjectIterator<T, Dynamic>):Object<T>;
	function every(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ObjectIterator<T, Bool>, { }>):Bool;
	@:overload(function(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ObjectIterator<T, Bool>, { }>):Collection<Dynamic> { })
	function filter<S>(predicate:ObjectIteratorTypeGuard<T, S>):Collection<S>;
	@:overload(function(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ObjectIterator<T, Bool>, { }>, ?fromIndex:Float):Null<Dynamic> { })
	function find<S>(predicate:ObjectIteratorTypeGuard<T, S>, ?fromIndex:Float):Null<S>;
	@:overload(function(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ObjectIterator<T, Bool>, { }>, ?fromIndex:Float):Null<Dynamic> { })
	function findLast<S>(predicate:ObjectIteratorTypeGuard<T, S>, ?fromIndex:Float):Null<S>;
	@:overload(function(iteratee:ts.AnyOf2<Dynamic, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>>):Collection<Bool> { })
	@:overload(function():Collection<Dynamic> { })
	function flatMap<TResult>(iteratee:ts.AnyOf4<String, Float, js.lib.Symbol, ObjectIterator<T, Many<TResult>>>):Collection<TResult>;
	@:overload(function(iteratee:ts.AnyOf2<Dynamic, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>>):Collection<Bool> { })
	@:overload(function():Collection<Dynamic> { })
	function flatMapDeep<TResult>(iteratee:ts.AnyOf4<String, Float, js.lib.Symbol, ObjectIterator<T, ts.AnyOf2<ListOfRecursiveArraysOrValues<TResult>, TResult>>>):Collection<TResult>;
	@:overload(function(iteratee:ts.AnyOf2<Dynamic, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>>, ?depth:Float):Collection<Bool> { })
	@:overload(function(?depth:Float):Collection<Dynamic> { })
	function flatMapDepth<TResult>(iteratee:ts.AnyOf4<String, Float, js.lib.Symbol, ObjectIterator<T, ts.AnyOf2<ListOfRecursiveArraysOrValues<TResult>, TResult>>>, ?depth:Float):Collection<TResult>;
	function forEach(?iteratee:ObjectIterator<T, Dynamic>):Object<T>;
	function forEachRight(?iteratee:ObjectIterator<T, Dynamic>):Object<T>;
	function groupBy(?iteratee:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:Dynamic) -> Any, { }>):Object<Dictionary<Array<Dynamic>>>;
	function includes(target:Dynamic, ?fromIndex:Float):Bool;
	function keyBy(?iteratee:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:Dynamic) -> ts.AnyOf3<String, Float, js.lib.Symbol>, { }>):Object<Dictionary<Dynamic>>;
	@:overload(function<TResult>(iteratee:ObjectIterator<T, TResult>):Collection<TResult> { })
	@:overload(function(iteratee:ts.AnyOf3<String, Float, js.lib.Symbol>):Collection<Dynamic> { })
	@:overload(function(iteratee:ts.AnyOf2<Dynamic, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>>):Collection<Bool> { })
	@:overload(function():Collection<Dynamic> { })
	function map<K>(key:K):Collection<Dynamic>;
	function orderBy(?iteratees:Many<ObjectIterator<T, Any>>, ?orders:Many<ts.AnyOf2<Bool, String>>):Collection<Dynamic>;
	function partition(callback:ValueIteratee<Dynamic>):LoDashImplicitWrapper<ts.Tuple2<Array<Dynamic>, Array<Dynamic>>>;
	@:overload(function(callback:MemoObjectIterator<Dynamic, Dynamic, T>):Null<Dynamic> { })
	function reduce<TResult>(callback:MemoObjectIterator<Dynamic, TResult, T>, accumulator:TResult):TResult;
	@:overload(function(callback:MemoObjectIterator<Dynamic, Dynamic, T>):Null<Dynamic> { })
	function reduceRight<TResult>(callback:MemoObjectIterator<Dynamic, TResult, T>, accumulator:TResult):TResult;
	function reject(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ObjectIterator<T, Bool>, { }>):Collection<Dynamic>;
	function sample():Null<Dynamic>;
	function sampleSize(?n:Float):Collection<Dynamic>;
	function shuffle():Collection<Dynamic>;
	function some(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ObjectIterator<T, Bool>, { }>):Bool;
	function sortBy(iteratees:haxe.extern.Rest<Many<ObjectIteratee<T>>>):Collection<Dynamic>;
	function castArray():Collection<T>;
	function toArray():Collection<Dynamic>;
	@:overload(function<TSource1, TSource2>(source1:TSource1, source2:TSource2):Object<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3>(source1:TSource1, source2:TSource2, source3:TSource3):Object<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3, TSource4>(source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4):Object<Dynamic> { })
	@:overload(function():Object<T> { })
	@:overload(function(otherArgs:haxe.extern.Rest<Dynamic>):Object<Dynamic> { })
	function assign<TSource>(source:TSource):Object<Dynamic>;
	@:overload(function<TSource1, TSource2>(source1:TSource1, source2:TSource2):Object<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3>(source1:TSource1, source2:TSource2, source3:TSource3):Object<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3, TSource4>(source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4):Object<Dynamic> { })
	@:overload(function():Object<T> { })
	@:overload(function<TResult>(otherArgs:haxe.extern.Rest<Dynamic>):Object<TResult> { })
	function assignIn<TSource>(source:TSource):Object<Dynamic>;
	@:overload(function<TSource1, TSource2>(source1:TSource1, source2:TSource2, customizer:AssignCustomizer):Object<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3>(source1:TSource1, source2:TSource2, source3:TSource3, customizer:AssignCustomizer):Object<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3, TSource4>(source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4, customizer:AssignCustomizer):Object<Dynamic> { })
	@:overload(function():Object<T> { })
	@:overload(function<TResult>(otherArgs:haxe.extern.Rest<Dynamic>):Object<TResult> { })
	function assignInWith<TSource>(source:TSource, customizer:AssignCustomizer):Object<Dynamic>;
	@:overload(function<TSource1, TSource2>(source1:TSource1, source2:TSource2, customizer:AssignCustomizer):Object<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3>(source1:TSource1, source2:TSource2, source3:TSource3, customizer:AssignCustomizer):Object<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3, TSource4>(source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4, customizer:AssignCustomizer):Object<Dynamic> { })
	@:overload(function():Object<T> { })
	@:overload(function<TResult>(otherArgs:haxe.extern.Rest<Dynamic>):Object<TResult> { })
	function assignWith<TSource>(source:TSource, customizer:AssignCustomizer):Object<Dynamic>;
	function at(props:haxe.extern.Rest<Many<Dynamic>>):Collection<Dynamic>;
	function create<U>(?properties:U):Object<Dynamic>;
	@:overload(function<TSource1, TSource2>(source1:TSource1, source2:TSource2):Object<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3>(source1:TSource1, source2:TSource2, source3:TSource3):Object<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3, TSource4>(source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4):Object<Dynamic> { })
	@:overload(function():Object<T> { })
	@:overload(function(sources:haxe.extern.Rest<Dynamic>):Object<Dynamic> { })
	function defaults<TSource>(source:TSource):Object<Dynamic>;
	function defaultsDeep(sources:haxe.extern.Rest<Dynamic>):Object<Dynamic>;
	function entries():Collection<ts.Tuple2<String, Dynamic>>;
	function entriesIn():Collection<ts.Tuple2<String, Dynamic>>;
	@:overload(function<TSource1, TSource2>(source1:TSource1, source2:TSource2):Object<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3>(source1:TSource1, source2:TSource2, source3:TSource3):Object<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3, TSource4>(source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4):Object<Dynamic> { })
	@:overload(function():Object<T> { })
	@:overload(function(otherArgs:haxe.extern.Rest<Dynamic>):Object<Dynamic> { })
	function extend<TSource>(source:TSource):Object<Dynamic>;
	@:overload(function<TSource1, TSource2>(source1:TSource1, source2:TSource2, customizer:AssignCustomizer):Object<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3>(source1:TSource1, source2:TSource2, source3:TSource3, customizer:AssignCustomizer):Object<Dynamic> { })
	@:overload(function<TSource1, TSource2, TSource3, TSource4>(source1:TSource1, source2:TSource2, source3:TSource3, source4:TSource4, customizer:AssignCustomizer):Object<Dynamic> { })
	@:overload(function():Object<T> { })
	@:overload(function(otherArgs:haxe.extern.Rest<Dynamic>):Object<Dynamic> { })
	function extendWith<TSource>(source:TSource, customizer:AssignCustomizer):Object<Dynamic>;
	@:overload(function<TKey, TDefault>(path:ts.AnyOf2<ts.Tuple1<TKey>, TKey>, defaultValue:TDefault):ts.AnyOf2<TDefault, { }> { })
	@:overload(function<TKey1, TKey2>(path:ts.Tuple2<TKey1, TKey2>):Dynamic { })
	@:overload(function<TKey1, TKey2, TDefault>(path:ts.Tuple2<TKey1, TKey2>, defaultValue:TDefault):ts.AnyOf2<TDefault, { }> { })
	@:overload(function<TKey1, TKey2, TKey3>(path:ts.Tuple3<TKey1, TKey2, TKey3>):Dynamic { })
	@:overload(function<TKey1, TKey2, TKey3, TDefault>(path:ts.Tuple3<TKey1, TKey2, TKey3>, defaultValue:TDefault):ts.AnyOf2<TDefault, { }> { })
	@:overload(function<TKey1, TKey2, TKey3, TKey4>(path:ts.Tuple4<TKey1, TKey2, TKey3, TKey4>):Dynamic { })
	@:overload(function<TKey1, TKey2, TKey3, TKey4, TDefault>(path:ts.Tuple4<TKey1, TKey2, TKey3, TKey4>, defaultValue:TDefault):ts.AnyOf2<TDefault, { }> { })
	@:overload(function(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, ?defaultValue:Dynamic):Dynamic { })
	function get<TKey>(path:ts.AnyOf2<ts.Tuple1<TKey>, TKey>):Dynamic;
	function invertBy(?iteratee:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:Dynamic) -> Any, { }>):Object<Dictionary<Array<String>>>;
	function mapKeys(?iteratee:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ObjectIterator<T, Any>, { }>):Object<Dictionary<Dynamic>>;
	@:overload(function<TResult>(callback:ObjectIterator<Dictionary<Dynamic>, TResult>):Object<Dictionary<TResult>> { })
	@:overload(function(iteratee:Dynamic):Object<Dynamic> { })
	@:overload(function<TKey>(iteratee:TKey):Object<Dictionary<Dynamic>> { })
	@:overload(function(iteratee:String):Object<Dynamic> { })
	@:overload(function():Object<T> { })
	function mapValues<TResult>(callback:ObjectIterator<T, TResult>):Object<Dynamic>;
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
	@:overload(function(paths:haxe.extern.Rest<Many<IterateeShorthand<T>>>):Object<T> { })
	function omit<K>(paths:haxe.extern.Rest<Many<K>>):Object<{ }>;
	function omitBy(predicate:ValueKeyIteratee<Dynamic>):Object<T>;
	@:overload(function(props:haxe.extern.Rest<Many<ts.AnyOf3<String, Float, js.lib.Symbol>>>):Object<T> { })
	function pick<U>(props:haxe.extern.Rest<Many<U>>):Object<{ }>;
	@:overload(function(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, (value:Dynamic, key:String) -> Any, { }>):Object<T> { })
	function pickBy<S>(predicate:ValueKeyIterateeTypeGuard<Dynamic, S>):Object<Dynamic>;
	@:overload(function():ImpChain<Dynamic> { })
	function transform<TResult>(iteratee:MemoVoidDictionaryIterator<Dynamic, TResult>, ?accumulator:TResult):ImpChain<TResult>;
	@:overload(function<TResult>(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, updater:(oldValue:Dynamic) -> Dynamic, ?customizer:SetWithCustomizer<T>):Object<TResult> { })
	function updateWith(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, updater:(oldValue:Dynamic) -> Dynamic, ?customizer:SetWithCustomizer<T>):Object<T>;
	function values():Collection<Dynamic>;
	function valuesIn():Collection<Dynamic>;
	function chain():ObjectChain<T>;
	function iteratee():Function<(o:T) -> Bool>;
	@:overload(function<TResult>(method:(args:haxe.extern.Rest<Dynamic>) -> TResult, args:haxe.extern.Rest<Dynamic>):Collection<TResult> { })
	function invokeMap(methodName:String, args:haxe.extern.Rest<Dynamic>):Collection<Dynamic>;
	function size():Float;
	function now():Float;
	function bind(thisArg:Dynamic, partials:haxe.extern.Rest<Dynamic>):Function<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	function bindKey(key:String, partials:haxe.extern.Rest<Dynamic>):Function<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	function defer(args:haxe.extern.Rest<Dynamic>):Primitive<Float>;
	function delay(wait:Float, args:haxe.extern.Rest<Dynamic>):Primitive<Float>;
	function wrap<TArgs, TResult>(wrapper:(value:T, args:haxe.extern.Rest<TArgs>) -> TResult):Function<(args:haxe.extern.Rest<TArgs>) -> TResult>;
	function clone():T;
	function cloneDeep():T;
	@:overload(function():T { })
	function cloneDeepWith(customizer:CloneDeepWithCustomizer<T>):Dynamic;
	@:overload(function<TResult>(customizer:CloneWithCustomizer<T, Null<TResult>>):ts.AnyOf2<T, TResult> { })
	@:overload(function():T { })
	function cloneWith<TResult>(customizer:CloneWithCustomizer<T, TResult>):TResult;
	function conformsTo(source:{ }):Bool;
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
	function findKey(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ObjectIterator<T, Any>, { }>):Null<String>;
	function findLastKey(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ObjectIterator<T, Any>, { }>):Null<String>;
	function forIn(?iteratee:ObjectIterator<T, Dynamic>):Object<T>;
	function forInRight(?iteratee:ObjectIterator<T, Dynamic>):Object<T>;
	function forOwn(?iteratee:ObjectIterator<T, Dynamic>):Object<T>;
	function forOwnRight(?iteratee:ObjectIterator<T, Dynamic>):Object<T>;
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
	function set(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, value:Dynamic):Object<T>;
	@:overload(function<TResult>(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, value:Dynamic, ?customizer:SetWithCustomizer<T>):ImpChain<TResult> { })
	function setWith(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, value:Dynamic, ?customizer:SetWithCustomizer<T>):Object<T>;
	function toPairs():Collection<ts.Tuple2<String, Dynamic>>;
	function toPairsIn():Collection<ts.Tuple2<String, Dynamic>>;
	function unset(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>):Primitive<Bool>;
	function update(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, updater:(value:Dynamic) -> Dynamic):Object<Dynamic>;
	function commit():Object<T>;
	function plant(value:Any):Object<T>;
	function reverse():Object<T>;
	function toJSON():T;
	function value():T;
	function valueOf():T;
	function tap(interceptor:(value:T) -> Void):Object<T>;
	function thru<TResult>(interceptor:(value:T) -> TResult):ImpChain<TResult>;
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
	function bindAll(methodNames:haxe.extern.Rest<Many<String>>):Object<T>;
	function conforms():Function<(value:{ }) -> Bool>;
	function constant():Function<() -> T>;
	@:overload(function<TDefault>(defaultValue:TDefault):Dynamic { })
	function defaultTo(defaultValue:T):T;
	function identity():T;
	function matches<V>():Function<(value:V) -> Bool>;
	@:overload(function<SrcValue, Value>(srcValue:SrcValue):Function<(value:Value) -> Bool> { })
	function matchesProperty<SrcValue>(srcValue:SrcValue):Function<(value:Dynamic) -> Bool>;
	function method(args:haxe.extern.Rest<Dynamic>):Function<(object:Dynamic) -> Dynamic>;
	function methodOf(args:haxe.extern.Rest<Dynamic>):LoDashImplicitWrapper<(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>) -> Dynamic>;
	@:overload(function(?options:MixinOptions):LoDashImplicitWrapper<LoDashStatic> { })
	function mixin(source:Dictionary<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>, ?options:MixinOptions):Object<T>;
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