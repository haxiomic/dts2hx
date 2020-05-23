package global.jquery.ajax;

typedef XHRFields = {
	@:optional
	var msCaching : String;
	/**
		Can be set to a time in milliseconds. When set to a non-zero value will cause fetching to terminate after the given time has passed. When the time has passed, the request has not yet completed, and the synchronous flag is unset, a timeout event will then be dispatched, or a "TimeoutError" DOMException will be thrown otherwise (for the send() method).
		
		When set: throws an "InvalidAccessError" DOMException if the synchronous flag is set and current global object is a Window object.
	**/
	@:optional
	var timeout : Float;
	@:optional
	dynamic function onreadystatechange(ev:js.html.Event):Dynamic;
	/**
		Returns the response type.
		
		Can be set to change the response type. Values are: the empty string (default), "arraybuffer", "blob", "document", "json", and "text".
		
		When set: setting to "document" is ignored if current global object is not a Window object.
		
		When set: throws an "InvalidStateError" DOMException if state is loading or done.
		
		When set: throws an "InvalidAccessError" DOMException if the synchronous flag is set and current global object is a Window object.
	**/
	@:optional
	var responseType : js.html.XMLHttpRequestResponseType;
	/**
		True when credentials are to be included in a cross-origin request. False when they are to be excluded in a cross-origin request and when cookies are to be ignored in its response. Initially false.
		
		When set: throws an "InvalidStateError" DOMException if state is not unsent or opened, or if the send() flag is set.
	**/
	@:optional
	var withCredentials : Bool;
};