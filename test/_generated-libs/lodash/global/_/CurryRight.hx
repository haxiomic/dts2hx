package global._;

typedef CurryRight = {
	@:overload(function<T1, T2, R>(func:(t1:T1, t2:T2) -> R, ?arity:Float):RightCurriedFunction2<T1, T2, R> { })
	@:overload(function<T1, T2, T3, R>(func:(t1:T1, t2:T2, t3:T3) -> R, ?arity:Float):RightCurriedFunction3<T1, T2, T3, R> { })
	@:overload(function<T1, T2, T3, T4, R>(func:(t1:T1, t2:T2, t3:T3, t4:T4) -> R, ?arity:Float):RightCurriedFunction4<T1, T2, T3, T4, R> { })
	@:overload(function<T1, T2, T3, T4, T5, R>(func:(t1:T1, t2:T2, t3:T3, t4:T4, t5:T5) -> R, ?arity:Float):RightCurriedFunction5<T1, T2, T3, T4, T5, R> { })
	@:overload(function(func:(args:haxe.extern.Rest<Dynamic>) -> Dynamic, ?arity:Float):(args:haxe.extern.Rest<Dynamic>) -> Dynamic { })
	@:selfCall
	function call<T1, R>(func:(t1:T1) -> R, ?arity:Float):RightCurriedFunction1<T1, R>;
	var placeholder : LoDashStatic;
};