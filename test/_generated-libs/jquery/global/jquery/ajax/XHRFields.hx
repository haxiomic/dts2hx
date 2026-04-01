package global.jquery.ajax;

typedef XHRFields = {
	@:optional
	var msCaching : String;
	/**
		The **`XMLHttpRequest.timeout`** property is an `unsigned long` representing the number of milliseconds a request can take before automatically being terminated.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/XMLHttpRequest/timeout)
	**/
	@:optional
	var timeout : Float;
	/**
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/XMLHttpRequest/readystatechange_event)
	**/
	@:optional
	dynamic function onreadystatechange(ev:js.html.Event):Dynamic;
	/**
		The XMLHttpRequest property **`responseType`** is an enumerated string value specifying the type of data contained in the response.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/XMLHttpRequest/responseType)
	**/
	@:optional
	var responseType : js.html.XMLHttpRequestResponseType;
	/**
		The **`XMLHttpRequest.withCredentials`** property is a boolean value that indicates whether or not cross-site `Access-Control` requests should be made using credentials such as cookies, authentication headers or TLS client certificates.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/XMLHttpRequest/withCredentials)
	**/
	@:optional
	var withCredentials : Bool;
};