package global.jquery;
extern typedef _CSSHook<TElement> = {
	function get(elem:TElement, computed:Any, extra:Any):Any;
	function set(elem:TElement, value:Any):Void;
};