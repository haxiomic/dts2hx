package global.jquery;
typedef SpeedSettings<TElement> = ts.AnyOf4<{
	/**
		A string or number determining how long the animation will run.
	**/
	var duration : ts.AnyOf2<Float, String>;
}, {
	/**
		A string indicating which easing function to use for the transition.
	**/
	var easing : String;
}, {
	/**
		A function to call once the animation is complete.
	**/
	function complete():Void;
}, { }>;