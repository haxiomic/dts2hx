package global.jquery;
typedef PropHook<TElement> = haxe.extern.EitherType<{
	function get(tween:Tween<TElement>):Any;
}, haxe.extern.EitherType<{
	function set(tween:Tween<TElement>):Void;
}, { }>>;