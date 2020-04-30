package global.jquery;
typedef SpeedSettings<TElement> = haxe.extern.EitherType<{
	/**
		A string or number determining how long the animation will run.
	**/
	var duration : haxe.extern.EitherType<Float, String>;
}, haxe.extern.EitherType<{
	/**
		A string indicating which easing function to use for the transition.
	**/
	var easing : String;
}, haxe.extern.EitherType<{
	/**
		A function to call once the animation is complete.
	**/
	function complete():Void;
}, { }>>>;