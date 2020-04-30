package global.jquery;
/**
	The promise will be resolved when the animation reaches its end, and rejected when terminated early. The context of callbacks attached to the promise will be the element, and the arguments will be the `Animation` object and a boolean `jumpedToEnd` which when true means the animation was stopped with `gotoEnd`, when `undefined` the animation completed naturally.
**/
extern typedef Animation<TElement> = {
	/**
		The duration specified in ms
	**/
	var duration : Float;
	/**
		The element being animatied
	**/
	var elem : TElement;
	/**
		The final value of each property animating
	**/
	var props : PlainObject<Any>;
	/**
		The animation options
	**/
	var opts : EffectsOptions<TElement>;
	/**
		The original properties before being filtered
	**/
	var originalProps : PlainObject<Any>;
	/**
		The original options before being filtered
	**/
	var originalOpts : EffectsOptions<TElement>;
	/**
		The numeric value of `new Date()` when the animation began
	**/
	var startTime : Float;
	/**
		The animations tweens.
	**/
	var tweens : std.Array<Tween<TElement>>;
	function createTween(propName:String, finalValue:Float):Tween<TElement>;
	/**
		Stops the animation early, optionally going to the end.
	**/
	function stop(gotoEnd:Bool):Animation<TElement>;
	/**
		Add handlers to be called when the Deferred object is either resolved or rejected.
	**/
	function always(alwaysCallback:haxe.extern.EitherType<(t:Animation<TElement>, u:Null<Bool>, v:Any, r:std.Array<Any>) -> Void, std.Array<(t:Animation<TElement>, u:Null<Bool>, v:Any, r:std.Array<Any>) -> Void>>, alwaysCallbacks:std.Array<haxe.extern.EitherType<(t:Animation<TElement>, u:Null<Bool>, v:Any, r:std.Array<Any>) -> Void, std.Array<(t:Animation<TElement>, u:Null<Bool>, v:Any, r:std.Array<Any>) -> Void>>>):Animation<TElement>;
	/**
		Add handlers to be called when the Deferred object is resolved.
	**/
	function done(doneCallback:haxe.extern.EitherType<(t:Animation<TElement>, u:Null<Bool>, v:Any, r:std.Array<Any>) -> Void, std.Array<(t:Animation<TElement>, u:Null<Bool>, v:Any, r:std.Array<Any>) -> Void>>, doneCallbacks:std.Array<haxe.extern.EitherType<(t:Animation<TElement>, u:Null<Bool>, v:Any, r:std.Array<Any>) -> Void, std.Array<(t:Animation<TElement>, u:Null<Bool>, v:Any, r:std.Array<Any>) -> Void>>>):Animation<TElement>;
	/**
		Add handlers to be called when the Deferred object is rejected.
	**/
	function fail(failCallback:haxe.extern.EitherType<(t:Animation<TElement>, u:Bool, v:Any, r:std.Array<Any>) -> Void, std.Array<(t:Animation<TElement>, u:Bool, v:Any, r:std.Array<Any>) -> Void>>, failCallbacks:std.Array<haxe.extern.EitherType<(t:Animation<TElement>, u:Bool, v:Any, r:std.Array<Any>) -> Void, std.Array<(t:Animation<TElement>, u:Bool, v:Any, r:std.Array<Any>) -> Void>>>):Animation<TElement>;
	/**
		Add handlers to be called when the Deferred object generates progress notifications.
	**/
	function progress(progressCallback:haxe.extern.EitherType<(t:Animation<TElement>, u:Float, v:Float, r:std.Array<Any>) -> Void, std.Array<(t:Animation<TElement>, u:Float, v:Float, r:std.Array<Any>) -> Void>>, progressCallbacks:std.Array<haxe.extern.EitherType<(t:Animation<TElement>, u:Float, v:Float, r:std.Array<Any>) -> Void, std.Array<(t:Animation<TElement>, u:Float, v:Float, r:std.Array<Any>) -> Void>>>):Animation<TElement>;
	/**
		Return a Deferred's Promise object.
		
		Return a Deferred's Promise object.
	**/
	@:overload(function():Animation<TElement> { })
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
	@:overload(function<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF, ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:Any, failFilter:(t:Animation<TElement>, u:Bool, v:Any, s:std.Array<Any>) -> haxe.extern.EitherType<AJF, haxe.extern.EitherType<PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, Thenable<AJF>>>, progressFilter:(t:Animation<TElement>, u:Float, v:Float, s:std.Array<Any>) -> haxe.extern.EitherType<ANP, haxe.extern.EitherType<PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, Thenable<ANP>>>):PromiseBase<haxe.extern.EitherType<ARF, ARP>, haxe.extern.EitherType<AJF, AJP>, haxe.extern.EitherType<ANF, ANP>, haxe.extern.EitherType<BRF, BRP>, haxe.extern.EitherType<BJF, BJP>, haxe.extern.EitherType<BNF, BNP>, haxe.extern.EitherType<CRF, CRP>, haxe.extern.EitherType<CJF, CJP>, haxe.extern.EitherType<CNF, CNP>, haxe.extern.EitherType<RRF, RRP>, haxe.extern.EitherType<RJF, RJP>, haxe.extern.EitherType<RNF, RNP>> { })
	@:overload(function<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND, ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:(t:Animation<TElement>, u:Null<Bool>, v:Any, s:std.Array<Any>) -> haxe.extern.EitherType<ARD, haxe.extern.EitherType<PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, Thenable<ARD>>>, failFilter:Any, progressFilter:(t:Animation<TElement>, u:Float, v:Float, s:std.Array<Any>) -> haxe.extern.EitherType<ANP, haxe.extern.EitherType<PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, Thenable<ANP>>>):PromiseBase<haxe.extern.EitherType<ARD, ARP>, haxe.extern.EitherType<AJD, AJP>, haxe.extern.EitherType<AND, ANP>, haxe.extern.EitherType<BRD, BRP>, haxe.extern.EitherType<BJD, BJP>, haxe.extern.EitherType<BND, BNP>, haxe.extern.EitherType<CRD, CRP>, haxe.extern.EitherType<CJD, CJP>, haxe.extern.EitherType<CND, CNP>, haxe.extern.EitherType<RRD, RRP>, haxe.extern.EitherType<RJD, RJP>, haxe.extern.EitherType<RND, RNP>> { })
	@:overload(function<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:Any, failFilter:Any, ?progressFilter:(t:Animation<TElement>, u:Float, v:Float, s:std.Array<Any>) -> haxe.extern.EitherType<ANP, haxe.extern.EitherType<PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, Thenable<ANP>>>):PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP> { })
	@:overload(function<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND, ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>(doneFilter:(t:Animation<TElement>, u:Null<Bool>, v:Any, s:std.Array<Any>) -> haxe.extern.EitherType<ARD, haxe.extern.EitherType<PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, Thenable<ARD>>>, failFilter:(t:Animation<TElement>, u:Bool, v:Any, s:std.Array<Any>) -> haxe.extern.EitherType<AJF, haxe.extern.EitherType<PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, Thenable<AJF>>>, ?progressFilter:Any):PromiseBase<haxe.extern.EitherType<ARD, ARF>, haxe.extern.EitherType<AJD, AJF>, haxe.extern.EitherType<AND, ANF>, haxe.extern.EitherType<BRD, BRF>, haxe.extern.EitherType<BJD, BJF>, haxe.extern.EitherType<BND, BNF>, haxe.extern.EitherType<CRD, CRF>, haxe.extern.EitherType<CJD, CJF>, haxe.extern.EitherType<CND, CNF>, haxe.extern.EitherType<RRD, RRF>, haxe.extern.EitherType<RJD, RJF>, haxe.extern.EitherType<RND, RNF>> { })
	@:overload(function<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>(doneFilter:Any, failFilter:(t:Animation<TElement>, u:Bool, v:Any, s:std.Array<Any>) -> haxe.extern.EitherType<AJF, haxe.extern.EitherType<PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, Thenable<AJF>>>, ?progressFilter:Any):PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF> { })
	@:overload(function<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>(doneFilter:(t:Animation<TElement>, u:Null<Bool>, v:Any, s:std.Array<Any>) -> haxe.extern.EitherType<ARD, haxe.extern.EitherType<PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, Thenable<ARD>>>, ?failFilter:Any, ?progressFilter:Any):PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND> { })
	function pipe<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND, ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF, ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:(t:Animation<TElement>, u:Null<Bool>, v:Any, s:std.Array<Any>) -> haxe.extern.EitherType<ARD, haxe.extern.EitherType<PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, Thenable<ARD>>>, failFilter:(t:Animation<TElement>, u:Bool, v:Any, s:std.Array<Any>) -> haxe.extern.EitherType<AJF, haxe.extern.EitherType<PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, Thenable<AJF>>>, progressFilter:(t:Animation<TElement>, u:Float, v:Float, s:std.Array<Any>) -> haxe.extern.EitherType<ANP, haxe.extern.EitherType<PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, Thenable<ANP>>>):PromiseBase<haxe.extern.EitherType<ARD, haxe.extern.EitherType<ARF, ARP>>, haxe.extern.EitherType<AJD, haxe.extern.EitherType<AJF, AJP>>, haxe.extern.EitherType<AND, haxe.extern.EitherType<ANF, ANP>>, haxe.extern.EitherType<BRD, haxe.extern.EitherType<BRF, BRP>>, haxe.extern.EitherType<BJD, haxe.extern.EitherType<BJF, BJP>>, haxe.extern.EitherType<BND, haxe.extern.EitherType<BNF, BNP>>, haxe.extern.EitherType<CRD, haxe.extern.EitherType<CRF, CRP>>, haxe.extern.EitherType<CJD, haxe.extern.EitherType<CJF, CJP>>, haxe.extern.EitherType<CND, haxe.extern.EitherType<CNF, CNP>>, haxe.extern.EitherType<RRD, haxe.extern.EitherType<RRF, RRP>>, haxe.extern.EitherType<RJD, haxe.extern.EitherType<RJF, RJP>>, haxe.extern.EitherType<RND, haxe.extern.EitherType<RNF, RNP>>>;
	/**
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
		
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
		
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
		
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
		
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
		
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
		
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
	**/
	@:overload(function<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF, ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:Any, failFilter:(t:Animation<TElement>, u:Bool, v:Any, s:std.Array<Any>) -> haxe.extern.EitherType<ARF, haxe.extern.EitherType<PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, Thenable<ARF>>>, progressFilter:(t:Animation<TElement>, u:Float, v:Float, s:std.Array<Any>) -> haxe.extern.EitherType<ANP, haxe.extern.EitherType<PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, Thenable<ANP>>>):PromiseBase<haxe.extern.EitherType<ARF, ARP>, haxe.extern.EitherType<AJF, AJP>, haxe.extern.EitherType<ANF, ANP>, haxe.extern.EitherType<BRF, BRP>, haxe.extern.EitherType<BJF, BJP>, haxe.extern.EitherType<BNF, BNP>, haxe.extern.EitherType<CRF, CRP>, haxe.extern.EitherType<CJF, CJP>, haxe.extern.EitherType<CNF, CNP>, haxe.extern.EitherType<RRF, RRP>, haxe.extern.EitherType<RJF, RJP>, haxe.extern.EitherType<RNF, RNP>> { })
	@:overload(function<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND, ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:(t:Animation<TElement>, u:Null<Bool>, v:Any, s:std.Array<Any>) -> haxe.extern.EitherType<ARD, haxe.extern.EitherType<PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, Thenable<ARD>>>, failFilter:Any, progressFilter:(t:Animation<TElement>, u:Float, v:Float, s:std.Array<Any>) -> haxe.extern.EitherType<ANP, haxe.extern.EitherType<PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, Thenable<ANP>>>):PromiseBase<haxe.extern.EitherType<ARD, ARP>, haxe.extern.EitherType<AJD, AJP>, haxe.extern.EitherType<AND, ANP>, haxe.extern.EitherType<BRD, BRP>, haxe.extern.EitherType<BJD, BJP>, haxe.extern.EitherType<BND, BNP>, haxe.extern.EitherType<CRD, CRP>, haxe.extern.EitherType<CJD, CJP>, haxe.extern.EitherType<CND, CNP>, haxe.extern.EitherType<RRD, RRP>, haxe.extern.EitherType<RJD, RJP>, haxe.extern.EitherType<RND, RNP>> { })
	@:overload(function<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:Any, failFilter:Any, ?progressFilter:(t:Animation<TElement>, u:Float, v:Float, s:std.Array<Any>) -> haxe.extern.EitherType<ANP, haxe.extern.EitherType<PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, Thenable<ANP>>>):PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP> { })
	@:overload(function<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND, ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>(doneFilter:(t:Animation<TElement>, u:Null<Bool>, v:Any, s:std.Array<Any>) -> haxe.extern.EitherType<ARD, haxe.extern.EitherType<PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, Thenable<ARD>>>, failFilter:(t:Animation<TElement>, u:Bool, v:Any, s:std.Array<Any>) -> haxe.extern.EitherType<ARF, haxe.extern.EitherType<PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, Thenable<ARF>>>, ?progressFilter:Any):PromiseBase<haxe.extern.EitherType<ARD, ARF>, haxe.extern.EitherType<AJD, AJF>, haxe.extern.EitherType<AND, ANF>, haxe.extern.EitherType<BRD, BRF>, haxe.extern.EitherType<BJD, BJF>, haxe.extern.EitherType<BND, BNF>, haxe.extern.EitherType<CRD, CRF>, haxe.extern.EitherType<CJD, CJF>, haxe.extern.EitherType<CND, CNF>, haxe.extern.EitherType<RRD, RRF>, haxe.extern.EitherType<RJD, RJF>, haxe.extern.EitherType<RND, RNF>> { })
	@:overload(function<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>(doneFilter:Any, failFilter:(t:Animation<TElement>, u:Bool, v:Any, s:std.Array<Any>) -> haxe.extern.EitherType<ARF, haxe.extern.EitherType<PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, Thenable<ARF>>>, ?progressFilter:Any):PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF> { })
	@:overload(function<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>(doneFilter:(t:Animation<TElement>, u:Null<Bool>, v:Any, s:std.Array<Any>) -> haxe.extern.EitherType<ARD, haxe.extern.EitherType<PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, Thenable<ARD>>>, ?failFilter:Any, ?progressFilter:Any):PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND> { })
	function then<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND, ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF, ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:(t:Animation<TElement>, u:Null<Bool>, v:Any, s:std.Array<Any>) -> haxe.extern.EitherType<ARD, haxe.extern.EitherType<PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, Thenable<ARD>>>, failFilter:(t:Animation<TElement>, u:Bool, v:Any, s:std.Array<Any>) -> haxe.extern.EitherType<ARF, haxe.extern.EitherType<PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, Thenable<ARF>>>, progressFilter:(t:Animation<TElement>, u:Float, v:Float, s:std.Array<Any>) -> haxe.extern.EitherType<ANP, haxe.extern.EitherType<PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, Thenable<ANP>>>):PromiseBase<haxe.extern.EitherType<ARD, haxe.extern.EitherType<ARF, ARP>>, haxe.extern.EitherType<AJD, haxe.extern.EitherType<AJF, AJP>>, haxe.extern.EitherType<AND, haxe.extern.EitherType<ANF, ANP>>, haxe.extern.EitherType<BRD, haxe.extern.EitherType<BRF, BRP>>, haxe.extern.EitherType<BJD, haxe.extern.EitherType<BJF, BJP>>, haxe.extern.EitherType<BND, haxe.extern.EitherType<BNF, BNP>>, haxe.extern.EitherType<CRD, haxe.extern.EitherType<CRF, CRP>>, haxe.extern.EitherType<CJD, haxe.extern.EitherType<CJF, CJP>>, haxe.extern.EitherType<CND, haxe.extern.EitherType<CNF, CNP>>, haxe.extern.EitherType<RRD, haxe.extern.EitherType<RRF, RRP>>, haxe.extern.EitherType<RJD, haxe.extern.EitherType<RJF, RJP>>, haxe.extern.EitherType<RND, haxe.extern.EitherType<RNF, RNP>>>;
	/**
		Add handlers to be called when the Deferred object is rejected.
	**/
	@:native("catch")
	function catch_<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>(?failFilter:(t:Animation<TElement>, u:Bool, v:Any, s:std.Array<Any>) -> haxe.extern.EitherType<ARF, haxe.extern.EitherType<PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, Thenable<ARF>>>):PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>;
};