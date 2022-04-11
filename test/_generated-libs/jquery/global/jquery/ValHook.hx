package global.jquery;

typedef ValHook<TElement> = ts.AnyOf3<{
	function get(elem:TElement):Dynamic;
}, {
	function set(elem:TElement, value:Dynamic):Dynamic;
}, haxe.DynamicAccess<Any>>;