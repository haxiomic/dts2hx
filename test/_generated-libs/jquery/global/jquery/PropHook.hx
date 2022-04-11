package global.jquery;

typedef PropHook<TElement> = ts.AnyOf3<{
	function get(tween:Tween<TElement>):Dynamic;
}, {
	function set(tween:Tween<TElement>):Void;
}, haxe.DynamicAccess<Any>>;