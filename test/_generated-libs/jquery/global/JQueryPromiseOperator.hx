package global;
typedef JQueryPromiseOperator<T, U> = {
	@:selfCall
	function call(callback1:global.jquery.TypeOrArray<JQueryPromiseCallback<T>>, callbacksN:haxe.extern.Rest<global.jquery.TypeOrArray<JQueryPromiseCallback<Dynamic>>>):JQueryPromise<U>;
};