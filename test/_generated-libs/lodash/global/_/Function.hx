package global._;

typedef Function<T> = {
	function ary(?n:Float):Function<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	function curry(?arity:Float):Dynamic;
	function curryRight(?arity:Float):Dynamic;
	function debounce(?wait:Float, ?options:DebounceSettings):Dynamic;
	function flip():Function<T>;
	function memoize(?resolver:(args:haxe.extern.Rest<Dynamic>) -> Dynamic):Function<Dynamic>;
	function negate():Function<(args:haxe.extern.Rest<Any>) -> Bool>;
	function once():Function<T>;
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
	@:overload(function<TS>(ts:haxe.extern.Rest<Any>):Function<Dynamic> { })
	@:overload(function():Function<Dynamic> { })
	function partialRight<T1>(arg1:T1, plc2:LoDashStatic):Function<Dynamic>;
	function rearg(indexes:haxe.extern.Rest<Many<Float>>):Function<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	function rest(?start:Float):Function<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>;
	function spread(?start:Float):Function<(args:haxe.extern.Rest<Dynamic>) -> js.lib.ReturnType<T>>;
	function throttle(?wait:Float, ?options:ThrottleSettings):Dynamic;
	function unary():Function<(arg1:Dynamic) -> js.lib.ReturnType<T>>;
	function castArray():Collection<T>;
	function chain():FunctionChain<T>;
	@:overload(function<R2, R3, R4, R5, R6, R7>(f2:(a:js.lib.ReturnType<T>) -> R2, f3:(a:R2) -> R3, f4:(a:R3) -> R4, f5:(a:R4) -> R5, f6:(a:R5) -> R6, f7:(a:R6) -> R7, func:haxe.extern.Rest<Many<(a:Dynamic) -> Dynamic>>):Function<(args:haxe.extern.Rest<Any>) -> Dynamic> { })
	@:overload(function<R2, R3, R4, R5, R6>(f2:(a:js.lib.ReturnType<T>) -> R2, f3:(a:R2) -> R3, f4:(a:R3) -> R4, f5:(a:R4) -> R5, f6:(a:R5) -> R6):Function<(args:haxe.extern.Rest<Any>) -> R6> { })
	@:overload(function<R2, R3, R4, R5>(f2:(a:js.lib.ReturnType<T>) -> R2, f3:(a:R2) -> R3, f4:(a:R3) -> R4, f5:(a:R4) -> R5):Function<(args:haxe.extern.Rest<Any>) -> R5> { })
	@:overload(function<R2, R3, R4>(f2:(a:js.lib.ReturnType<T>) -> R2, f3:(a:R2) -> R3, f4:(a:R3) -> R4):Function<(args:haxe.extern.Rest<Any>) -> R4> { })
	@:overload(function<R2, R3>(f2:(a:js.lib.ReturnType<T>) -> R2, f3:(a:R2) -> R3):Function<(args:haxe.extern.Rest<Any>) -> R3> { })
	@:overload(function<R2>(f2:(a:js.lib.ReturnType<T>) -> R2):Function<(args:haxe.extern.Rest<Any>) -> R2> { })
	@:overload(function(func:haxe.extern.Rest<Many<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>>):Function<(args:haxe.extern.Rest<Dynamic>) -> Dynamic> { })
	function flow<R2, R3, R4, R5, R6, R7>(f2:(a:js.lib.ReturnType<T>) -> R2, f3:(a:R2) -> R3, f4:(a:R3) -> R4, f5:(a:R4) -> R5, f6:(a:R5) -> R6, f7:(a:R6) -> R7):Function<(args:haxe.extern.Rest<Any>) -> R7>;
	@:overload(function<A, R1, R2, R3, R4>(f5:(a:R4) -> Dynamic, f4:(a:R3) -> R4, f3:(a:R2) -> R3, f2:(a:R1) -> R2, f1:(args:haxe.extern.Rest<Any>) -> R1):Function<(args:haxe.extern.Rest<Any>) -> js.lib.ReturnType<T>> { })
	@:overload(function<A, R1, R2, R3>(f4:(a:R3) -> Dynamic, f3:(a:R2) -> R3, f2:(a:R1) -> R2, f1:(args:haxe.extern.Rest<Any>) -> R1):Function<(args:haxe.extern.Rest<Any>) -> js.lib.ReturnType<T>> { })
	@:overload(function<A, R1, R2>(f3:(a:R2) -> Dynamic, f2:(a:R1) -> R2, f1:(args:haxe.extern.Rest<Any>) -> R1):Function<(args:haxe.extern.Rest<Any>) -> js.lib.ReturnType<T>> { })
	@:overload(function<A, R1>(f2:(a:R1) -> Dynamic, f1:(args:haxe.extern.Rest<Any>) -> R1):Function<(args:haxe.extern.Rest<Any>) -> js.lib.ReturnType<T>> { })
	@:overload(function<A>(f1:(args:haxe.extern.Rest<Any>) -> Dynamic):Function<(args:haxe.extern.Rest<Any>) -> js.lib.ReturnType<T>> { })
	@:overload(function(func:haxe.extern.Rest<Many<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>>):Function<(args:haxe.extern.Rest<Dynamic>) -> Dynamic> { })
	function flowRight<A, R1, R2, R3, R4, R5>(f6:(a:R5) -> Dynamic, f5:(a:R4) -> R5, f4:(a:R3) -> R4, f3:(a:R2) -> R3, f2:(a:R1) -> R2, f1:(args:haxe.extern.Rest<Any>) -> R1):Function<(args:haxe.extern.Rest<Any>) -> js.lib.ReturnType<T>>;
	function iteratee():Function<T>;
	function over<TResult>(iteratees:haxe.extern.Rest<Many<(args:haxe.extern.Rest<Dynamic>) -> TResult>>):Function<(args:haxe.extern.Rest<Dynamic>) -> Array<ts.AnyOf2<js.lib.ReturnType<T>, TResult>>>;
	function overEvery<TArgs>(iteratees:haxe.extern.Rest<Many<(args:haxe.extern.Rest<TArgs>) -> Bool>>):Function<(args:haxe.extern.Rest<Any>) -> Bool>;
	function overSome<TArgs>(iteratees:haxe.extern.Rest<Many<(args:haxe.extern.Rest<TArgs>) -> Bool>>):Function<(args:haxe.extern.Rest<Any>) -> Bool>;
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
	function entries():Collection<ts.Tuple2<String, Dynamic>>;
	function entriesIn():Collection<ts.Tuple2<String, Dynamic>>;
	function findKey(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ObjectIterator<T, Any>, { }>):Null<String>;
	function findLastKey(?predicate:ts.AnyOf6<String, Float, js.lib.Symbol, ts.Tuple2<ts.AnyOf3<String, Float, js.lib.Symbol>, Dynamic>, ObjectIterator<T, Any>, { }>):Null<String>;
	function forIn(?iteratee:ObjectIterator<T, Dynamic>):Function<T>;
	function forInRight(?iteratee:ObjectIterator<T, Dynamic>):Function<T>;
	function forOwn(?iteratee:ObjectIterator<T, Dynamic>):Function<T>;
	function forOwnRight(?iteratee:ObjectIterator<T, Dynamic>):Function<T>;
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
	function set(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, value:Dynamic):Function<T>;
	@:overload(function<TResult>(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, value:Dynamic, ?customizer:SetWithCustomizer<T>):ImpChain<TResult> { })
	function setWith(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, value:Dynamic, ?customizer:SetWithCustomizer<T>):Function<T>;
	function toPairs():Collection<ts.Tuple2<String, Dynamic>>;
	function toPairsIn():Collection<ts.Tuple2<String, Dynamic>>;
	function unset(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>):Primitive<Bool>;
	function update(path:Many<ts.AnyOf3<String, Float, js.lib.Symbol>>, updater:(value:Dynamic) -> Dynamic):Object<Dynamic>;
	function commit():Function<T>;
	function plant(value:Any):Function<T>;
	function reverse():Function<T>;
	function toJSON():T;
	function value():T;
	function valueOf():T;
	function tap(interceptor:(value:T) -> Void):Function<T>;
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
	function bindAll(methodNames:haxe.extern.Rest<Many<String>>):Function<T>;
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
	function mixin(source:Dictionary<(args:haxe.extern.Rest<Dynamic>) -> Dynamic>, ?options:MixinOptions):Function<T>;
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