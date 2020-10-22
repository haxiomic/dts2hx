package lodash;

typedef Partial = {
	@:overload(function<T1, T2, T3, R>(func:Function3<T1, T2, T3, R>, plc1:LoDashStatic, arg2:T2):Function2<T1, T3, R> { })
	@:overload(function<T1, T2, T3, R>(func:Function3<T1, T2, T3, R>, plc1:LoDashStatic, plc2:LoDashStatic, arg3:T3):Function2<T1, T2, R> { })
	@:overload(function<T1, T2, T3, R>(func:Function3<T1, T2, T3, R>, arg1:T1, plc2:LoDashStatic, arg3:T3):Function1<T2, R> { })
	@:overload(function<T1, T2, T3, R>(func:Function3<T1, T2, T3, R>, plc1:LoDashStatic, arg2:T2, arg3:T3):Function1<T1, R> { })
	@:overload(function<T1, T2, T3, T4, R>(func:Function4<T1, T2, T3, T4, R>, plc1:LoDashStatic, arg2:T2):Function3<T1, T3, T4, R> { })
	@:overload(function<T1, T2, T3, T4, R>(func:Function4<T1, T2, T3, T4, R>, plc1:LoDashStatic, plc2:LoDashStatic, arg3:T3):Function3<T1, T2, T4, R> { })
	@:overload(function<T1, T2, T3, T4, R>(func:Function4<T1, T2, T3, T4, R>, arg1:T1, plc2:LoDashStatic, arg3:T3):Function2<T2, T4, R> { })
	@:overload(function<T1, T2, T3, T4, R>(func:Function4<T1, T2, T3, T4, R>, plc1:LoDashStatic, arg2:T2, arg3:T3):Function2<T1, T4, R> { })
	@:overload(function<T1, T2, T3, T4, R>(func:Function4<T1, T2, T3, T4, R>, arg1:T1, arg2:T2, arg3:T3):Function1<T4, R> { })
	@:overload(function<T1, T2, T3, T4, R>(func:Function4<T1, T2, T3, T4, R>, plc1:LoDashStatic, plc2:LoDashStatic, plc3:LoDashStatic, arg4:T4):Function3<T1, T2, T3, R> { })
	@:overload(function<T1, T2, T3, T4, R>(func:Function4<T1, T2, T3, T4, R>, arg1:T1, plc2:LoDashStatic, plc3:LoDashStatic, arg4:T4):Function2<T2, T3, R> { })
	@:overload(function<T1, T2, T3, T4, R>(func:Function4<T1, T2, T3, T4, R>, plc1:LoDashStatic, arg2:T2, plc3:LoDashStatic, arg4:T4):Function2<T1, T3, R> { })
	@:overload(function<T1, T2, T3, T4, R>(func:Function4<T1, T2, T3, T4, R>, arg1:T1, arg2:T2, plc3:LoDashStatic, arg4:T4):Function1<T3, R> { })
	@:overload(function<T1, T2, T3, T4, R>(func:Function4<T1, T2, T3, T4, R>, plc1:LoDashStatic, plc2:LoDashStatic, arg3:T3, arg4:T4):Function2<T1, T2, R> { })
	@:overload(function<T1, T2, T3, T4, R>(func:Function4<T1, T2, T3, T4, R>, arg1:T1, plc2:LoDashStatic, arg3:T3, arg4:T4):Function1<T2, R> { })
	@:overload(function<T1, T2, T3, T4, R>(func:Function4<T1, T2, T3, T4, R>, plc1:LoDashStatic, arg2:T2, arg3:T3, arg4:T4):Function1<T1, R> { })
	@:overload(function<TS, R>(func:(ts:haxe.extern.Rest<Any>) -> R):(ts:haxe.extern.Rest<Any>) -> R { })
	@:overload(function<TS, T1, R>(func:(t1:T1, ts:haxe.extern.Rest<Any>) -> R, arg1:T1):(ts:haxe.extern.Rest<Any>) -> R { })
	@:overload(function<TS, T1, T2, R>(func:(t1:T1, t2:T2, ts:haxe.extern.Rest<Any>) -> R, t1:T1, t2:T2):(ts:haxe.extern.Rest<Any>) -> R { })
	@:overload(function<TS, T1, T2, T3, R>(func:(t1:T1, t2:T2, t3:T3, ts:haxe.extern.Rest<Any>) -> R, t1:T1, t2:T2, t3:T3):(ts:haxe.extern.Rest<Any>) -> R { })
	@:overload(function<TS, T1, T2, T3, T4, R>(func:(t1:T1, t2:T2, t3:T3, t4:T4, ts:haxe.extern.Rest<Any>) -> R, t1:T1, t2:T2, t3:T3, t4:T4):(ts:haxe.extern.Rest<Any>) -> R { })
	@:selfCall
	function call<T1, T2, R>(func:Function2<T1, T2, R>, plc1:LoDashStatic, arg2:T2):Function1<T1, R>;
	var placeholder : LoDashStatic;
};