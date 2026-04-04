package global.jquery;

typedef AnimationStatic = {
	@:selfCall
	function call<TElement>(element:TElement, props:PlainObject<Dynamic>, opts:EffectsOptions<TElement>):Animation<TElement>;
	/**
		During the initial setup, `jQuery.Animation` will call any callbacks that have been registered through `jQuery.Animation.prefilter( function( element, props, opts ) )`.
	**/
	function prefilter<TElement>(callback:(element:TElement, props:PlainObject<Dynamic>, opts:EffectsOptions<TElement>) -> Null<ts.AnyOf5<Bool, String, Int, js.html.HTMLAllCollection, Animation<TElement>>>, ?prepend:Bool):Void;
	/**
		A "Tweener" is a function responsible for creating a tween object, and you might want to override these if you want to implement complex values ( like a clip/transform array matrix ) in a single property.
		
		You can override the default process for creating a tween in order to provide your own tween object by using `jQuery.Animation.tweener( props, callback( prop, value ) )`.
	**/
	function tweener(props:String, callback:Tweener<Dynamic>):Void;
};