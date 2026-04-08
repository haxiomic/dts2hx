package chart_js;

typedef AnimationSpec<TType:(String)> = {
	/**
		The number of milliseconds an animation takes.
	**/
	@:optional
	var duration : Scriptable<Float, ScriptableContext<TType>>;
	/**
		Easing function to use
	**/
	@:optional
	var easing : Scriptable<EasingFunction, ScriptableContext<TType>>;
	/**
		Delay before starting the animations.
	**/
	@:optional
	var delay : Scriptable<Float, ScriptableContext<TType>>;
	/**
		If set to true, the animations loop endlessly.
	**/
	@:optional
	var loop : Scriptable<Bool, ScriptableContext<TType>>;
};