package global.jquery;

typedef TweenStatic = {
	@:selfCall
	function call<TElement>(elem:TElement, options:EffectsOptions<TElement>, prop:String, end:Float, ?easing:String, ?unit:String):Tween<TElement>;
	/**
		`jQuery.Tween.propHooks[ prop ]` is a hook point that replaces `jQuery.fx.step[ prop ]` (which is being deprecated.) These hooks are used by the tween to get and set values on elements.
	**/
	var propHooks : PropHooks;
};