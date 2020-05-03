package ts.html;
typedef PropertyIndexedKeyframes = {
	@:optional
	var composite : ts.AnyOf2<String, std.Array<CompositeOperationOrAuto>>;
	@:optional
	var easing : ts.AnyOf2<String, std.Array<String>>;
	@:optional
	var offset : ts.AnyOf2<Float, std.Array<Null<Float>>>;
};