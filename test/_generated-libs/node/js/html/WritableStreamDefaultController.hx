package js.html;

/**
	The **`WritableStreamDefaultController`** interface of the Streams API represents a controller allowing control of a WritableStream's state.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/WritableStreamDefaultController)
**/
@:native("WritableStreamDefaultController") extern class WritableStreamDefaultController {
	function new();
	/**
		The read-only **`signal`** property of the WritableStreamDefaultController interface returns the AbortSignal associated with the controller.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WritableStreamDefaultController/signal)
	**/
	final signal : js.html.AbortSignal;
	/**
		The **`error()`** method of the with the associated stream to error.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/WritableStreamDefaultController/error)
	**/
	function error(?e:Dynamic):Void;
	static var prototype : WritableStreamDefaultController;
}