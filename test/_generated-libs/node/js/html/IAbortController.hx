package js.html;

/**
	The **`AbortController`** interface represents a controller object that allows you to abort one or more Web requests as and when desired.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/AbortController)
**/
typedef IAbortController = {
	/**
		The **`signal`** read-only property of the AbortController interface returns an AbortSignal object instance, which can be used to communicate with/abort an asynchronous operation as desired.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AbortController/signal)
	**/
	final signal : js.html.AbortSignal;
	/**
		The **`abort()`** method of the AbortController interface aborts an asynchronous operation before it has completed.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/AbortController/abort)
	**/
	function abort(?reason:Dynamic):Void;
};