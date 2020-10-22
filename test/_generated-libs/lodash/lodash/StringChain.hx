package lodash;

typedef StringChain = {
	function first():StringNullableChain;
	function flatten():CollectionChain<String>;
	function head():StringNullableChain;
	function join(?separator:String):StringChain;
	function last():StringNullableChain;
	function countBy(?iteratee:ValueIteratee<String>):ObjectChain<Dictionary<Float>>;
	dynamic function each(?iteratee:StringIterator<Dynamic>):StringChain;
	dynamic function eachRight(?iteratee:StringIterator<Dynamic>):StringChain;
	function filter(?predicate:StringIterator<Bool>):CollectionChain<String>;
	@:overload(function():CollectionChain<String> { })
	function flatMap<TResult>(iteratee:StringIterator<Many<TResult>>):CollectionChain<TResult>;
	@:overload(function():CollectionChain<String> { })
	function flatMapDeep<TResult>(iteratee:StringIterator<ts.AnyOf2<ListOfRecursiveArraysOrValues<TResult>, TResult>>):CollectionChain<TResult>;
	@:overload(function(?depth:Float):CollectionChain<String> { })
	function flatMapDepth<TResult>(iteratee:StringIterator<ts.AnyOf2<ListOfRecursiveArraysOrValues<TResult>, TResult>>, ?depth:Float):CollectionChain<TResult>;
	function forEach(?iteratee:StringIterator<Dynamic>):StringChain;
	function forEachRight(?iteratee:StringIterator<Dynamic>):StringChain;
	function groupBy(?iteratee:ValueIteratee<String>):ObjectChain<Dictionary<Array<String>>>;
	function includes(target:String, ?fromIndex:Float):PrimitiveChain<Bool>;
	function keyBy(?iteratee:ValueIterateeCustom<String, ts.AnyOf3<String, Float, js.lib.Symbol>>):ObjectChain<Dictionary<String>>;
	@:overload(function():CollectionChain<String> { })
	function map<TResult>(iteratee:StringIterator<TResult>):CollectionChain<TResult>;
	function partition(callback:StringIterator<Any>):LoDashExplicitWrapper<ts.Tuple2<Array<String>, Array<String>>>;
	function reject(?predicate:StringIterator<Bool>):CollectionChain<String>;
	function sample():StringNullableChain;
	function sampleSize(?n:Float):CollectionChain<String>;
	function shuffle():CollectionChain<String>;
	function castArray():CollectionChain<String>;
	function toArray():CollectionChain<String>;
	@:overload(function(path:ts.AnyOf2<Float, Array<Float>>, defaultValue:String):StringChain { })
	function get(path:ts.AnyOf2<Float, Array<Float>>):StringChain;
	function invertBy(?iteratee:ValueIteratee<String>):ObjectChain<Dictionary<Array<String>>>;
	@:overload(function():ObjectChain<NumericDictionary<String>> { })
	function mapValues<TResult>(callback:StringIterator<TResult>):ObjectChain<NumericDictionary<TResult>>;
	function values():CollectionChain<String>;
	function valuesIn():CollectionChain<String>;
	function iteratee():FunctionChain<(o:Dynamic) -> Dynamic>;
	@:overload(function<TResult>(method:(args:haxe.extern.Rest<Dynamic>) -> TResult, args:haxe.extern.Rest<Dynamic>):CollectionChain<TResult> { })
	function invokeMap(methodName:String, args:haxe.extern.Rest<Dynamic>):CollectionChain<Dynamic>;
	function size():PrimitiveChain<Float>;
	function now():PrimitiveChain<Float>;
	function bind(thisArg:Dynamic, partials:haxe.extern.Rest<Dynamic>):FunctionChain<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	function bindKey(key:String, partials:haxe.extern.Rest<Dynamic>):FunctionChain<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	function defer(args:haxe.extern.Rest<Dynamic>):PrimitiveChain<Float>;
	function delay(wait:Float, args:haxe.extern.Rest<Dynamic>):PrimitiveChain<Float>;
	function wrap<TArgs, TResult>(wrapper:(value:String, args:haxe.extern.Rest<TArgs>) -> TResult):FunctionChain<(args:haxe.extern.Rest<TArgs>) -> TResult>;
	function clone():StringChain;
	function cloneDeep():StringChain;
	@:overload(function():StringChain { })
	function cloneDeepWith(customizer:CloneDeepWithCustomizer<String>):LoDashExplicitWrapper<Dynamic>;
	@:overload(function<TResult>(customizer:CloneWithCustomizer<String, Null<TResult>>):ts.AnyOf2<StringChain, ExpChain<TResult>> { })
	@:overload(function():StringChain { })
	function cloneWith<TResult>(customizer:CloneWithCustomizer<String, TResult>):ExpChain<TResult>;
	function conformsTo(source:String):PrimitiveChain<Bool>;
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
	function findKey(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ObjectIterator<String, Any>, { }>):StringNullableChain;
	function findLastKey(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ObjectIterator<String, Any>, { }>):StringNullableChain;
	function forIn(?iteratee:ObjectIterator<String, Dynamic>):StringChain;
	function forInRight(?iteratee:ObjectIterator<String, Dynamic>):StringChain;
	function forOwn(?iteratee:ObjectIterator<String, Dynamic>):StringChain;
	function forOwnRight(?iteratee:ObjectIterator<String, Dynamic>):StringChain;
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
	function set(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, value:Dynamic):StringChain;
	@:overload(function<TResult>(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, value:Dynamic, ?customizer:SetWithCustomizer<String>):ExpChain<TResult> { })
	function setWith(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, value:Dynamic, ?customizer:SetWithCustomizer<String>):StringChain;
	function toPairs():CollectionChain<ts.Tuple2<String, String>>;
	function toPairsIn():CollectionChain<ts.Tuple2<String, String>>;
	function unset(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>):PrimitiveChain<Bool>;
	function update(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, updater:(value:Dynamic) -> Dynamic):ObjectChain<Dynamic>;
	function chain():StringChain;
	function commit():StringChain;
	function plant(value:Any):StringChain;
	function reverse():StringChain;
	function toJSON():String;
	function value():String;
	function valueOf():String;
	function tap(interceptor:(value:String) -> Void):StringChain;
	function thru<TResult>(interceptor:(value:String) -> TResult):ExpChain<TResult>;
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
	function bindAll(methodNames:haxe.extern.Rest<Many<String>>):StringChain;
	function conforms():FunctionChain<(value:String) -> Bool>;
	function constant():FunctionChain<() -> String>;
	@:overload(function<TDefault>(defaultValue:TDefault):ts.AnyOf2<StringChain, ExpChain<TDefault>> { })
	function defaultTo(defaultValue:String):StringChain;
	function identity():StringChain;
	function matches<V>():FunctionChain<(value:V) -> Bool>;
	@:overload(function<SrcValue, Value>(srcValue:SrcValue):FunctionChain<(value:Value) -> Bool> { })
	function matchesProperty<SrcValue>(srcValue:SrcValue):FunctionChain<(value:Dynamic) -> Bool>;
	function method(args:haxe.extern.Rest<Dynamic>):FunctionChain<(object:Dynamic) -> Dynamic>;
	function methodOf(args:haxe.extern.Rest<Dynamic>):LoDashExplicitWrapper<(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>) -> Dynamic>;
	@:overload(function(?options:MixinOptions):LoDashExplicitWrapper<LoDashStatic> { })
	function mixin(source:Dictionary<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>, ?options:MixinOptions):StringChain;
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