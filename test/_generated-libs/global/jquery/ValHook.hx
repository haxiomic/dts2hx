package global.jquery;
typedef ValHook<TElement> = haxe.extern.EitherType<{
	function get(elem:TElement):Any;
}, haxe.extern.EitherType<{
	function set(elem:TElement, value:Any):Any;
}, { }>>;