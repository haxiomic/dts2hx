package global.jquery;

typedef EffectsOptions<TElement> = {
	/**
		A function to be called when the animation on an element completes or stops without completing (its Promise object is either resolved or rejected).
	**/
	@:optional
	function always(animation:Animation<TElement>, jumpedToEnd:Bool):Void;
	/**
		A function that is called once the animation on an element is complete.
	**/
	@:optional
	function complete():Void;
	/**
		A function to be called when the animation on an element completes (its Promise object is resolved).
	**/
	@:optional
	function done(animation:Animation<TElement>, jumpedToEnd:Bool):Void;
	/**
		A string or number determining how long the animation will run.
	**/
	@:optional
	var duration : Duration;
	/**
		A string indicating which easing function to use for the transition.
	**/
	@:optional
	var easing : String;
	/**
		A function to be called when the animation on an element fails to complete (its Promise object is rejected).
	**/
	@:optional
	function fail(animation:Animation<TElement>, jumpedToEnd:Bool):Void;
	/**
		A function to be called after each step of the animation, only once per animated element regardless of the number of animated properties.
	**/
	@:optional
	function progress(animation:Animation<TElement>, progress:Float, remainingMs:Float):Void;
	/**
		A Boolean indicating whether to place the animation in the effects queue. If false, the animation will begin immediately. As of jQuery 1.7, the queue option can also accept a string, in which case the animation is added to the queue represented by that string. When a custom queue name is used the animation does not automatically start; you must call .dequeue("queuename") to start it.
	**/
	@:optional
	var queue : ts.AnyOf2<String, Bool>;
	/**
		An object containing one or more of the CSS properties defined by the properties argument and their corresponding easing functions.
	**/
	@:optional
	var specialEasing : PlainObject<String>;
	/**
		A function to call when the animation on an element begins.
	**/
	@:optional
	function start(animation:Animation<TElement>):Void;
	/**
		A function to be called for each animated property of each animated element. This function provides an opportunity to modify the Tween object to change the value of the property before it is set.
	**/
	@:optional
	function step(now:Float, tween:Tween<TElement>):Void;
};