package js.html;

/**
	The **`ViewTransition`** interface of the View Transition API represents an active view transition, and provides functionality to react to the transition reaching different states (e.g., ready to run the animation, or animation finished) or skip the transition altogether.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/ViewTransition)
**/
typedef IViewTransition = {
	/**
		The **`finished`** read-only property of the `finished` will only reject in the case of a same-document (SPA) transition, if the callback passed to Document.startViewTransition() throws or returns a promise that rejects.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ViewTransition/finished)
	**/
	final finished : js.lib.Promise<ts.Undefined>;
	/**
		The **`ready`** read-only property of the `ready` will reject if the transition cannot begin.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ViewTransition/ready)
	**/
	final ready : js.lib.Promise<ts.Undefined>;
	var types : ViewTransitionTypeSet;
	/**
		The **`updateCallbackDone`** read-only property of the `updateCallbackDone` is useful when you don't care about the success/failure of a same-document (SPA) view transition animation, and just want to know if and when the DOM is updated.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ViewTransition/updateCallbackDone)
	**/
	final updateCallbackDone : js.lib.Promise<ts.Undefined>;
	/**
		The **`skipTransition()`** method of the ```js-nolint skipTransition() ``` None.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/ViewTransition/skipTransition)
	**/
	function skipTransition():Void;
};