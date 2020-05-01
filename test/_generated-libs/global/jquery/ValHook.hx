package global.jquery;
typedef ValHook<TElement> = ts.AnyOf3<{
	function get(elem:TElement):Any;
}, {
	function set(elem:TElement, value:Any):Any;
}, { }>;