package ts.html;
typedef IntersectionObserverInit = {
	@:optional
	var root : IElement;
	@:optional
	var rootMargin : String;
	@:optional
	var threshold : ts.AnyOf2<Float, std.Array<Float>>;
};