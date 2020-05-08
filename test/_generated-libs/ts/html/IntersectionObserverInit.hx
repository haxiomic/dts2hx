package ts.html;
typedef IntersectionObserverInit = {
	@:optional
	var root : Element;
	@:optional
	var rootMargin : String;
	@:optional
	var threshold : ts.AnyOf2<Float, Array<Float>>;
};