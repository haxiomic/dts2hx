package global.jquery;

typedef Effects = {
	/**
		The rate (in milliseconds) at which animations fire.
	**/
	var interval : Float;
	/**
		Globally disable all animations.
	**/
	var off : Bool;
	var step : PlainObject<AnimationHook<Node>>;
	/**
		_overridable_ Clears up the `setInterval`
	**/
	function stop():Void;
	/**
		Calls `.run()` on each object in the `jQuery.timers` array, removing it from the array if `.run()` returns a falsy value. Calls `jQuery.fx.stop()` whenever there are no timers remaining.
	**/
	function tick():Void;
	/**
		_overridable_ Creates a `setInterval` if one doesn't already exist, and pushes `tickFunction` to the `jQuery.timers` array. `tickFunction` should also have `anim`, `elem`, and `queue` properties that reference the animation object, animated element, and queue option to facilitate `jQuery.fn.stop()`
		
		By overriding `fx.timer` and `fx.stop` you should be able to implement any animation tick behaviour you desire. (like using `requestAnimationFrame` instead of `setTimeout`.)
		
		There is an example of overriding the timer loop in \`{@link https://github.com/gnarf37/jquery-requestAnimationFrame jquery.requestAnimationFrame}\`
	**/
	function timer(tickFunction:TickFunction<Dynamic>):Void;
};