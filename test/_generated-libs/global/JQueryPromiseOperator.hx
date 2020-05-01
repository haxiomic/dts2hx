package global;
extern typedef JQueryPromiseOperator<T, U> = {
	@:selfCall
	function call(callback1:ts.AnyOf2<JQueryPromiseCallback<T>, std.Array<JQueryPromiseCallback<T>>>, callbacksN:haxe.extern.Rest<ts.AnyOf2<JQueryPromiseCallback<Any>, std.Array<JQueryPromiseCallback<Any>>>>):JQueryPromise<U>;
};