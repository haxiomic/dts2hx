package global.jquery;
typedef PropHook<TElement> = ts.AnyOf3<{
	function get(tween:Tween<TElement>):Any;
}, {
	function set(tween:Tween<TElement>):Void;
}, { }>;