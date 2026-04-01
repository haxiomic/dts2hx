package global.jquery;

typedef JqXHR<TResolve> = {
	@:optional
	var responseJSON : Dynamic;
	/**
		Determine the current state of a Deferred object.
	**/
	function state():String;
	function statusCode(map:global.jquery.ajax.StatusCodeCallbacks<Dynamic>):Void;
	/**
		Add handlers to be called when the Deferred object is either resolved or rejected.
	**/
	function always(alwaysCallback:TypeOrArray<global.jquery.deferred.CallbackBase<ts.AnyOf2<JqXHR<TResolve>, TResolve>, String, ts.AnyOf2<String, JqXHR<TResolve>>, ts.Never>>, alwaysCallbacks:haxe.extern.Rest<TypeOrArray<global.jquery.deferred.CallbackBase<ts.AnyOf2<JqXHR<TResolve>, TResolve>, String, ts.AnyOf2<String, JqXHR<TResolve>>, ts.Never>>>):JqXHR<TResolve>;
	/**
		Add handlers to be called when the Deferred object is resolved.
	**/
	function done(doneCallback:TypeOrArray<global.jquery.deferred.CallbackBase<TResolve, global.jquery.ajax.SuccessTextStatus, JqXHR<TResolve>, ts.Never>>, doneCallbacks:haxe.extern.Rest<TypeOrArray<global.jquery.deferred.CallbackBase<TResolve, global.jquery.ajax.SuccessTextStatus, JqXHR<TResolve>, ts.Never>>>):JqXHR<TResolve>;
	/**
		Add handlers to be called when the Deferred object is rejected.
	**/
	function fail(failCallback:TypeOrArray<global.jquery.deferred.CallbackBase<JqXHR<TResolve>, global.jquery.ajax.ErrorTextStatus, String, ts.Never>>, failCallbacks:haxe.extern.Rest<TypeOrArray<global.jquery.deferred.CallbackBase<JqXHR<TResolve>, global.jquery.ajax.ErrorTextStatus, String, ts.Never>>>):JqXHR<TResolve>;
	/**
		Add handlers to be called when the Deferred object generates progress notifications.
	**/
	function progress(progressCallback:TypeOrArray<global.jquery.deferred.CallbackBase<ts.Never, ts.Never, ts.Never, ts.Never>>, progressCallbacks:haxe.extern.Rest<TypeOrArray<global.jquery.deferred.CallbackBase<ts.Never, ts.Never, ts.Never, ts.Never>>>):JqXHR<TResolve>;
	/**
		Return a Deferred's Promise object.
	**/
	@:overload(function():JqXHR<TResolve> { })
	function promise<TTarget:(Dynamic)>(target:TTarget):Dynamic;
	/**
		Utility method to filter and/or chain Deferreds.
	**/
	@:overload(function<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF, ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:Dynamic, failFilter:(t:JqXHR<TResolve>, u:global.jquery.ajax.ErrorTextStatus, v:String, s:haxe.extern.Rest<ts.Never>) -> ts.AnyOf3<PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, Thenable<AJF>, AJF>, progressFilter:(t:ts.Never, u:ts.Never, v:ts.Never, s:haxe.extern.Rest<ts.Never>) -> ts.AnyOf3<PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, Thenable<ANP>, ANP>):PromiseBase<ts.AnyOf2<ARF, ARP>, ts.AnyOf2<AJF, AJP>, ts.AnyOf2<ANP, ANF>, ts.AnyOf2<BRF, BRP>, ts.AnyOf2<BJF, BJP>, ts.AnyOf2<BNF, BNP>, ts.AnyOf2<CRF, CRP>, ts.AnyOf2<CJF, CJP>, ts.AnyOf2<CNF, CNP>, ts.AnyOf2<RRF, RRP>, ts.AnyOf2<RJF, RJP>, ts.AnyOf2<RNF, RNP>> { })
	@:overload(function<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND, ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:(t:TResolve, u:global.jquery.ajax.SuccessTextStatus, v:JqXHR<TResolve>, s:haxe.extern.Rest<ts.Never>) -> ts.AnyOf3<PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, Thenable<ARD>, ARD>, failFilter:Dynamic, progressFilter:(t:ts.Never, u:ts.Never, v:ts.Never, s:haxe.extern.Rest<ts.Never>) -> ts.AnyOf3<PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, Thenable<ANP>, ANP>):PromiseBase<ts.AnyOf2<ARD, ARP>, ts.AnyOf2<AJD, AJP>, ts.AnyOf2<ANP, AND>, ts.AnyOf2<BRD, BRP>, ts.AnyOf2<BJD, BJP>, ts.AnyOf2<BND, BNP>, ts.AnyOf2<CRD, CRP>, ts.AnyOf2<CJD, CJP>, ts.AnyOf2<CND, CNP>, ts.AnyOf2<RRD, RRP>, ts.AnyOf2<RJD, RJP>, ts.AnyOf2<RND, RNP>> { })
	@:overload(function<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:Dynamic, failFilter:Dynamic, ?progressFilter:(t:ts.Never, u:ts.Never, v:ts.Never, s:haxe.extern.Rest<ts.Never>) -> ts.AnyOf3<PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, Thenable<ANP>, ANP>):PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP> { })
	@:overload(function<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND, ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>(doneFilter:(t:TResolve, u:global.jquery.ajax.SuccessTextStatus, v:JqXHR<TResolve>, s:haxe.extern.Rest<ts.Never>) -> ts.AnyOf3<PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, Thenable<ARD>, ARD>, failFilter:(t:JqXHR<TResolve>, u:global.jquery.ajax.ErrorTextStatus, v:String, s:haxe.extern.Rest<ts.Never>) -> ts.AnyOf3<PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, Thenable<AJF>, AJF>, ?progressFilter:ts.Never):PromiseBase<ts.AnyOf2<ARD, ARF>, ts.AnyOf2<AJF, AJD>, ts.AnyOf2<AND, ANF>, ts.AnyOf2<BRD, BRF>, ts.AnyOf2<BJD, BJF>, ts.AnyOf2<BND, BNF>, ts.AnyOf2<CRD, CRF>, ts.AnyOf2<CJD, CJF>, ts.AnyOf2<CND, CNF>, ts.AnyOf2<RRD, RRF>, ts.AnyOf2<RJD, RJF>, ts.AnyOf2<RND, RNF>> { })
	@:overload(function<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>(doneFilter:Dynamic, failFilter:(t:JqXHR<TResolve>, u:global.jquery.ajax.ErrorTextStatus, v:String, s:haxe.extern.Rest<ts.Never>) -> ts.AnyOf3<PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, Thenable<AJF>, AJF>, ?progressFilter:ts.Never):PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF> { })
	@:overload(function<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>(doneFilter:(t:TResolve, u:global.jquery.ajax.SuccessTextStatus, v:JqXHR<TResolve>, s:haxe.extern.Rest<ts.Never>) -> ts.AnyOf3<PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, Thenable<ARD>, ARD>, ?failFilter:ts.Never, ?progressFilter:ts.Never):PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND> { })
	function pipe<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND, ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF, ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:(t:TResolve, u:global.jquery.ajax.SuccessTextStatus, v:JqXHR<TResolve>, s:haxe.extern.Rest<ts.Never>) -> ts.AnyOf3<PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, Thenable<ARD>, ARD>, failFilter:(t:JqXHR<TResolve>, u:global.jquery.ajax.ErrorTextStatus, v:String, s:haxe.extern.Rest<ts.Never>) -> ts.AnyOf3<PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, Thenable<AJF>, AJF>, progressFilter:(t:ts.Never, u:ts.Never, v:ts.Never, s:haxe.extern.Rest<ts.Never>) -> ts.AnyOf3<PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, Thenable<ANP>, ANP>):PromiseBase<ts.AnyOf3<ARD, ARF, ARP>, ts.AnyOf3<AJF, AJD, AJP>, ts.AnyOf3<ANP, AND, ANF>, ts.AnyOf3<BRD, BRF, BRP>, ts.AnyOf3<BJD, BJF, BJP>, ts.AnyOf3<BND, BNF, BNP>, ts.AnyOf3<CRD, CRF, CRP>, ts.AnyOf3<CJD, CJF, CJP>, ts.AnyOf3<CND, CNF, CNP>, ts.AnyOf3<RRD, RRF, RRP>, ts.AnyOf3<RJD, RJF, RJP>, ts.AnyOf3<RND, RNF, RNP>>;
	/**
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
	**/
	@:overload(function<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF, ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:Dynamic, failFilter:(t:JqXHR<TResolve>, u:global.jquery.ajax.ErrorTextStatus, v:String, s:haxe.extern.Rest<ts.Never>) -> ts.AnyOf3<PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, Thenable<ARF>, ARF>, progressFilter:(t:ts.Never, u:ts.Never, v:ts.Never, s:haxe.extern.Rest<ts.Never>) -> ts.AnyOf3<PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, Thenable<ANP>, ANP>):PromiseBase<ts.AnyOf2<ARF, ARP>, ts.AnyOf2<AJF, AJP>, ts.AnyOf2<ANP, ANF>, ts.AnyOf2<BRF, BRP>, ts.AnyOf2<BJF, BJP>, ts.AnyOf2<BNF, BNP>, ts.AnyOf2<CRF, CRP>, ts.AnyOf2<CJF, CJP>, ts.AnyOf2<CNF, CNP>, ts.AnyOf2<RRF, RRP>, ts.AnyOf2<RJF, RJP>, ts.AnyOf2<RNF, RNP>> { })
	@:overload(function<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND, ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:(t:TResolve, u:global.jquery.ajax.SuccessTextStatus, v:JqXHR<TResolve>, s:haxe.extern.Rest<ts.Never>) -> ts.AnyOf3<PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, Thenable<ARD>, ARD>, failFilter:Dynamic, progressFilter:(t:ts.Never, u:ts.Never, v:ts.Never, s:haxe.extern.Rest<ts.Never>) -> ts.AnyOf3<PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, Thenable<ANP>, ANP>):PromiseBase<ts.AnyOf2<ARD, ARP>, ts.AnyOf2<AJD, AJP>, ts.AnyOf2<ANP, AND>, ts.AnyOf2<BRD, BRP>, ts.AnyOf2<BJD, BJP>, ts.AnyOf2<BND, BNP>, ts.AnyOf2<CRD, CRP>, ts.AnyOf2<CJD, CJP>, ts.AnyOf2<CND, CNP>, ts.AnyOf2<RRD, RRP>, ts.AnyOf2<RJD, RJP>, ts.AnyOf2<RND, RNP>> { })
	@:overload(function<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:Dynamic, failFilter:Dynamic, ?progressFilter:(t:ts.Never, u:ts.Never, v:ts.Never, s:haxe.extern.Rest<ts.Never>) -> ts.AnyOf3<PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, Thenable<ANP>, ANP>):PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP> { })
	@:overload(function<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND, ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>(doneFilter:(t:TResolve, u:global.jquery.ajax.SuccessTextStatus, v:JqXHR<TResolve>, s:haxe.extern.Rest<ts.Never>) -> ts.AnyOf3<PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, Thenable<ARD>, ARD>, failFilter:(t:JqXHR<TResolve>, u:global.jquery.ajax.ErrorTextStatus, v:String, s:haxe.extern.Rest<ts.Never>) -> ts.AnyOf3<PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, Thenable<ARF>, ARF>, ?progressFilter:ts.Never):PromiseBase<ts.AnyOf2<ARD, ARF>, ts.AnyOf2<AJD, AJF>, ts.AnyOf2<AND, ANF>, ts.AnyOf2<BRD, BRF>, ts.AnyOf2<BJD, BJF>, ts.AnyOf2<BND, BNF>, ts.AnyOf2<CRD, CRF>, ts.AnyOf2<CJD, CJF>, ts.AnyOf2<CND, CNF>, ts.AnyOf2<RRD, RRF>, ts.AnyOf2<RJD, RJF>, ts.AnyOf2<RND, RNF>> { })
	@:overload(function<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>(doneFilter:Dynamic, failFilter:(t:JqXHR<TResolve>, u:global.jquery.ajax.ErrorTextStatus, v:String, s:haxe.extern.Rest<ts.Never>) -> ts.AnyOf3<PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, Thenable<ARF>, ARF>, ?progressFilter:ts.Never):PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF> { })
	@:overload(function<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>(doneFilter:(t:TResolve, u:global.jquery.ajax.SuccessTextStatus, v:JqXHR<TResolve>, s:haxe.extern.Rest<ts.Never>) -> ts.AnyOf3<PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, Thenable<ARD>, ARD>, ?failFilter:ts.Never, ?progressFilter:ts.Never):PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND> { })
	function then<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND, ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF, ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:(t:TResolve, u:global.jquery.ajax.SuccessTextStatus, v:JqXHR<TResolve>, s:haxe.extern.Rest<ts.Never>) -> ts.AnyOf3<PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, Thenable<ARD>, ARD>, failFilter:(t:JqXHR<TResolve>, u:global.jquery.ajax.ErrorTextStatus, v:String, s:haxe.extern.Rest<ts.Never>) -> ts.AnyOf3<PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, Thenable<ARF>, ARF>, progressFilter:(t:ts.Never, u:ts.Never, v:ts.Never, s:haxe.extern.Rest<ts.Never>) -> ts.AnyOf3<PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, Thenable<ANP>, ANP>):PromiseBase<ts.AnyOf3<ARD, ARF, ARP>, ts.AnyOf3<AJD, AJF, AJP>, ts.AnyOf3<ANP, AND, ANF>, ts.AnyOf3<BRD, BRF, BRP>, ts.AnyOf3<BJD, BJF, BJP>, ts.AnyOf3<BND, BNF, BNP>, ts.AnyOf3<CRD, CRF, CRP>, ts.AnyOf3<CJD, CJF, CJP>, ts.AnyOf3<CND, CNF, CNP>, ts.AnyOf3<RRD, RRF, RRP>, ts.AnyOf3<RJD, RJF, RJP>, ts.AnyOf3<RND, RNF, RNP>>;
	/**
		Add handlers to be called when the Deferred object is rejected.
	**/
	@:native("catch")
	function catch_<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>(?failFilter:(t:JqXHR<TResolve>, u:global.jquery.ajax.ErrorTextStatus, v:String, s:haxe.extern.Rest<ts.Never>) -> ts.AnyOf3<PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, Thenable<ARF>, ARF>):PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>;
	/**
		The **`XMLHttpRequest.abort()`** method aborts the request if it has already been sent. When a request is aborted, its readyState is changed to XMLHttpRequest.UNSENT (0) and the request's status code is set to 0.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/XMLHttpRequest/abort)
	**/
	dynamic function abort():Void;
	/**
		The read-only **`XMLHttpRequest.status`** property returns the numerical HTTP status code of the XMLHttpRequest's response.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/XMLHttpRequest/status)
	**/
	var status : Float;
	/**
		The **`XMLHttpRequest.readyState`** property returns the state an XMLHttpRequest client is in. An XHR client exists in one of the following states:
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/XMLHttpRequest/readyState)
	**/
	var readyState : Float;
	/**
		The read-only XMLHttpRequest property **`responseText`** returns the text received from a server following a request being sent.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/XMLHttpRequest/responseText)
	**/
	var responseText : String;
	/**
		The read-only **`XMLHttpRequest.statusText`** property returns a string containing the response's status message as returned by the HTTP server. Unlike XMLHttpRequest.status which indicates a numerical status code, this property contains the text of the response status, such as "OK" or "Not Found". If the request's readyState is in UNSENT or OPENED state, the value of statusText will be an empty string.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/XMLHttpRequest/statusText)
	**/
	var statusText : String;
	/**
		The XMLHttpRequest method **`getAllResponseHeaders()`** returns all the response headers, separated by CRLF, as a string, or returns null if no response has been received.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/XMLHttpRequest/getAllResponseHeaders)
	**/
	dynamic function getAllResponseHeaders():String;
	/**
		The XMLHttpRequest method **`getResponseHeader()`** returns the string containing the text of a particular header's value.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/XMLHttpRequest/getResponseHeader)
	**/
	dynamic function getResponseHeader(name:String):Null<String>;
	/**
		The XMLHttpRequest method **`overrideMimeType()`** specifies a MIME type other than the one provided by the server to be used instead when interpreting the data being transferred in a request.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/XMLHttpRequest/overrideMimeType)
	**/
	dynamic function overrideMimeType(mime:String):Void;
	/**
		The XMLHttpRequest method **`setRequestHeader()`** sets the value of an HTTP request header. When using setRequestHeader(), you must call it after calling open(), but before calling send(). If this method is called several times with the same header, the values are merged into one single request header.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/XMLHttpRequest/setRequestHeader)
	**/
	dynamic function setRequestHeader(name:String, value:String):Void;
	/**
		The **`XMLHttpRequest.responseXML`** read-only property returns a Document containing the HTML or XML retrieved by the request; or null if the request was unsuccessful, has not yet been sent, or if the data can't be parsed as XML or HTML.
		
		[MDN Reference](https://developer.mozilla.org/docs/Web/API/XMLHttpRequest/responseXML)
	**/
	@:optional
	var responseXML : js.html.Document;
};