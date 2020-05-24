package vscode;

/**
	Represents a typed event.
	
	A function that represents an event to which you subscribe by calling it with
	a listener function as argument.
**/
typedef Event<T> = ts.AnyOf3<(listener:(e:T) -> Dynamic) -> Disposable, (listener:(e:T) -> Dynamic, thisArgs:Dynamic) -> Disposable, (listener:(e:T) -> Dynamic, thisArgs:Dynamic, disposables:Array<Disposable>) -> Disposable>;