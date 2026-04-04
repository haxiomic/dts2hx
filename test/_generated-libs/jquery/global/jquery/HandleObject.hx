package global.jquery;

/**
	Many of the special event hook functions below are passed a `handleObj` object that provides more information about the event, how it was attached, and its current state. This object and its contents should be treated as read-only data, and only the properties below are documented for use by special event handlers.
**/
typedef HandleObject<TTarget, TData> = {
	/**
		The type of event, such as `"click"`. When special event mapping is used via `bindType` or `delegateType`, this will be the mapped type.
	**/
	final type : String;
	/**
		The original type name regardless of whether it was mapped via `bindType` or `delegateType`. So when a "pushy" event is mapped to "click" its `origType` would be "pushy".
	**/
	final origType : String;
	/**
		Namespace(s), if any, provided when the event was attached, such as `"myPlugin"`. When multiple namespaces are given, they are separated by periods and sorted in ascending alphabetical order. If no namespaces are provided, this property is an empty string.
	**/
	final namespace : String;
	/**
		For delegated events, this is the selector used to filter descendant elements and determine if the handler should be called. For directly bound events, this property is `null`.
	**/
	final selector : Null<String>;
	/**
		The data, if any, passed to jQuery during event binding, e.g. `{ myData: 42 }`. If the data argument was omitted or `undefined`, this property is `undefined` as well.
	**/
	final data : TData;
	/**
		Event handler function passed to jQuery during event binding. If `false` was passed during event binding, the handler refers to a single shared function that simply returns `false`.
	**/
	function handler(t:TriggeredEvent<TTarget, TData, Dynamic, Dynamic>, args:haxe.extern.Rest<Dynamic>):Dynamic;
};