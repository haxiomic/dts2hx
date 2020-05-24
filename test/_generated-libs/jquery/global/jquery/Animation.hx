package global.jquery;

/**
	The promise will be resolved when the animation reaches its end, and rejected when terminated early. The context of callbacks attached to the promise will be the element, and the arguments will be the `Animation` object and a boolean `jumpedToEnd` which when true means the animation was stopped with `gotoEnd`, when `undefined` the animation completed naturally.
**/
typedef Animation<TElement> = {
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
	var props : PlainObject<Dynamic>;
	/**
		The animation options
	**/
	var opts : EffectsOptions<TElement>;
	/**
		The original properties before being filtered
	**/
	var originalProps : PlainObject<Dynamic>;
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
	var tweens : Array<Tween<TElement>>;
	function createTween(propName:String, finalValue:Float):Tween<TElement>;
	/**
		Stops the animation early, optionally going to the end.
	**/
	function stop(gotoEnd:Bool):Animation<TElement>;
	/**
		Add handlers to be called when the Deferred object is either resolved or rejected.
	**/
	function always(alwaysCallback:TypeOrArray<global.jquery.deferred.CallbackBase<Animation<TElement>, Null<Bool>, Any, Any>>, alwaysCallbacks:haxe.extern.Rest<TypeOrArray<global.jquery.deferred.CallbackBase<Animation<TElement>, Null<Bool>, Any, Any>>>):Animation<TElement>;
	/**
		Add handlers to be called when the Deferred object is resolved.
	**/
	function done(doneCallback:TypeOrArray<global.jquery.deferred.CallbackBase<Animation<TElement>, Null<Bool>, Any, Any>>, doneCallbacks:haxe.extern.Rest<TypeOrArray<global.jquery.deferred.CallbackBase<Animation<TElement>, Null<Bool>, Any, Any>>>):Animation<TElement>;
	/**
		Add handlers to be called when the Deferred object is rejected.
	**/
	function fail(failCallback:TypeOrArray<global.jquery.deferred.CallbackBase<Animation<TElement>, Bool, Any, Any>>, failCallbacks:haxe.extern.Rest<TypeOrArray<global.jquery.deferred.CallbackBase<Animation<TElement>, Bool, Any, Any>>>):Animation<TElement>;
	/**
		Add handlers to be called when the Deferred object generates progress notifications.
	**/
	function progress(progressCallback:TypeOrArray<global.jquery.deferred.CallbackBase<Animation<TElement>, Float, Float, Any>>, progressCallbacks:haxe.extern.Rest<TypeOrArray<global.jquery.deferred.CallbackBase<Animation<TElement>, Float, Float, Any>>>):Animation<TElement>;
	/**
		Return a Deferred's Promise object.
		
		Return a Deferred's Promise object.
	**/
	@:overload(function():Animation<TElement> { })
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
	@:overload(function<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF, ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:Dynamic, failFilter:(t:Animation<TElement>, u:Bool, v:Any, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, Thenable<AJF>, AJF>, progressFilter:(t:Animation<TElement>, u:Float, v:Float, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, Thenable<ANP>, ANP>):PromiseBase<ts.AnyOf2<ARF, ARP>, ts.AnyOf2<AJF, AJP>, ts.AnyOf2<ANF, ANP>, ts.AnyOf2<BRF, BRP>, ts.AnyOf2<BJF, BJP>, ts.AnyOf2<BNF, BNP>, ts.AnyOf2<CRF, CRP>, ts.AnyOf2<CJF, CJP>, ts.AnyOf2<CNF, CNP>, ts.AnyOf2<RRF, RRP>, ts.AnyOf2<RJF, RJP>, ts.AnyOf2<RNF, RNP>> { })
	@:overload(function<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND, ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:(t:Animation<TElement>, u:Null<Bool>, v:Any, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, Thenable<ARD>, ARD>, failFilter:Dynamic, progressFilter:(t:Animation<TElement>, u:Float, v:Float, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, Thenable<ANP>, ANP>):PromiseBase<ts.AnyOf2<ARD, ARP>, ts.AnyOf2<AJD, AJP>, ts.AnyOf2<AND, ANP>, ts.AnyOf2<BRD, BRP>, ts.AnyOf2<BJD, BJP>, ts.AnyOf2<BND, BNP>, ts.AnyOf2<CRD, CRP>, ts.AnyOf2<CJD, CJP>, ts.AnyOf2<CND, CNP>, ts.AnyOf2<RRD, RRP>, ts.AnyOf2<RJD, RJP>, ts.AnyOf2<RND, RNP>> { })
	@:overload(function<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:Dynamic, failFilter:Dynamic, ?progressFilter:(t:Animation<TElement>, u:Float, v:Float, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, Thenable<ANP>, ANP>):PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP> { })
	@:overload(function<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND, ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>(doneFilter:(t:Animation<TElement>, u:Null<Bool>, v:Any, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, Thenable<ARD>, ARD>, failFilter:(t:Animation<TElement>, u:Bool, v:Any, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, Thenable<AJF>, AJF>, ?progressFilter:Any):PromiseBase<ts.AnyOf2<ARD, ARF>, ts.AnyOf2<AJD, AJF>, ts.AnyOf2<AND, ANF>, ts.AnyOf2<BRD, BRF>, ts.AnyOf2<BJD, BJF>, ts.AnyOf2<BND, BNF>, ts.AnyOf2<CRD, CRF>, ts.AnyOf2<CJD, CJF>, ts.AnyOf2<CND, CNF>, ts.AnyOf2<RRD, RRF>, ts.AnyOf2<RJD, RJF>, ts.AnyOf2<RND, RNF>> { })
	@:overload(function<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>(doneFilter:Dynamic, failFilter:(t:Animation<TElement>, u:Bool, v:Any, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, Thenable<AJF>, AJF>, ?progressFilter:Any):PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF> { })
	@:overload(function<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>(doneFilter:(t:Animation<TElement>, u:Null<Bool>, v:Any, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, Thenable<ARD>, ARD>, ?failFilter:Any, ?progressFilter:Any):PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND> { })
	function pipe<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND, ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF, ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:(t:Animation<TElement>, u:Null<Bool>, v:Any, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, Thenable<ARD>, ARD>, failFilter:(t:Animation<TElement>, u:Bool, v:Any, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, Thenable<AJF>, AJF>, progressFilter:(t:Animation<TElement>, u:Float, v:Float, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, Thenable<ANP>, ANP>):PromiseBase<ts.AnyOf3<ARD, ARF, ARP>, ts.AnyOf3<AJD, AJF, AJP>, ts.AnyOf3<AND, ANF, ANP>, ts.AnyOf3<BRD, BRF, BRP>, ts.AnyOf3<BJD, BJF, BJP>, ts.AnyOf3<BND, BNF, BNP>, ts.AnyOf3<CRD, CRF, CRP>, ts.AnyOf3<CJD, CJF, CJP>, ts.AnyOf3<CND, CNF, CNP>, ts.AnyOf3<RRD, RRF, RRP>, ts.AnyOf3<RJD, RJF, RJP>, ts.AnyOf3<RND, RNF, RNP>>;
	/**
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
		
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
		
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
		
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
		
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
		
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
		
		Add handlers to be called when the Deferred object is resolved, rejected, or still in progress.
	**/
	@:overload(function<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF, ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:Dynamic, failFilter:(t:Animation<TElement>, u:Bool, v:Any, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, Thenable<ARF>, ARF>, progressFilter:(t:Animation<TElement>, u:Float, v:Float, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, Thenable<ANP>, ANP>):PromiseBase<ts.AnyOf2<ARF, ARP>, ts.AnyOf2<AJF, AJP>, ts.AnyOf2<ANF, ANP>, ts.AnyOf2<BRF, BRP>, ts.AnyOf2<BJF, BJP>, ts.AnyOf2<BNF, BNP>, ts.AnyOf2<CRF, CRP>, ts.AnyOf2<CJF, CJP>, ts.AnyOf2<CNF, CNP>, ts.AnyOf2<RRF, RRP>, ts.AnyOf2<RJF, RJP>, ts.AnyOf2<RNF, RNP>> { })
	@:overload(function<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND, ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:(t:Animation<TElement>, u:Null<Bool>, v:Any, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, Thenable<ARD>, ARD>, failFilter:Dynamic, progressFilter:(t:Animation<TElement>, u:Float, v:Float, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, Thenable<ANP>, ANP>):PromiseBase<ts.AnyOf2<ARD, ARP>, ts.AnyOf2<AJD, AJP>, ts.AnyOf2<AND, ANP>, ts.AnyOf2<BRD, BRP>, ts.AnyOf2<BJD, BJP>, ts.AnyOf2<BND, BNP>, ts.AnyOf2<CRD, CRP>, ts.AnyOf2<CJD, CJP>, ts.AnyOf2<CND, CNP>, ts.AnyOf2<RRD, RRP>, ts.AnyOf2<RJD, RJP>, ts.AnyOf2<RND, RNP>> { })
	@:overload(function<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:Dynamic, failFilter:Dynamic, ?progressFilter:(t:Animation<TElement>, u:Float, v:Float, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, Thenable<ANP>, ANP>):PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP> { })
	@:overload(function<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND, ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>(doneFilter:(t:Animation<TElement>, u:Null<Bool>, v:Any, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, Thenable<ARD>, ARD>, failFilter:(t:Animation<TElement>, u:Bool, v:Any, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, Thenable<ARF>, ARF>, ?progressFilter:Any):PromiseBase<ts.AnyOf2<ARD, ARF>, ts.AnyOf2<AJD, AJF>, ts.AnyOf2<AND, ANF>, ts.AnyOf2<BRD, BRF>, ts.AnyOf2<BJD, BJF>, ts.AnyOf2<BND, BNF>, ts.AnyOf2<CRD, CRF>, ts.AnyOf2<CJD, CJF>, ts.AnyOf2<CND, CNF>, ts.AnyOf2<RRD, RRF>, ts.AnyOf2<RJD, RJF>, ts.AnyOf2<RND, RNF>> { })
	@:overload(function<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>(doneFilter:Dynamic, failFilter:(t:Animation<TElement>, u:Bool, v:Any, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, Thenable<ARF>, ARF>, ?progressFilter:Any):PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF> { })
	@:overload(function<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>(doneFilter:(t:Animation<TElement>, u:Null<Bool>, v:Any, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, Thenable<ARD>, ARD>, ?failFilter:Any, ?progressFilter:Any):PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND> { })
	function then<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND, ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF, ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>(doneFilter:(t:Animation<TElement>, u:Null<Bool>, v:Any, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<PromiseBase<ARD, AJD, AND, BRD, BJD, BND, CRD, CJD, CND, RRD, RJD, RND>, Thenable<ARD>, ARD>, failFilter:(t:Animation<TElement>, u:Bool, v:Any, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, Thenable<ARF>, ARF>, progressFilter:(t:Animation<TElement>, u:Float, v:Float, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<PromiseBase<ARP, AJP, ANP, BRP, BJP, BNP, CRP, CJP, CNP, RRP, RJP, RNP>, Thenable<ANP>, ANP>):PromiseBase<ts.AnyOf3<ARD, ARF, ARP>, ts.AnyOf3<AJD, AJF, AJP>, ts.AnyOf3<AND, ANF, ANP>, ts.AnyOf3<BRD, BRF, BRP>, ts.AnyOf3<BJD, BJF, BJP>, ts.AnyOf3<BND, BNF, BNP>, ts.AnyOf3<CRD, CRF, CRP>, ts.AnyOf3<CJD, CJF, CJP>, ts.AnyOf3<CND, CNF, CNP>, ts.AnyOf3<RRD, RRF, RRP>, ts.AnyOf3<RJD, RJF, RJP>, ts.AnyOf3<RND, RNF, RNP>>;
	/**
		Add handlers to be called when the Deferred object is rejected.
	**/
	@:native("catch")
	function catch_<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>(?failFilter:(t:Animation<TElement>, u:Bool, v:Any, s:haxe.extern.Rest<Any>) -> ts.AnyOf3<PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>, Thenable<ARF>, ARF>):PromiseBase<ARF, AJF, ANF, BRF, BJF, BNF, CRF, CJF, CNF, RRF, RJF, RNF>;
};