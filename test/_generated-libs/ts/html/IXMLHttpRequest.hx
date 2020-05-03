package ts.html;
/**
	Use XMLHttpRequest (XHR) objects to interact with servers. You can retrieve data from a URL without having to do a full page refresh. This enables a Web page to update just part of a page without disrupting what the user is doing.
**/
typedef IXMLHttpRequest = {
	var onreadystatechange : Null<(ev:IEvent) -> Dynamic>;
	/**
		Returns client's state.
	**/
	final readyState : Float;
	/**
		Returns the response's body.
	**/
	final response : Dynamic;
	/**
		Returns the text response.
		
		Throws an "InvalidStateError" DOMException if responseType is not the empty string or "text".
	**/
	final responseText : String;
	/**
		Returns the response type.
		
		Can be set to change the response type. Values are: the empty string (default), "arraybuffer", "blob", "document", "json", and "text".
		
		When set: setting to "document" is ignored if current global object is not a Window object.
		
		When set: throws an "InvalidStateError" DOMException if state is loading or done.
		
		When set: throws an "InvalidAccessError" DOMException if the synchronous flag is set and current global object is a Window object.
	**/
	var responseType : XMLHttpRequestResponseType;
	final responseURL : String;
	/**
		Returns the document response.
		
		Throws an "InvalidStateError" DOMException if responseType is not the empty string or "document".
	**/
	final responseXML : Null<IDocument>;
	final status : Float;
	final statusText : String;
	/**
		Can be set to a time in milliseconds. When set to a non-zero value will cause fetching to terminate after the given time has passed. When the time has passed, the request has not yet completed, and the synchronous flag is unset, a timeout event will then be dispatched, or a "TimeoutError" DOMException will be thrown otherwise (for the send() method).
		
		When set: throws an "InvalidAccessError" DOMException if the synchronous flag is set and current global object is a Window object.
	**/
	var timeout : Float;
	/**
		Returns the associated XMLHttpRequestUpload object. It can be used to gather transmission information when data is transferred to a server.
	**/
	final upload : IXMLHttpRequestUpload;
	/**
		True when credentials are to be included in a cross-origin request. False when they are to be excluded in a cross-origin request and when cookies are to be ignored in its response. Initially false.
		
		When set: throws an "InvalidStateError" DOMException if state is not unsent or opened, or if the send() flag is set.
	**/
	var withCredentials : Bool;
	/**
		Cancels any network activity.
	**/
	function abort():Void;
	function getAllResponseHeaders():String;
	function getResponseHeader(name:String):Null<String>;
	/**
		Sets the request method, request URL, and synchronous flag.
		
		Throws a "SyntaxError" DOMException if either method is not a valid HTTP method or url cannot be parsed.
		
		Throws a "SecurityError" DOMException if method is a case-insensitive match for `CONNECT`, `TRACE`, or `TRACK`.
		
		Throws an "InvalidAccessError" DOMException if async is false, current global object is a Window object, and the timeout attribute is not zero or the responseType attribute is not the empty string.
	**/
	@:overload(function(method:String, url:String, async:Bool, ?username:String, ?password:String):Void { })
	function open(method:String, url:String):Void;
	/**
		Acts as if the `Content-Type` header value for response is mime. (It does not actually change the header though.)
		
		Throws an "InvalidStateError" DOMException if state is loading or done.
	**/
	function overrideMimeType(mime:String):Void;
	/**
		Initiates the request. The body argument provides the request body, if any, and is ignored if the request method is GET or HEAD.
		
		Throws an "InvalidStateError" DOMException if either state is not opened or the send() flag is set.
	**/
	function send(?body:ts.AnyOf8<String, IDocument, ts.lib.IArrayBuffer, IBlob, ts.lib.IFormData, ts.lib.IURLSearchParams, ts.lib.ArrayBufferView, IReadableStream<ts.lib.IUint8Array>>):Void;
	/**
		Combines a header in author request headers.
		
		Throws an "InvalidStateError" DOMException if either state is not opened or the send() flag is set.
		
		Throws a "SyntaxError" DOMException if name is not a header name or if value is not a header value.
	**/
	function setRequestHeader(name:String, value:String):Void;
	final DONE : Float;
	final HEADERS_RECEIVED : Float;
	final LOADING : Float;
	final OPENED : Float;
	final UNSENT : Float;
	/**
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
		
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
		
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
		
		Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
		
		The options argument sets listener-specific options. For compatibility this can be a boolean, in which case the method behaves exactly as if the value was specified as options's capture.
		
		When set to true, options's capture prevents callback from being invoked when the event's eventPhase attribute value is BUBBLING_PHASE. When false (or not present), callback will not be invoked when event's eventPhase attribute value is CAPTURING_PHASE. Either way, callback will be invoked if event's eventPhase attribute value is AT_TARGET.
		
		When set to true, options's passive indicates that the callback will not cancel the event by invoking preventDefault(). This is used to enable performance optimizations described in §2.8 Observing event listeners.
		
		When set to true, options's once indicates that the callback will only be invoked once after which the event listener will be removed.
		
		The event listener is appended to target's event listener list and is not appended if it has the same type, callback, and capture.
	**/
	@:overload(function(type:String, listener:EventListenerOrEventListenerObject, ?options:ts.AnyOf2<Bool, AddEventListenerOptions>):Void { })
	function addEventListener<K>(type:K, listener:(ev:Dynamic) -> Dynamic, ?options:ts.AnyOf2<Bool, AddEventListenerOptions>):Void;
	/**
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
		
		Removes the event listener in target's event listener list with the same type, callback, and options.
	**/
	@:overload(function(type:String, listener:EventListenerOrEventListenerObject, ?options:ts.AnyOf2<Bool, EventListenerOptions>):Void { })
	function removeEventListener<K>(type:K, listener:(ev:Dynamic) -> Dynamic, ?options:ts.AnyOf2<Bool, EventListenerOptions>):Void;
	var onabort : Null<(ev:IProgressEvent<IEventTarget>) -> Dynamic>;
	var onerror : Null<(ev:IProgressEvent<IEventTarget>) -> Dynamic>;
	var onload : Null<(ev:IProgressEvent<IEventTarget>) -> Dynamic>;
	var onloadend : Null<(ev:IProgressEvent<IEventTarget>) -> Dynamic>;
	var onloadstart : Null<(ev:IProgressEvent<IEventTarget>) -> Dynamic>;
	var onprogress : Null<(ev:IProgressEvent<IEventTarget>) -> Dynamic>;
	var ontimeout : Null<(ev:IProgressEvent<IEventTarget>) -> Dynamic>;
	/**
		Dispatches a synthetic event event to target and returns true if either event's cancelable attribute value is false or its preventDefault() method was not invoked, and false otherwise.
	**/
	function dispatchEvent(event:IEvent):Bool;
};