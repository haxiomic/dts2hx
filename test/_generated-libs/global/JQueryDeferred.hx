package global;
extern typedef JQueryDeferred<T> = {
	/**
		Call the progressCallbacks on a Deferred object with the given args.
	**/
	function notify(args:std.Array<Any>):JQueryDeferred<T>;
	/**
		Call the progressCallbacks on a Deferred object with the given context and args.
	**/
	function notifyWith(context:Any, ?args:ts.lib.ArrayLike<Any>):JQueryDeferred<T>;
	/**
		Reject a Deferred object and call any failCallbacks with the given args.
	**/
	function reject(args:std.Array<Any>):JQueryDeferred<T>;
	/**
		Reject a Deferred object and call any failCallbacks with the given context and args.
	**/
	function rejectWith(context:Any, ?args:ts.lib.ArrayLike<Any>):JQueryDeferred<T>;
	/**
		Resolve a Deferred object and call any doneCallbacks with the given args.
	**/
	function resolve(args:std.Array<T>):JQueryDeferred<T>;
	/**
		Resolve a Deferred object and call any doneCallbacks with the given context and args.
	**/
	function resolveWith(context:Any, ?args:ts.lib.ArrayLike<T>):JQueryDeferred<T>;
	/**
		Add handlers to be called when the Deferred object is either resolved or rejected.
	**/
	function always(alwaysCallback:haxe.extern.EitherType<(args:std.Array<Any>) -> Void, std.Array<(args:std.Array<Any>) -> Void>>, alwaysCallbacks:std.Array<haxe.extern.EitherType<(args:std.Array<Any>) -> Void, std.Array<(args:std.Array<Any>) -> Void>>>):JQueryDeferred<T>;
	/**
		Add handlers to be called when the Deferred object is resolved.
	**/
	function done(doneCallback:haxe.extern.EitherType<(args:std.Array<T>) -> Void, std.Array<(args:std.Array<T>) -> Void>>, doneCallbacks:std.Array<haxe.extern.EitherType<(args:std.Array<T>) -> Void, std.Array<(args:std.Array<T>) -> Void>>>):JQueryDeferred<T>;
	/**
		Add handlers to be called when the Deferred object is rejected.
	**/
	function fail(failCallback:haxe.extern.EitherType<(args:std.Array<Any>) -> Void, std.Array<(args:std.Array<Any>) -> Void>>, failCallbacks:std.Array<haxe.extern.EitherType<(args:std.Array<Any>) -> Void, std.Array<(args:std.Array<Any>) -> Void>>>):JQueryDeferred<T>;
	/**
		Add handlers to be called when the Deferred object generates progress notifications.
	**/
	function progress(progressCallback:haxe.extern.EitherType<(args:std.Array<Any>) -> Void, std.Array<(args:std.Array<Any>) -> Void>>, progressCallbacks:std.Array<haxe.extern.EitherType<(args:std.Array<Any>) -> Void, std.Array<(args:std.Array<Any>) -> Void>>>):JQueryDeferred<T>;
	/**
		Return a Deferred's Promise object.
		
		Return a Deferred's Promise object.
	**/
	@:overload(function():global.jquery.Promise<T, Any, Any> { })
	function promise<TTarget>(target:TTarget):Any;
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
	@:overload(function<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF, ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:Any, failFilter:(t:std.Array<Any>) -> haxe.extern.EitherType<AJF, haxe.extern.EitherType<global.jquery.PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, global.jquery.Thenable<AJF>>>, progressFilter:(t:std.Array<Any>) -> haxe.extern.EitherType<ANP, haxe.extern.EitherType<global.jquery.PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, global.jquery.Thenable<ANP>>>):global.jquery.PromiseBase<haxe.extern.EitherType<ARF, ARP>, haxe.extern.EitherType<AJF, AJP>, haxe.extern.EitherType<ANF, ANP>, haxe.extern.EitherType<BRF, BRP>, haxe.extern.EitherType<BJF, BJP>, haxe.extern.EitherType<BNF, BNP>, haxe.extern.EitherType<CRF, CRP>, haxe.extern.EitherType<CJF, CJP>, haxe.extern.EitherType<CNF, CNP>, haxe.extern.EitherType<RRF, RRP>, haxe.extern.EitherType<RJF, RJP>, haxe.extern.EitherType<RNF, RNP>> { })
	@:overload(function<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND, ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:(t:std.Array<T>) -> haxe.extern.EitherType<ARD, haxe.extern.EitherType<global.jquery.PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, global.jquery.Thenable<ARD>>>, failFilter:Any, progressFilter:(t:std.Array<Any>) -> haxe.extern.EitherType<ANP, haxe.extern.EitherType<global.jquery.PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, global.jquery.Thenable<ANP>>>):global.jquery.PromiseBase<haxe.extern.EitherType<ARD, ARP>, haxe.extern.EitherType<AJD, AJP>, haxe.extern.EitherType<AND, ANP>, haxe.extern.EitherType<BRD, BRP>, haxe.extern.EitherType<BJD, BJP>, haxe.extern.EitherType<BND, BNP>, haxe.extern.EitherType<CRD, CRP>, haxe.extern.EitherType<CJD, CJP>, haxe.extern.EitherType<CND, CNP>, haxe.extern.EitherType<RRD, RRP>, haxe.extern.EitherType<RJD, RJP>, haxe.extern.EitherType<RND, RNP>> { })
	@:overload(function<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:Any, failFilter:Any, ?progressFilter:(t:std.Array<Any>) -> haxe.extern.EitherType<ANP, haxe.extern.EitherType<global.jquery.PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, global.jquery.Thenable<ANP>>>):global.jquery.PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP> { })
	@:overload(function<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND, ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>(doneFilter:(t:std.Array<T>) -> haxe.extern.EitherType<ARD, haxe.extern.EitherType<global.jquery.PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, global.jquery.Thenable<ARD>>>, failFilter:(t:std.Array<Any>) -> haxe.extern.EitherType<AJF, haxe.extern.EitherType<global.jquery.PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, global.jquery.Thenable<AJF>>>, ?progressFilter:Any):global.jquery.PromiseBase<haxe.extern.EitherType<ARD, ARF>, haxe.extern.EitherType<AJD, AJF>, haxe.extern.EitherType<AND, ANF>, haxe.extern.EitherType<BRD, BRF>, haxe.extern.EitherType<BJD, BJF>, haxe.extern.EitherType<BND, BNF>, haxe.extern.EitherType<CRD, CRF>, haxe.extern.EitherType<CJD, CJF>, haxe.extern.EitherType<CND, CNF>, haxe.extern.EitherType<RRD, RRF>, haxe.extern.EitherType<RJD, RJF>, haxe.extern.EitherType<RND, RNF>> { })
	@:overload(function<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>(doneFilter:Any, failFilter:(t:std.Array<Any>) -> haxe.extern.EitherType<AJF, haxe.extern.EitherType<global.jquery.PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, global.jquery.Thenable<AJF>>>, ?progressFilter:Any):global.jquery.PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF> { })
	@:overload(function<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>(doneFilter:(t:std.Array<T>) -> haxe.extern.EitherType<ARD, haxe.extern.EitherType<global.jquery.PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, global.jquery.Thenable<ARD>>>, ?failFilter:Any, ?progressFilter:Any):global.jquery.PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND> { })
	function pipe<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND, ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF, ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:(t:std.Array<T>) -> haxe.extern.EitherType<ARD, haxe.extern.EitherType<global.jquery.PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, global.jquery.Thenable<ARD>>>, failFilter:(t:std.Array<Any>) -> haxe.extern.EitherType<AJF, haxe.extern.EitherType<global.jquery.PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, global.jquery.Thenable<AJF>>>, progressFilter:(t:std.Array<Any>) -> haxe.extern.EitherType<ANP, haxe.extern.EitherType<global.jquery.PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, global.jquery.Thenable<ANP>>>):global.jquery.PromiseBase<haxe.extern.EitherType<ARD, haxe.extern.EitherType<ARF, ARP>>, haxe.extern.EitherType<AJD, haxe.extern.EitherType<AJF, AJP>>, haxe.extern.EitherType<AND, haxe.extern.EitherType<ANF, ANP>>, haxe.extern.EitherType<BRD, haxe.extern.EitherType<BRF, BRP>>, haxe.extern.EitherType<BJD, haxe.extern.EitherType<BJF, BJP>>, haxe.extern.EitherType<BND, haxe.extern.EitherType<BNF, BNP>>, haxe.extern.EitherType<CRD, haxe.extern.EitherType<CRF, CRP>>, haxe.extern.EitherType<CJD, haxe.extern.EitherType<CJF, CJP>>, haxe.extern.EitherType<CND, haxe.extern.EitherType<CNF, CNP>>, haxe.extern.EitherType<RRD, haxe.extern.EitherType<RRF, RRP>>, haxe.extern.EitherType<RJD, haxe.extern.EitherType<RJF, RJP>>, haxe.extern.EitherType<RND, haxe.extern.EitherType<RNF, RNP>>>;
	/**
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
		
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
		
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
		
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
		
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
		
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
		
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
	**/
	@:overload(function<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF, ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:Any, failFilter:(t:std.Array<Any>) -> haxe.extern.EitherType<ARF, haxe.extern.EitherType<global.jquery.PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, global.jquery.Thenable<ARF>>>, progressFilter:(t:std.Array<Any>) -> haxe.extern.EitherType<ANP, haxe.extern.EitherType<global.jquery.PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, global.jquery.Thenable<ANP>>>):global.jquery.PromiseBase<haxe.extern.EitherType<ARF, ARP>, haxe.extern.EitherType<AJF, AJP>, haxe.extern.EitherType<ANF, ANP>, haxe.extern.EitherType<BRF, BRP>, haxe.extern.EitherType<BJF, BJP>, haxe.extern.EitherType<BNF, BNP>, haxe.extern.EitherType<CRF, CRP>, haxe.extern.EitherType<CJF, CJP>, haxe.extern.EitherType<CNF, CNP>, haxe.extern.EitherType<RRF, RRP>, haxe.extern.EitherType<RJF, RJP>, haxe.extern.EitherType<RNF, RNP>> { })
	@:overload(function<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND, ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:(t:std.Array<T>) -> haxe.extern.EitherType<ARD, haxe.extern.EitherType<global.jquery.PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, global.jquery.Thenable<ARD>>>, failFilter:Any, progressFilter:(t:std.Array<Any>) -> haxe.extern.EitherType<ANP, haxe.extern.EitherType<global.jquery.PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, global.jquery.Thenable<ANP>>>):global.jquery.PromiseBase<haxe.extern.EitherType<ARD, ARP>, haxe.extern.EitherType<AJD, AJP>, haxe.extern.EitherType<AND, ANP>, haxe.extern.EitherType<BRD, BRP>, haxe.extern.EitherType<BJD, BJP>, haxe.extern.EitherType<BND, BNP>, haxe.extern.EitherType<CRD, CRP>, haxe.extern.EitherType<CJD, CJP>, haxe.extern.EitherType<CND, CNP>, haxe.extern.EitherType<RRD, RRP>, haxe.extern.EitherType<RJD, RJP>, haxe.extern.EitherType<RND, RNP>> { })
	@:overload(function<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:Any, failFilter:Any, ?progressFilter:(t:std.Array<Any>) -> haxe.extern.EitherType<ANP, haxe.extern.EitherType<global.jquery.PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, global.jquery.Thenable<ANP>>>):global.jquery.PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP> { })
	@:overload(function<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND, ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>(doneFilter:(t:std.Array<T>) -> haxe.extern.EitherType<ARD, haxe.extern.EitherType<global.jquery.PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, global.jquery.Thenable<ARD>>>, failFilter:(t:std.Array<Any>) -> haxe.extern.EitherType<ARF, haxe.extern.EitherType<global.jquery.PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, global.jquery.Thenable<ARF>>>, ?progressFilter:Any):global.jquery.PromiseBase<haxe.extern.EitherType<ARD, ARF>, haxe.extern.EitherType<AJD, AJF>, haxe.extern.EitherType<AND, ANF>, haxe.extern.EitherType<BRD, BRF>, haxe.extern.EitherType<BJD, BJF>, haxe.extern.EitherType<BND, BNF>, haxe.extern.EitherType<CRD, CRF>, haxe.extern.EitherType<CJD, CJF>, haxe.extern.EitherType<CND, CNF>, haxe.extern.EitherType<RRD, RRF>, haxe.extern.EitherType<RJD, RJF>, haxe.extern.EitherType<RND, RNF>> { })
	@:overload(function<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>(doneFilter:Any, failFilter:(t:std.Array<Any>) -> haxe.extern.EitherType<ARF, haxe.extern.EitherType<global.jquery.PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, global.jquery.Thenable<ARF>>>, ?progressFilter:Any):global.jquery.PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF> { })
	@:overload(function<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>(doneFilter:(t:std.Array<T>) -> haxe.extern.EitherType<ARD, haxe.extern.EitherType<global.jquery.PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, global.jquery.Thenable<ARD>>>, ?failFilter:Any, ?progressFilter:Any):global.jquery.PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND> { })
	function then<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND, ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF, ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:(t:std.Array<T>) -> haxe.extern.EitherType<ARD, haxe.extern.EitherType<global.jquery.PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, global.jquery.Thenable<ARD>>>, failFilter:(t:std.Array<Any>) -> haxe.extern.EitherType<ARF, haxe.extern.EitherType<global.jquery.PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, global.jquery.Thenable<ARF>>>, progressFilter:(t:std.Array<Any>) -> haxe.extern.EitherType<ANP, haxe.extern.EitherType<global.jquery.PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, global.jquery.Thenable<ANP>>>):global.jquery.PromiseBase<haxe.extern.EitherType<ARD, haxe.extern.EitherType<ARF, ARP>>, haxe.extern.EitherType<AJD, haxe.extern.EitherType<AJF, AJP>>, haxe.extern.EitherType<AND, haxe.extern.EitherType<ANF, ANP>>, haxe.extern.EitherType<BRD, haxe.extern.EitherType<BRF, BRP>>, haxe.extern.EitherType<BJD, haxe.extern.EitherType<BJF, BJP>>, haxe.extern.EitherType<BND, haxe.extern.EitherType<BNF, BNP>>, haxe.extern.EitherType<CRD, haxe.extern.EitherType<CRF, CRP>>, haxe.extern.EitherType<CJD, haxe.extern.EitherType<CJF, CJP>>, haxe.extern.EitherType<CND, haxe.extern.EitherType<CNF, CNP>>, haxe.extern.EitherType<RRD, haxe.extern.EitherType<RRF, RRP>>, haxe.extern.EitherType<RJD, haxe.extern.EitherType<RJF, RJP>>, haxe.extern.EitherType<RND, haxe.extern.EitherType<RNF, RNP>>>;
	/**
		Add handlers to be called when the Deferred object is rejected.
	**/
	@:native("catch")
	function catch_<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>(?failFilter:(t:std.Array<Any>) -> haxe.extern.EitherType<ARF, haxe.extern.EitherType<global.jquery.PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, global.jquery.Thenable<ARF>>>):global.jquery.PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>;
};