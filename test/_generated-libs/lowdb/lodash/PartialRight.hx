package lodash;

typedef PartialRight = {
	@:overload(function<T1, R>(func:Function1<T1, R>):Function1<T1, R> { })
	@:overload(function<T1, R>(func:Function1<T1, R>, arg1:T1):Function0<R> { })
	@:overload(function<T1, T2, R>(func:Function2<T1, T2, R>):Function2<T1, T2, R> { })
	@:overload(function<T1, T2, R>(func:Function2<T1, T2, R>, arg1:T1, plc2:LoDashStatic):Function1<T2, R> { })
	@:overload(function<T1, T2, R>(func:Function2<T1, T2, R>, arg2:T2):Function1<T1, R> { })
	@:overload(function<T1, T2, R>(func:Function2<T1, T2, R>, arg1:T1, arg2:T2):Function0<R> { })
	@:overload(function<T1, T2, T3, R>(func:Function3<T1, T2, T3, R>):Function3<T1, T2, T3, R> { })
	@:overload(function<T1, T2, T3, R>(func:Function3<T1, T2, T3, R>, arg1:T1, plc2:LoDashStatic, plc3:LoDashStatic):Function2<T2, T3, R> { })
	@:overload(function<T1, T2, T3, R>(func:Function3<T1, T2, T3, R>, arg2:T2, plc3:LoDashStatic):Function2<T1, T3, R> { })
	@:overload(function<T1, T2, T3, R>(func:Function3<T1, T2, T3, R>, arg1:T1, arg2:T2, plc3:LoDashStatic):Function1<T3, R> { })
	@:overload(function<T1, T2, T3, R>(func:Function3<T1, T2, T3, R>, arg3:T3):Function2<T1, T2, R> { })
	@:overload(function<T1, T2, T3, R>(func:Function3<T1, T2, T3, R>, arg1:T1, plc2:LoDashStatic, arg3:T3):Function1<T2, R> { })
	@:overload(function<T1, T2, T3, R>(func:Function3<T1, T2, T3, R>, arg2:T2, arg3:T3):Function1<T1, R> { })
	@:overload(function<T1, T2, T3, R>(func:Function3<T1, T2, T3, R>, arg1:T1, arg2:T2, arg3:T3):Function0<R> { })
	@:overload(function<T1, T2, T3, T4, R>(func:Function4<T1, T2, T3, T4, R>):Function4<T1, T2, T3, T4, R> { })
	@:overload(function<T1, T2, T3, T4, R>(func:Function4<T1, T2, T3, T4, R>, arg1:T1, plc2:LoDashStatic, plc3:LoDashStatic, plc4:LoDashStatic):Function3<T2, T3, T4, R> { })
	@:overload(function<T1, T2, T3, T4, R>(func:Function4<T1, T2, T3, T4, R>, arg2:T2, plc3:LoDashStatic, plc4:LoDashStatic):Function3<T1, T3, T4, R> { })
	@:overload(function<T1, T2, T3, T4, R>(func:Function4<T1, T2, T3, T4, R>, arg1:T1, arg2:T2, plc3:LoDashStatic, plc4:LoDashStatic):Function2<T3, T4, R> { })
	@:overload(function<T1, T2, T3, T4, R>(func:Function4<T1, T2, T3, T4, R>, arg3:T3, plc4:LoDashStatic):Function3<T1, T2, T4, R> { })
	@:overload(function<T1, T2, T3, T4, R>(func:Function4<T1, T2, T3, T4, R>, arg1:T1, plc2:LoDashStatic, arg3:T3, plc4:LoDashStatic):Function2<T2, T4, R> { })
	@:overload(function<T1, T2, T3, T4, R>(func:Function4<T1, T2, T3, T4, R>, arg2:T2, arg3:T3, plc4:LoDashStatic):Function2<T1, T4, R> { })
	@:overload(function<T1, T2, T3, T4, R>(func:Function4<T1, T2, T3, T4, R>, arg1:T1, arg2:T2, arg3:T3, plc4:LoDashStatic):Function1<T4, R> { })
	@:overload(function<T1, T2, T3, T4, R>(func:Function4<T1, T2, T3, T4, R>, arg4:T4):Function3<T1, T2, T3, R> { })
	@:overload(function<T1, T2, T3, T4, R>(func:Function4<T1, T2, T3, T4, R>, arg1:T1, plc2:LoDashStatic, plc3:LoDashStatic, arg4:T4):Function2<T2, T3, R> { })
	@:overload(function<T1, T2, T3, T4, R>(func:Function4<T1, T2, T3, T4, R>, arg2:T2, plc3:LoDashStatic, arg4:T4):Function2<T1, T3, R> { })
	@:overload(function<T1, T2, T3, T4, R>(func:Function4<T1, T2, T3, T4, R>, arg1:T1, arg2:T2, plc3:LoDashStatic, arg4:T4):Function1<T3, R> { })
	@:overload(function<T1, T2, T3, T4, R>(func:Function4<T1, T2, T3, T4, R>, arg3:T3, arg4:T4):Function2<T1, T2, R> { })
	@:overload(function<T1, T2, T3, T4, R>(func:Function4<T1, T2, T3, T4, R>, arg1:T1, plc2:LoDashStatic, arg3:T3, arg4:T4):Function1<T2, R> { })
	@:overload(function<T1, T2, T3, T4, R>(func:Function4<T1, T2, T3, T4, R>, arg2:T2, arg3:T3, arg4:T4):Function1<T1, R> { })
	@:overload(function<T1, T2, T3, T4, R>(func:Function4<T1, T2, T3, T4, R>, arg1:T1, arg2:T2, arg3:T3, arg4:T4):Function0<R> { })
	@:overload(function(func:(args:haxe.extern.Rest<Dynamic>) -> Dynamic, args:haxe.extern.Rest<Dynamic>):(args:haxe.extern.Rest<Dynamic>) -> Dynamic { })
	@:selfCall
	function call<R>(func:Function0<R>):Function0<R>;
	var placeholder : LoDashStatic;
};