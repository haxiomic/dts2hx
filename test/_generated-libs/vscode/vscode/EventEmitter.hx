package vscode;

/**
	An event emitter can be used to create and manage an [event](#Event) for others
	to subscribe to. One emitter always owns one event.
	
	Use this class if you want to provide event from within your extension, for instance
	inside a [TextDocumentContentProvider](#TextDocumentContentProvider) or when providing
	API to other extensions.
**/
@:jsRequire("vscode", "EventEmitter") extern class EventEmitter<T> {
	function new();
	/**
		The event listeners can subscribe to.
	**/
	dynamic function event(listener:(e:T) -> Dynamic, ?thisArgs:Dynamic, ?disposables:Array<Disposable>):Disposable;
	/**
		Notify all subscribers of the [event](#EventEmitter.event). Failure
		of one or more listener will not fail this function call.
	**/
	function fire(data:T):Void;
	/**
		Dispose this object and free resources.
	**/
	function dispose():Void;
	static var prototype : EventEmitter<Dynamic>;
}