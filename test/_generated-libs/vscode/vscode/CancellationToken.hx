package vscode;

/**
	A cancellation token is passed to an asynchronous or long running
	operation to request cancellation, like cancelling a request
	for completion items because the user continued to type.
	
	To get an instance of a `CancellationToken` use a
	[CancellationTokenSource](#CancellationTokenSource).
**/
typedef CancellationToken = {
	/**
		Is `true` when the token has been cancelled, `false` otherwise.
	**/
	var isCancellationRequested : Bool;
	/**
		An [event](#Event) which fires upon cancellation.
	**/
	dynamic function onCancellationRequested(listener:(e:Dynamic) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
};