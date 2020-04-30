package ts.html;
extern typedef IntersectionObserverInit = {
	@:optional
	var root : IElement;
	@:optional
	var rootMargin : String;
	@:optional
	var threshold : haxe.extern.EitherType<Float, std.Array<Float>>;
};