package ts.html;
typedef IntersectionObserverCallback = {
	@:selfCall
	function call(entries:std.Array<IIntersectionObserverEntry>, observer:IIntersectionObserver):Void;
};