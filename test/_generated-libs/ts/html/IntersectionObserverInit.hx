package ts.html;
typedef IntersectionObserverInit = {
	@:optional
	var root : IElement;
	@:optional
	var rootMargin : String;
	@:optional
	var threshold : ts.AnyOf2<Float, Array<Float>>;
};