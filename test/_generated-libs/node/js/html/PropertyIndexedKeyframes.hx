package js.html;

typedef PropertyIndexedKeyframes = {
	@:optional
	var composite : ts.AnyOf2<String, Array<CompositeOperationOrAuto>>;
	@:optional
	var easing : ts.AnyOf2<String, Array<String>>;
	@:optional
	var offset : ts.AnyOf2<Float, Array<Null<Float>>>;
};