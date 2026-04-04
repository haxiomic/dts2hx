package global.jquery;

typedef _CSSHook<TElement> = {
	function get(elem:TElement, computed:Dynamic, extra:Dynamic):Dynamic;
	function set(elem:TElement, value:Dynamic):Void;
};