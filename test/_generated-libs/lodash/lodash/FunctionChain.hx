package lodash;

typedef FunctionChain<T> = {
	function ary(?n:Float):FunctionChain<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	function curry(?arity:Float):Dynamic;
	function curryRight(?arity:Float):Dynamic;
	function debounce(?wait:Float, ?options:DebounceSettings):Dynamic;
	function flip():FunctionChain<T>;
	function memoize(?resolver:(args:haxe.extern.Rest<Dynamic>) -> Dynamic):FunctionChain<Dynamic>;
	function negate():FunctionChain<(args:haxe.extern.Rest<Any>) -> Bool>;
	function once():FunctionChain<T>;
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
	@:overload(function<TS>(ts:haxe.extern.Rest<Any>):FunctionChain<Dynamic> { })
	@:overload(function():FunctionChain<Dynamic> { })
	function partialRight<T1>(arg1:T1, plc2:LoDashStatic):FunctionChain<Dynamic>;
	function rearg(indexes:haxe.extern.Rest<Many<Float>>):FunctionChain<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	function rest(?start:Float):FunctionChain<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	function spread(?start:Float):FunctionChain<(args:haxe.extern.Rest<Dynamic>) -> js.lib.ReturnType<T>>;
	function throttle(?wait:Float, ?options:ThrottleSettings):Dynamic;
	function unary():FunctionChain<(arg1:Dynamic) -> js.lib.ReturnType<T>>;
	function castArray():CollectionChain<T>;
	@:overload(function<R2, R3, R4, R5, R6, R7>(f2:(a:js.lib.ReturnType<T>) -> R2, f3:(a:R2) -> R3, f4:(a:R3) -> R4, f5:(a:R4) -> R5, f6:(a:R5) -> R6, f7:(a:R6) -> R7, func:haxe.extern.Rest<Many<(a:Dynamic) -> Dynamic>>):FunctionChain<(args:haxe.extern.Rest<Any>) -> Dynamic> { })
	@:overload(function<R2, R3, R4, R5, R6>(f2:(a:js.lib.ReturnType<T>) -> R2, f3:(a:R2) -> R3, f4:(a:R3) -> R4, f5:(a:R4) -> R5, f6:(a:R5) -> R6):FunctionChain<(args:haxe.extern.Rest<Any>) -> R6> { })
	@:overload(function<R2, R3, R4, R5>(f2:(a:js.lib.ReturnType<T>) -> R2, f3:(a:R2) -> R3, f4:(a:R3) -> R4, f5:(a:R4) -> R5):FunctionChain<(args:haxe.extern.Rest<Any>) -> R5> { })
	@:overload(function<R2, R3, R4>(f2:(a:js.lib.ReturnType<T>) -> R2, f3:(a:R2) -> R3, f4:(a:R3) -> R4):FunctionChain<(args:haxe.extern.Rest<Any>) -> R4> { })
	@:overload(function<R2, R3>(f2:(a:js.lib.ReturnType<T>) -> R2, f3:(a:R2) -> R3):FunctionChain<(args:haxe.extern.Rest<Any>) -> R3> { })
	@:overload(function<R2>(f2:(a:js.lib.ReturnType<T>) -> R2):FunctionChain<(args:haxe.extern.Rest<Any>) -> R2> { })
	@:overload(function(func:haxe.extern.Rest<Many<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>>):FunctionChain<(args:haxe.extern.Rest<Dynamic>) -> Dynamic> { })
	function flow<R2, R3, R4, R5, R6, R7>(f2:(a:js.lib.ReturnType<T>) -> R2, f3:(a:R2) -> R3, f4:(a:R3) -> R4, f5:(a:R4) -> R5, f6:(a:R5) -> R6, f7:(a:R6) -> R7):FunctionChain<(args:haxe.extern.Rest<Any>) -> R7>;
	@:overload(function<A, R1, R2, R3, R4>(f5:(a:R4) -> Dynamic, f4:(a:R3) -> R4, f3:(a:R2) -> R3, f2:(a:R1) -> R2, f1:(args:haxe.extern.Rest<Any>) -> R1):FunctionChain<(args:haxe.extern.Rest<Any>) -> js.lib.ReturnType<T>> { })
	@:overload(function<A, R1, R2, R3>(f4:(a:R3) -> Dynamic, f3:(a:R2) -> R3, f2:(a:R1) -> R2, f1:(args:haxe.extern.Rest<Any>) -> R1):FunctionChain<(args:haxe.extern.Rest<Any>) -> js.lib.ReturnType<T>> { })
	@:overload(function<A, R1, R2>(f3:(a:R2) -> Dynamic, f2:(a:R1) -> R2, f1:(args:haxe.extern.Rest<Any>) -> R1):FunctionChain<(args:haxe.extern.Rest<Any>) -> js.lib.ReturnType<T>> { })
	@:overload(function<A, R1>(f2:(a:R1) -> Dynamic, f1:(args:haxe.extern.Rest<Any>) -> R1):FunctionChain<(args:haxe.extern.Rest<Any>) -> js.lib.ReturnType<T>> { })
	@:overload(function<A>(f1:(args:haxe.extern.Rest<Any>) -> Dynamic):FunctionChain<(args:haxe.extern.Rest<Any>) -> js.lib.ReturnType<T>> { })
	@:overload(function(func:haxe.extern.Rest<Many<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>>):FunctionChain<(args:haxe.extern.Rest<Dynamic>) -> Dynamic> { })
	function flowRight<A, R1, R2, R3, R4, R5>(f6:(a:R5) -> Dynamic, f5:(a:R4) -> R5, f4:(a:R3) -> R4, f3:(a:R2) -> R3, f2:(a:R1) -> R2, f1:(args:haxe.extern.Rest<Any>) -> R1):FunctionChain<(args:haxe.extern.Rest<Any>) -> js.lib.ReturnType<T>>;
	function iteratee():FunctionChain<T>;
	function over<TResult>(iteratees:haxe.extern.Rest<Many<(args:haxe.extern.Rest<Dynamic>) -> TResult>>):FunctionChain<(args:haxe.extern.Rest<Dynamic>) -> Array<ts.AnyOf2<js.lib.ReturnType<T>, TResult>>>;
	function overEvery<TArgs>(iteratees:haxe.extern.Rest<Many<(args:haxe.extern.Rest<TArgs>) -> Bool>>):FunctionChain<(args:haxe.extern.Rest<Any>) -> Bool>;
	function overSome<TArgs>(iteratees:haxe.extern.Rest<Many<(args:haxe.extern.Rest<TArgs>) -> Bool>>):FunctionChain<(args:haxe.extern.Rest<Any>) -> Bool>;
	@:overload(function<TResult>(method:(args:haxe.extern.Rest<Dynamic>) -> TResult, args:haxe.extern.Rest<Dynamic>):CollectionChain<TResult> { })
	function invokeMap(methodName:String, args:haxe.extern.Rest<Dynamic>):CollectionChain<Dynamic>;
	function size():PrimitiveChain<Float>;
	function now():PrimitiveChain<Float>;
	function bind(thisArg:Dynamic, partials:haxe.extern.Rest<Dynamic>):FunctionChain<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	function bindKey(key:String, partials:haxe.extern.Rest<Dynamic>):FunctionChain<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	function defer(args:haxe.extern.Rest<Dynamic>):PrimitiveChain<Float>;
	function delay(wait:Float, args:haxe.extern.Rest<Dynamic>):PrimitiveChain<Float>;
	function wrap<TArgs, TResult>(wrapper:(value:T, args:haxe.extern.Rest<TArgs>) -> TResult):FunctionChain<(args:haxe.extern.Rest<TArgs>) -> TResult>;
	function clone():FunctionChain<T>;
	function cloneDeep():FunctionChain<T>;
	@:overload(function():FunctionChain<T> { })
	function cloneDeepWith(customizer:CloneDeepWithCustomizer<T>):LoDashExplicitWrapper<Dynamic>;
	@:overload(function<TResult>(customizer:CloneWithCustomizer<T, Null<TResult>>):ts.AnyOf2<ExpChain<T>, ExpChain<TResult>> { })
	@:overload(function():FunctionChain<T> { })
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
	function entries():CollectionChain<ts.Tuple2<String, Dynamic>>;
	function entriesIn():CollectionChain<ts.Tuple2<String, Dynamic>>;
	function findKey(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ObjectIterator<T, Any>, { }>):StringNullableChain;
	function findLastKey(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ObjectIterator<T, Any>, { }>):StringNullableChain;
	function forIn(?iteratee:ObjectIterator<T, Dynamic>):FunctionChain<T>;
	function forInRight(?iteratee:ObjectIterator<T, Dynamic>):FunctionChain<T>;
	function forOwn(?iteratee:ObjectIterator<T, Dynamic>):FunctionChain<T>;
	function forOwnRight(?iteratee:ObjectIterator<T, Dynamic>):FunctionChain<T>;
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
	function set(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, value:Dynamic):FunctionChain<T>;
	@:overload(function<TResult>(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, value:Dynamic, ?customizer:SetWithCustomizer<T>):ExpChain<TResult> { })
	function setWith(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, value:Dynamic, ?customizer:SetWithCustomizer<T>):FunctionChain<T>;
	function toPairs():CollectionChain<ts.Tuple2<String, Dynamic>>;
	function toPairsIn():CollectionChain<ts.Tuple2<String, Dynamic>>;
	function unset(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>):PrimitiveChain<Bool>;
	function update(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, updater:(value:Dynamic) -> Dynamic):ObjectChain<Dynamic>;
	function chain():FunctionChain<T>;
	function commit():FunctionChain<T>;
	function plant(value:Any):FunctionChain<T>;
	function reverse():FunctionChain<T>;
	function toJSON():T;
	function value():T;
	function valueOf():T;
	function tap(interceptor:(value:T) -> Void):FunctionChain<T>;
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
	function bindAll(methodNames:haxe.extern.Rest<Many<String>>):FunctionChain<T>;
	function conforms():FunctionChain<(value:{ }) -> Bool>;
	function constant():FunctionChain<() -> T>;
	@:overload(function<TDefault>(defaultValue:TDefault):ExpChain<Dynamic> { })
	function defaultTo(defaultValue:T):ExpChain<T>;
	function identity():FunctionChain<T>;
	function matches<V>():FunctionChain<(value:V) -> Bool>;
	@:overload(function<SrcValue, Value>(srcValue:SrcValue):FunctionChain<(value:Value) -> Bool> { })
	function matchesProperty<SrcValue>(srcValue:SrcValue):FunctionChain<(value:Dynamic) -> Bool>;
	function method(args:haxe.extern.Rest<Dynamic>):FunctionChain<(object:Dynamic) -> Dynamic>;
	function methodOf(args:haxe.extern.Rest<Dynamic>):LoDashExplicitWrapper<(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>) -> Dynamic>;
	@:overload(function(?options:MixinOptions):LoDashExplicitWrapper<LoDashStatic> { })
	function mixin(source:Dictionary<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>, ?options:MixinOptions):FunctionChain<T>;
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