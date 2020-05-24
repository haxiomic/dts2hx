package global;

/**
	Thenable is a common denominator between ES6 promises, Q, jquery.Deferred, WinJS.Promise,
	and others. This API makes no assumption about what promise library is being used which
	enables reusing existing code without migrating to a specific promise implementation. Still,
	we recommend the use of native promises which are available in this editor.
**/
typedef Thenable<T> = {
	/**
		Attaches callbacks for the resolution and/or rejection of the Promise.
	**/
	@:overload(function<TResult>(?onfulfilled:(value:T) -> ts.AnyOf2<Thenable<TResult>, TResult>, ?onrejected:(reason:Dynamic) -> Void):Thenable<TResult> { })
	function then<TResult>(?onfulfilled:(value:T) -> ts.AnyOf2<Thenable<TResult>, TResult>, ?onrejected:(reason:Dynamic) -> ts.AnyOf2<Thenable<TResult>, TResult>):Thenable<TResult>;
};