package global;

typedef JQueryXHR = {
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
	function always(alwaysCallback:global.jquery.TypeOrArray<global.jquery.deferred.CallbackBase<Dynamic, global.jquery.ajax.TextStatus, ts.AnyOf2<String, global.jquery.JqXHR<Dynamic>>, Any>>, alwaysCallbacks:haxe.extern.Rest<global.jquery.TypeOrArray<global.jquery.deferred.CallbackBase<Dynamic, global.jquery.ajax.TextStatus, ts.AnyOf2<String, global.jquery.JqXHR<Dynamic>>, Any>>>):JQueryXHR;
	/**
		Add handlers to be called when the Deferred object is resolved.
	**/
	function done(doneCallback:global.jquery.TypeOrArray<global.jquery.deferred.CallbackBase<Dynamic, global.jquery.ajax.SuccessTextStatus, global.jquery.JqXHR<Dynamic>, Any>>, doneCallbacks:haxe.extern.Rest<global.jquery.TypeOrArray<global.jquery.deferred.CallbackBase<Dynamic, global.jquery.ajax.SuccessTextStatus, global.jquery.JqXHR<Dynamic>, Any>>>):JQueryXHR;
	/**
		Add handlers to be called when the Deferred object is rejected.
	**/
	function fail(failCallback:global.jquery.TypeOrArray<global.jquery.deferred.CallbackBase<global.jquery.JqXHR<Dynamic>, global.jquery.ajax.ErrorTextStatus, String, Any>>, failCallbacks:haxe.extern.Rest<global.jquery.TypeOrArray<global.jquery.deferred.CallbackBase<global.jquery.JqXHR<Dynamic>, global.jquery.ajax.ErrorTextStatus, String, Any>>>):JQueryXHR;
	/**
		Add handlers to be called when the Deferred object generates progress notifications.
	**/
	function progress(progressCallback:global.jquery.TypeOrArray<global.jquery.deferred.CallbackBase<Any, Any, Any, Any>>, progressCallbacks:haxe.extern.Rest<global.jquery.TypeOrArray<global.jquery.deferred.CallbackBase<Any, Any, Any, Any>>>):JQueryXHR;
	/**
		Return a Deferred's Promise object.
		
		Return a Deferred's Promise object.
	**/
	@:overload(function():JQueryXHR { })
	function promise<TTarget>(target:TTarget):Dynamic;
	/**
		Utility method to filter and/or chain Deferreds.
		
		Utility method to filter and/or chain Deferreds.
		
		Utility method to filter and/or chain Deferreds.
		
		Utility method to filter and/or chain Deferreds.
		
		Utility method to filter and/or chain Deferreds.
		
		Utility method to filter and/or chain Deferreds.
		
		Utility method to filter and/or chain Deferreds.
	**/
	@:overload(function<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF, ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:Dynamic, failFilter:(t:global.jquery.JqXHR<Dynamic>, u:global.jquery.ajax.ErrorTextStatus, v:String, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<global.jquery.PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, global.jquery.Thenable<AJF>, AJF>, progressFilter:(t:Any, u:Any, v:Any, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<global.jquery.PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, global.jquery.Thenable<ANP>, ANP>):global.jquery.PromiseBase<ts.AnyOf2<ARF, ARP>, ts.AnyOf2<AJF, AJP>, ts.AnyOf2<ANF, ANP>, ts.AnyOf2<BRF, BRP>, ts.AnyOf2<BJF, BJP>, ts.AnyOf2<BNF, BNP>, ts.AnyOf2<CRF, CRP>, ts.AnyOf2<CJF, CJP>, ts.AnyOf2<CNF, CNP>, ts.AnyOf2<RRF, RRP>, ts.AnyOf2<RJF, RJP>, ts.AnyOf2<RNF, RNP>> { })
	@:overload(function<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND, ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:(t:Dynamic, u:global.jquery.ajax.SuccessTextStatus, v:global.jquery.JqXHR<Dynamic>, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<global.jquery.PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, global.jquery.Thenable<ARD>, ARD>, failFilter:Dynamic, progressFilter:(t:Any, u:Any, v:Any, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<global.jquery.PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, global.jquery.Thenable<ANP>, ANP>):global.jquery.PromiseBase<ts.AnyOf2<ARD, ARP>, ts.AnyOf2<AJD, AJP>, ts.AnyOf2<AND, ANP>, ts.AnyOf2<BRD, BRP>, ts.AnyOf2<BJD, BJP>, ts.AnyOf2<BND, BNP>, ts.AnyOf2<CRD, CRP>, ts.AnyOf2<CJD, CJP>, ts.AnyOf2<CND, CNP>, ts.AnyOf2<RRD, RRP>, ts.AnyOf2<RJD, RJP>, ts.AnyOf2<RND, RNP>> { })
	@:overload(function<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:Dynamic, failFilter:Dynamic, ?progressFilter:(t:Any, u:Any, v:Any, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<global.jquery.PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, global.jquery.Thenable<ANP>, ANP>):global.jquery.PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP> { })
	@:overload(function<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND, ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>(doneFilter:(t:Dynamic, u:global.jquery.ajax.SuccessTextStatus, v:global.jquery.JqXHR<Dynamic>, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<global.jquery.PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, global.jquery.Thenable<ARD>, ARD>, failFilter:(t:global.jquery.JqXHR<Dynamic>, u:global.jquery.ajax.ErrorTextStatus, v:String, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<global.jquery.PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, global.jquery.Thenable<AJF>, AJF>, ?progressFilter:Any):global.jquery.PromiseBase<ts.AnyOf2<ARD, ARF>, ts.AnyOf2<AJD, AJF>, ts.AnyOf2<AND, ANF>, ts.AnyOf2<BRD, BRF>, ts.AnyOf2<BJD, BJF>, ts.AnyOf2<BND, BNF>, ts.AnyOf2<CRD, CRF>, ts.AnyOf2<CJD, CJF>, ts.AnyOf2<CND, CNF>, ts.AnyOf2<RRD, RRF>, ts.AnyOf2<RJD, RJF>, ts.AnyOf2<RND, RNF>> { })
	@:overload(function<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>(doneFilter:Dynamic, failFilter:(t:global.jquery.JqXHR<Dynamic>, u:global.jquery.ajax.ErrorTextStatus, v:String, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<global.jquery.PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, global.jquery.Thenable<AJF>, AJF>, ?progressFilter:Any):global.jquery.PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF> { })
	@:overload(function<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>(doneFilter:(t:Dynamic, u:global.jquery.ajax.SuccessTextStatus, v:global.jquery.JqXHR<Dynamic>, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<global.jquery.PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, global.jquery.Thenable<ARD>, ARD>, ?failFilter:Any, ?progressFilter:Any):global.jquery.PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND> { })
	function pipe<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND, ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF, ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:(t:Dynamic, u:global.jquery.ajax.SuccessTextStatus, v:global.jquery.JqXHR<Dynamic>, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<global.jquery.PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, global.jquery.Thenable<ARD>, ARD>, failFilter:(t:global.jquery.JqXHR<Dynamic>, u:global.jquery.ajax.ErrorTextStatus, v:String, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<global.jquery.PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, global.jquery.Thenable<AJF>, AJF>, progressFilter:(t:Any, u:Any, v:Any, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<global.jquery.PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, global.jquery.Thenable<ANP>, ANP>):global.jquery.PromiseBase<ts.AnyOf3<ARD, ARF, ARP>, ts.AnyOf3<AJD, AJF, AJP>, ts.AnyOf3<AND, ANF, ANP>, ts.AnyOf3<BRD, BRF, BRP>, ts.AnyOf3<BJD, BJF, BJP>, ts.AnyOf3<BND, BNF, BNP>, ts.AnyOf3<CRD, CRF, CRP>, ts.AnyOf3<CJD, CJF, CJP>, ts.AnyOf3<CND, CNF, CNP>, ts.AnyOf3<RRD, RRF, RRP>, ts.AnyOf3<RJD, RJF, RJP>, ts.AnyOf3<RND, RNF, RNP>>;
	/**
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
		
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
		
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
		
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
		
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
		
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
		
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
	**/
	@:overload(function<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF, ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:Dynamic, failFilter:(t:global.jquery.JqXHR<Dynamic>, u:global.jquery.ajax.ErrorTextStatus, v:String, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<global.jquery.PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, global.jquery.Thenable<ARF>, ARF>, progressFilter:(t:Any, u:Any, v:Any, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<global.jquery.PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, global.jquery.Thenable<ANP>, ANP>):global.jquery.PromiseBase<ts.AnyOf2<ARF, ARP>, ts.AnyOf2<AJF, AJP>, ts.AnyOf2<ANF, ANP>, ts.AnyOf2<BRF, BRP>, ts.AnyOf2<BJF, BJP>, ts.AnyOf2<BNF, BNP>, ts.AnyOf2<CRF, CRP>, ts.AnyOf2<CJF, CJP>, ts.AnyOf2<CNF, CNP>, ts.AnyOf2<RRF, RRP>, ts.AnyOf2<RJF, RJP>, ts.AnyOf2<RNF, RNP>> { })
	@:overload(function<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND, ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:(t:Dynamic, u:global.jquery.ajax.SuccessTextStatus, v:global.jquery.JqXHR<Dynamic>, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<global.jquery.PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, global.jquery.Thenable<ARD>, ARD>, failFilter:Dynamic, progressFilter:(t:Any, u:Any, v:Any, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<global.jquery.PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, global.jquery.Thenable<ANP>, ANP>):global.jquery.PromiseBase<ts.AnyOf2<ARD, ARP>, ts.AnyOf2<AJD, AJP>, ts.AnyOf2<AND, ANP>, ts.AnyOf2<BRD, BRP>, ts.AnyOf2<BJD, BJP>, ts.AnyOf2<BND, BNP>, ts.AnyOf2<CRD, CRP>, ts.AnyOf2<CJD, CJP>, ts.AnyOf2<CND, CNP>, ts.AnyOf2<RRD, RRP>, ts.AnyOf2<RJD, RJP>, ts.AnyOf2<RND, RNP>> { })
	@:overload(function<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:Dynamic, failFilter:Dynamic, ?progressFilter:(t:Any, u:Any, v:Any, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<global.jquery.PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, global.jquery.Thenable<ANP>, ANP>):global.jquery.PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP> { })
	@:overload(function<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND, ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>(doneFilter:(t:Dynamic, u:global.jquery.ajax.SuccessTextStatus, v:global.jquery.JqXHR<Dynamic>, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<global.jquery.PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, global.jquery.Thenable<ARD>, ARD>, failFilter:(t:global.jquery.JqXHR<Dynamic>, u:global.jquery.ajax.ErrorTextStatus, v:String, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<global.jquery.PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, global.jquery.Thenable<ARF>, ARF>, ?progressFilter:Any):global.jquery.PromiseBase<ts.AnyOf2<ARD, ARF>, ts.AnyOf2<AJD, AJF>, ts.AnyOf2<AND, ANF>, ts.AnyOf2<BRD, BRF>, ts.AnyOf2<BJD, BJF>, ts.AnyOf2<BND, BNF>, ts.AnyOf2<CRD, CRF>, ts.AnyOf2<CJD, CJF>, ts.AnyOf2<CND, CNF>, ts.AnyOf2<RRD, RRF>, ts.AnyOf2<RJD, RJF>, ts.AnyOf2<RND, RNF>> { })
	@:overload(function<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>(doneFilter:Dynamic, failFilter:(t:global.jquery.JqXHR<Dynamic>, u:global.jquery.ajax.ErrorTextStatus, v:String, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<global.jquery.PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, global.jquery.Thenable<ARF>, ARF>, ?progressFilter:Any):global.jquery.PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF> { })
	@:overload(function<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>(doneFilter:(t:Dynamic, u:global.jquery.ajax.SuccessTextStatus, v:global.jquery.JqXHR<Dynamic>, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<global.jquery.PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, global.jquery.Thenable<ARD>, ARD>, ?failFilter:Any, ?progressFilter:Any):global.jquery.PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND> { })
	function then<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND, ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF, ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:(t:Dynamic, u:global.jquery.ajax.SuccessTextStatus, v:global.jquery.JqXHR<Dynamic>, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<global.jquery.PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, global.jquery.Thenable<ARD>, ARD>, failFilter:(t:global.jquery.JqXHR<Dynamic>, u:global.jquery.ajax.ErrorTextStatus, v:String, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<global.jquery.PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, global.jquery.Thenable<ARF>, ARF>, progressFilter:(t:Any, u:Any, v:Any, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<global.jquery.PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, global.jquery.Thenable<ANP>, ANP>):global.jquery.PromiseBase<ts.AnyOf3<ARD, ARF, ARP>, ts.AnyOf3<AJD, AJF, AJP>, ts.AnyOf3<AND, ANF, ANP>, ts.AnyOf3<BRD, BRF, BRP>, ts.AnyOf3<BJD, BJF, BJP>, ts.AnyOf3<BND, BNF, BNP>, ts.AnyOf3<CRD, CRF, CRP>, ts.AnyOf3<CJD, CJF, CJP>, ts.AnyOf3<CND, CNF, CNP>, ts.AnyOf3<RRD, RRF, RRP>, ts.AnyOf3<RJD, RJF, RJP>, ts.AnyOf3<RND, RNF, RNP>>;
	/**
		Add handlers to be called when the Deferred object is rejected.
	**/
	@:native("catch")
	function catch_<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>(?failFilter:(t:global.jquery.JqXHR<Dynamic>, u:global.jquery.ajax.ErrorTextStatus, v:String, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<global.jquery.PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, global.jquery.Thenable<ARF>, ARF>):global.jquery.PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>;
	/**
		Cancels any network activity.
	**/
	dynamic function abort():Void;
	dynamic function getAllResponseHeaders():String;
	dynamic function getResponseHeader(name:String):Null<String>;
	/**
		Acts as if the `Content-Type` header value for response is mime. (It does not actually change the header though.)
		
		Throws an "InvalidStateError" DOMException if state is loading or done.
	**/
	dynamic function overrideMimeType(mime:String):Void;
	/**
		Returns client's state.
	**/
	var readyState : Float;
	/**
		Returns the text response.
		
		Throws an "InvalidStateError" DOMException if responseType is not the empty string or "text".
	**/
	var responseText : String;
	/**
		Combines a header in author request headers.
		
		Throws an "InvalidStateError" DOMException if either state is not opened or the send() flag is set.
		
		Throws a "SyntaxError" DOMException if name is not a header name or if value is not a header value.
	**/
	dynamic function setRequestHeader(name:String, value:String):Void;
	var status : Float;
	var statusText : String;
	/**
		Returns the document response.
		
		Throws an "InvalidStateError" DOMException if responseType is not the empty string or "document".
	**/
	@:optional
	var responseXML : js.html.Document;
};