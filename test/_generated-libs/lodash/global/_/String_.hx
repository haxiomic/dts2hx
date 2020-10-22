package global._;

typedef String_ = {
	function first():Null<String>;
	function flatten():Collection<String>;
	function head():Null<String>;
	function join(?separator:String):String;
	function last():Null<String>;
	function countBy(?iteratee:ValueIteratee<String>):Object<Dictionary<Float>>;
	dynamic function each(?iteratee:StringIterator<Dynamic>):String_;
	dynamic function eachRight(?iteratee:StringIterator<Dynamic>):String_;
	function filter(?predicate:StringIterator<Bool>):Collection<String>;
	@:overload(function():Collection<String> { })
	function flatMap<TResult>(iteratee:StringIterator<Many<TResult>>):Collection<TResult>;
	@:overload(function():Collection<String> { })
	function flatMapDeep<TResult>(iteratee:StringIterator<ts.AnyOf2<ListOfRecursiveArraysOrValues<TResult>, TResult>>):Collection<TResult>;
	@:overload(function(?depth:Float):Collection<String> { })
	function flatMapDepth<TResult>(iteratee:StringIterator<ts.AnyOf2<ListOfRecursiveArraysOrValues<TResult>, TResult>>, ?depth:Float):Collection<TResult>;
	function forEach(?iteratee:StringIterator<Dynamic>):String_;
	function forEachRight(?iteratee:StringIterator<Dynamic>):String_;
	function groupBy(?iteratee:ValueIteratee<String>):Object<Dictionary<Array<String>>>;
	function includes(target:String, ?fromIndex:Float):Bool;
	function keyBy(?iteratee:ValueIterateeCustom<String, ts.AnyOf3<String, Float, js.lib.Symbol>>):Object<Dictionary<String>>;
	@:overload(function():Collection<String> { })
	function map<TResult>(iteratee:StringIterator<TResult>):Collection<TResult>;
	function partition(callback:StringIterator<Any>):LoDashImplicitWrapper<ts.Tuple2<Array<String>, Array<String>>>;
	function reject(?predicate:StringIterator<Bool>):Collection<String>;
	function sample():Null<String>;
	function sampleSize(?n:Float):Collection<String>;
	function shuffle():Collection<String>;
	function castArray():Collection<String>;
	function toArray():Collection<String>;
	@:overload(function(path:ts.AnyOf2<Float, Array<Float>>, defaultValue:String):String { })
	function get(path:ts.AnyOf2<Float, Array<Float>>):String;
	function invertBy(?iteratee:ValueIteratee<String>):Object<Dictionary<Array<String>>>;
	@:overload(function():Object<NumericDictionary<String>> { })
	function mapValues<TResult>(callback:StringIterator<TResult>):Object<NumericDictionary<TResult>>;
	function values():Collection<String>;
	function valuesIn():Collection<String>;
	function chain():StringChain;
	function iteratee():Function<(o:Dynamic) -> Dynamic>;
	@:overload(function<TResult>(method:(args:haxe.extern.Rest<Dynamic>) -> TResult, args:haxe.extern.Rest<Dynamic>):Collection<TResult> { })
	function invokeMap(methodName:String, args:haxe.extern.Rest<Dynamic>):Collection<Dynamic>;
	function size():Float;
	function now():Float;
	function bind(thisArg:Dynamic, partials:haxe.extern.Rest<Dynamic>):Function<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	function bindKey(key:String, partials:haxe.extern.Rest<Dynamic>):Function<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	function defer(args:haxe.extern.Rest<Dynamic>):Primitive<Float>;
	function delay(wait:Float, args:haxe.extern.Rest<Dynamic>):Primitive<Float>;
	function wrap<TArgs, TResult>(wrapper:(value:String, args:haxe.extern.Rest<TArgs>) -> TResult):Function<(args:haxe.extern.Rest<TArgs>) -> TResult>;
	function clone():String;
	function cloneDeep():String;
	@:overload(function():String { })
	function cloneDeepWith(customizer:CloneDeepWithCustomizer<String>):Dynamic;
	@:overload(function<TResult>(customizer:CloneWithCustomizer<String, Null<TResult>>):ts.AnyOf2<String, TResult> { })
	@:overload(function():String { })
	function cloneWith<TResult>(customizer:CloneWithCustomizer<String, TResult>):TResult;
	function conformsTo(source:String):Bool;
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
	function findKey(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ObjectIterator<String, Any>, { }>):Null<String>;
	function findLastKey(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ObjectIterator<String, Any>, { }>):Null<String>;
	function forIn(?iteratee:ObjectIterator<String, Dynamic>):String_;
	function forInRight(?iteratee:ObjectIterator<String, Dynamic>):String_;
	function forOwn(?iteratee:ObjectIterator<String, Dynamic>):String_;
	function forOwnRight(?iteratee:ObjectIterator<String, Dynamic>):String_;
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
	function set(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, value:Dynamic):String_;
	@:overload(function<TResult>(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, value:Dynamic, ?customizer:SetWithCustomizer<String>):ImpChain<TResult> { })
	function setWith(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, value:Dynamic, ?customizer:SetWithCustomizer<String>):String_;
	function toPairs():Collection<ts.Tuple2<String, String>>;
	function toPairsIn():Collection<ts.Tuple2<String, String>>;
	function unset(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>):Primitive<Bool>;
	function update(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, updater:(value:Dynamic) -> Dynamic):Object<Dynamic>;
	function commit():String_;
	function plant(value:Any):String_;
	function reverse():String_;
	function toJSON():String;
	function value():String;
	function valueOf():String;
	function tap(interceptor:(value:String) -> Void):String_;
	function thru<TResult>(interceptor:(value:String) -> TResult):ImpChain<TResult>;
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
	function bindAll(methodNames:haxe.extern.Rest<Many<String>>):String_;
	function conforms():Function<(value:String) -> Bool>;
	function constant():Function<() -> String>;
	@:overload(function<TDefault>(defaultValue:TDefault):ts.AnyOf2<String, TDefault> { })
	function defaultTo(defaultValue:String):String;
	function identity():String;
	function matches<V>():Function<(value:V) -> Bool>;
	@:overload(function<SrcValue, Value>(srcValue:SrcValue):Function<(value:Value) -> Bool> { })
	function matchesProperty<SrcValue>(srcValue:SrcValue):Function<(value:Dynamic) -> Bool>;
	function method(args:haxe.extern.Rest<Dynamic>):Function<(object:Dynamic) -> Dynamic>;
	function methodOf(args:haxe.extern.Rest<Dynamic>):LoDashImplicitWrapper<(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>) -> Dynamic>;
	@:overload(function(?options:MixinOptions):LoDashImplicitWrapper<LoDashStatic> { })
	function mixin(source:Dictionary<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>, ?options:MixinOptions):String_;
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