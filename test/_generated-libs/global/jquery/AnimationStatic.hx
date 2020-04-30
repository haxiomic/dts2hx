package global.jquery;
extern typedef AnimationStatic = {
	@:selfCall
	function call<TElement>(element:TElement, props:PlainObject<Any>, opts:EffectsOptions<TElement>):Animation<TElement>;
	/**
		During the initial setup, `jQuery.Animation` will call any callbacks that have been registered through `jQuery.Animation.prefilter( function( element, props, opts ) )`.
	**/
	function prefilter<TElement>(callback:(element:TElement, props:PlainObject<Any>, opts:EffectsOptions<TElement>) -> Null<haxe.extern.EitherType<Bool, haxe.extern.EitherType<Void, haxe.extern.EitherType<String, haxe.extern.EitherType<Int, haxe.extern.EitherType<Animation<TElement>, ts.lib.IHTMLAllCollection>>>>>>, ?prepend:Bool):Void;
	/**
		A "Tweener" is a function responsible for creating a tween object, and you might want to override these if you want to implement complex values ( like a clip/transform array matrix ) in a single property.
		
		You can override the default process for creating a tween in order to provide your own tween object by using `jQuery.Animation.tweener( props, callback( prop, value ) )`.
	**/
	function tweener(props:String, callback:(propName:String, finalValue:Float) -> Tween<Any>):Void;
};