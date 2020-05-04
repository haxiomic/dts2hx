package ts.html;
typedef IntersectionObserverCallback = {
	@:selfCall
	function call(entries:Array<IIntersectionObserverEntry>, observer:IIntersectionObserver):Void;
};