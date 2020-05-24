package global;

typedef JQueryDeferred<T> = {
	/**
		Call the progressCallbacks on a Deferred object with the given args.
	**/
	function notify(args:haxe.extern.Rest<Dynamic>):JQueryDeferred<T>;
	/**
		Call the progressCallbacks on a Deferred object with the given context and args.
	**/
	function notifyWith(context:Dynamic, ?args:js.lib.ArrayLike<Dynamic>):JQueryDeferred<T>;
	/**
		Reject a Deferred object and call any failCallbacks with the given args.
	**/
	function reject(args:haxe.extern.Rest<Dynamic>):JQueryDeferred<T>;
	/**
		Reject a Deferred object and call any failCallbacks with the given context and args.
	**/
	function rejectWith(context:Dynamic, ?args:js.lib.ArrayLike<Dynamic>):JQueryDeferred<T>;
	/**
		Resolve a Deferred object and call any doneCallbacks with the given args.
	**/
	function resolve(args:haxe.extern.Rest<T>):JQueryDeferred<T>;
	/**
		Resolve a Deferred object and call any doneCallbacks with the given context and args.
	**/
	function resolveWith(context:Dynamic, ?args:js.lib.ArrayLike<T>):JQueryDeferred<T>;
	/**
		Add handlers to be called when the Deferred object is either resolved or rejected.
	**/
	function always(alwaysCallback:global.jquery.TypeOrArray<global.jquery.deferred.Callback<Dynamic>>, alwaysCallbacks:haxe.extern.Rest<global.jquery.TypeOrArray<global.jquery.deferred.Callback<Dynamic>>>):JQueryDeferred<T>;
	/**
		Add handlers to be called when the Deferred object is resolved.
	**/
	function done(doneCallback:global.jquery.TypeOrArray<global.jquery.deferred.Callback<T>>, doneCallbacks:haxe.extern.Rest<global.jquery.TypeOrArray<global.jquery.deferred.Callback<T>>>):JQueryDeferred<T>;
	/**
		Add handlers to be called when the Deferred object is rejected.
	**/
	function fail(failCallback:global.jquery.TypeOrArray<global.jquery.deferred.Callback<Dynamic>>, failCallbacks:haxe.extern.Rest<global.jquery.TypeOrArray<global.jquery.deferred.Callback<Dynamic>>>):JQueryDeferred<T>;
	/**
		Add handlers to be called when the Deferred object generates progress notifications.
	**/
	function progress(progressCallback:global.jquery.TypeOrArray<global.jquery.deferred.Callback<Dynamic>>, progressCallbacks:haxe.extern.Rest<global.jquery.TypeOrArray<global.jquery.deferred.Callback<Dynamic>>>):JQueryDeferred<T>;
	/**
		Return a Deferred's Promise object.
		
		Return a Deferred's Promise object.
	**/
	@:overload(function():global.jquery.Promise<T, Dynamic, Dynamic> { })
	function promise<TTarget>(target:TTarget):Dynamic;
	/**
		Determine the current state of a Deferred object.
	**/
	function state():String;
	/**
		Utility method to filter and/or chain Deferreds.
		
		Utility method to filter and/or chain Deferreds.
		
		Utility method to filter and/or chain Deferreds.
		
		Utility method to filter and/or chain Deferreds.
		
		Utility method to filter and/or chain Deferreds.
		
		Utility method to filter and/or chain Deferreds.
		
		Utility method to filter and/or chain Deferreds.
	**/
	@:overload(function<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF, ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:Dynamic, failFilter:(t:haxe.extern.Rest<Dynamic>) -> ts.AnyOf3<global.jquery.PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, global.jquery.Thenable<AJF>, AJF>, progressFilter:(t:haxe.extern.Rest<Dynamic>) -> ts.AnyOf3<global.jquery.PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, global.jquery.Thenable<ANP>, ANP>):global.jquery.PromiseBase<ts.AnyOf2<ARF, ARP>, ts.AnyOf2<AJF, AJP>, ts.AnyOf2<ANF, ANP>, ts.AnyOf2<BRF, BRP>, ts.AnyOf2<BJF, BJP>, ts.AnyOf2<BNF, BNP>, ts.AnyOf2<CRF, CRP>, ts.AnyOf2<CJF, CJP>, ts.AnyOf2<CNF, CNP>, ts.AnyOf2<RRF, RRP>, ts.AnyOf2<RJF, RJP>, ts.AnyOf2<RNF, RNP>> { })
	@:overload(function<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND, ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:(t:haxe.extern.Rest<T>) -> ts.AnyOf3<global.jquery.PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, global.jquery.Thenable<ARD>, ARD>, failFilter:Dynamic, progressFilter:(t:haxe.extern.Rest<Dynamic>) -> ts.AnyOf3<global.jquery.PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, global.jquery.Thenable<ANP>, ANP>):global.jquery.PromiseBase<ts.AnyOf2<ARD, ARP>, ts.AnyOf2<AJD, AJP>, ts.AnyOf2<AND, ANP>, ts.AnyOf2<BRD, BRP>, ts.AnyOf2<BJD, BJP>, ts.AnyOf2<BND, BNP>, ts.AnyOf2<CRD, CRP>, ts.AnyOf2<CJD, CJP>, ts.AnyOf2<CND, CNP>, ts.AnyOf2<RRD, RRP>, ts.AnyOf2<RJD, RJP>, ts.AnyOf2<RND, RNP>> { })
	@:overload(function<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:Dynamic, failFilter:Dynamic, ?progressFilter:(t:haxe.extern.Rest<Dynamic>) -> ts.AnyOf3<global.jquery.PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, global.jquery.Thenable<ANP>, ANP>):global.jquery.PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP> { })
	@:overload(function<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND, ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>(doneFilter:(t:haxe.extern.Rest<T>) -> ts.AnyOf3<global.jquery.PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, global.jquery.Thenable<ARD>, ARD>, failFilter:(t:haxe.extern.Rest<Dynamic>) -> ts.AnyOf3<global.jquery.PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, global.jquery.Thenable<AJF>, AJF>, ?progressFilter:Any):global.jquery.PromiseBase<ts.AnyOf2<ARD, ARF>, ts.AnyOf2<AJD, AJF>, ts.AnyOf2<AND, ANF>, ts.AnyOf2<BRD, BRF>, ts.AnyOf2<BJD, BJF>, ts.AnyOf2<BND, BNF>, ts.AnyOf2<CRD, CRF>, ts.AnyOf2<CJD, CJF>, ts.AnyOf2<CND, CNF>, ts.AnyOf2<RRD, RRF>, ts.AnyOf2<RJD, RJF>, ts.AnyOf2<RND, RNF>> { })
	@:overload(function<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>(doneFilter:Dynamic, failFilter:(t:haxe.extern.Rest<Dynamic>) -> ts.AnyOf3<global.jquery.PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, global.jquery.Thenable<AJF>, AJF>, ?progressFilter:Any):global.jquery.PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF> { })
	@:overload(function<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>(doneFilter:(t:haxe.extern.Rest<T>) -> ts.AnyOf3<global.jquery.PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, global.jquery.Thenable<ARD>, ARD>, ?failFilter:Any, ?progressFilter:Any):global.jquery.PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND> { })
	function pipe<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND, ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF, ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:(t:haxe.extern.Rest<T>) -> ts.AnyOf3<global.jquery.PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, global.jquery.Thenable<ARD>, ARD>, failFilter:(t:haxe.extern.Rest<Dynamic>) -> ts.AnyOf3<global.jquery.PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, global.jquery.Thenable<AJF>, AJF>, progressFilter:(t:haxe.extern.Rest<Dynamic>) -> ts.AnyOf3<global.jquery.PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, global.jquery.Thenable<ANP>, ANP>):global.jquery.PromiseBase<ts.AnyOf3<ARD, ARF, ARP>, ts.AnyOf3<AJD, AJF, AJP>, ts.AnyOf3<AND, ANF, ANP>, ts.AnyOf3<BRD, BRF, BRP>, ts.AnyOf3<BJD, BJF, BJP>, ts.AnyOf3<BND, BNF, BNP>, ts.AnyOf3<CRD, CRF, CRP>, ts.AnyOf3<CJD, CJF, CJP>, ts.AnyOf3<CND, CNF, CNP>, ts.AnyOf3<RRD, RRF, RRP>, ts.AnyOf3<RJD, RJF, RJP>, ts.AnyOf3<RND, RNF, RNP>>;
	/**
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
		
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
		
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
		
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
		
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
		
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
		
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
	**/
	@:overload(function<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF, ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:Dynamic, failFilter:(t:haxe.extern.Rest<Dynamic>) -> ts.AnyOf3<global.jquery.PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, global.jquery.Thenable<ARF>, ARF>, progressFilter:(t:haxe.extern.Rest<Dynamic>) -> ts.AnyOf3<global.jquery.PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, global.jquery.Thenable<ANP>, ANP>):global.jquery.PromiseBase<ts.AnyOf2<ARF, ARP>, ts.AnyOf2<AJF, AJP>, ts.AnyOf2<ANF, ANP>, ts.AnyOf2<BRF, BRP>, ts.AnyOf2<BJF, BJP>, ts.AnyOf2<BNF, BNP>, ts.AnyOf2<CRF, CRP>, ts.AnyOf2<CJF, CJP>, ts.AnyOf2<CNF, CNP>, ts.AnyOf2<RRF, RRP>, ts.AnyOf2<RJF, RJP>, ts.AnyOf2<RNF, RNP>> { })
	@:overload(function<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND, ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:(t:haxe.extern.Rest<T>) -> ts.AnyOf3<global.jquery.PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, global.jquery.Thenable<ARD>, ARD>, failFilter:Dynamic, progressFilter:(t:haxe.extern.Rest<Dynamic>) -> ts.AnyOf3<global.jquery.PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, global.jquery.Thenable<ANP>, ANP>):global.jquery.PromiseBase<ts.AnyOf2<ARD, ARP>, ts.AnyOf2<AJD, AJP>, ts.AnyOf2<AND, ANP>, ts.AnyOf2<BRD, BRP>, ts.AnyOf2<BJD, BJP>, ts.AnyOf2<BND, BNP>, ts.AnyOf2<CRD, CRP>, ts.AnyOf2<CJD, CJP>, ts.AnyOf2<CND, CNP>, ts.AnyOf2<RRD, RRP>, ts.AnyOf2<RJD, RJP>, ts.AnyOf2<RND, RNP>> { })
	@:overload(function<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:Dynamic, failFilter:Dynamic, ?progressFilter:(t:haxe.extern.Rest<Dynamic>) -> ts.AnyOf3<global.jquery.PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, global.jquery.Thenable<ANP>, ANP>):global.jquery.PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP> { })
	@:overload(function<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND, ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>(doneFilter:(t:haxe.extern.Rest<T>) -> ts.AnyOf3<global.jquery.PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, global.jquery.Thenable<ARD>, ARD>, failFilter:(t:haxe.extern.Rest<Dynamic>) -> ts.AnyOf3<global.jquery.PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, global.jquery.Thenable<ARF>, ARF>, ?progressFilter:Any):global.jquery.PromiseBase<ts.AnyOf2<ARD, ARF>, ts.AnyOf2<AJD, AJF>, ts.AnyOf2<AND, ANF>, ts.AnyOf2<BRD, BRF>, ts.AnyOf2<BJD, BJF>, ts.AnyOf2<BND, BNF>, ts.AnyOf2<CRD, CRF>, ts.AnyOf2<CJD, CJF>, ts.AnyOf2<CND, CNF>, ts.AnyOf2<RRD, RRF>, ts.AnyOf2<RJD, RJF>, ts.AnyOf2<RND, RNF>> { })
	@:overload(function<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>(doneFilter:Dynamic, failFilter:(t:haxe.extern.Rest<Dynamic>) -> ts.AnyOf3<global.jquery.PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, global.jquery.Thenable<ARF>, ARF>, ?progressFilter:Any):global.jquery.PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF> { })
	@:overload(function<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>(doneFilter:(t:haxe.extern.Rest<T>) -> ts.AnyOf3<global.jquery.PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, global.jquery.Thenable<ARD>, ARD>, ?failFilter:Any, ?progressFilter:Any):global.jquery.PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND> { })
	function then<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND, ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF, ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:(t:haxe.extern.Rest<T>) -> ts.AnyOf3<global.jquery.PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, global.jquery.Thenable<ARD>, ARD>, failFilter:(t:haxe.extern.Rest<Dynamic>) -> ts.AnyOf3<global.jquery.PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, global.jquery.Thenable<ARF>, ARF>, progressFilter:(t:haxe.extern.Rest<Dynamic>) -> ts.AnyOf3<global.jquery.PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, global.jquery.Thenable<ANP>, ANP>):global.jquery.PromiseBase<ts.AnyOf3<ARD, ARF, ARP>, ts.AnyOf3<AJD, AJF, AJP>, ts.AnyOf3<AND, ANF, ANP>, ts.AnyOf3<BRD, BRF, BRP>, ts.AnyOf3<BJD, BJF, BJP>, ts.AnyOf3<BND, BNF, BNP>, ts.AnyOf3<CRD, CRF, CRP>, ts.AnyOf3<CJD, CJF, CJP>, ts.AnyOf3<CND, CNF, CNP>, ts.AnyOf3<RRD, RRF, RRP>, ts.AnyOf3<RJD, RJF, RJP>, ts.AnyOf3<RND, RNF, RNP>>;
	/**
		Add handlers to be called when the Deferred object is rejected.
	**/
	@:native("catch")
	function catch_<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>(?failFilter:(t:haxe.extern.Rest<Dynamic>) -> ts.AnyOf3<global.jquery.PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, global.jquery.Thenable<ARF>, ARF>):global.jquery.PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>;
};