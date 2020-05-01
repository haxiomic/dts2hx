package ts.html;
typedef Transformer<I, O> = {
	@:optional
	var flush : TransformStreamDefaultControllerCallback<O>;
	@:optional
	var readableType : Any;
	@:optional
	var start : TransformStreamDefaultControllerCallback<O>;
	@:optional
	var transform : TransformStreamDefaultControllerTransformCallback<I, O>;
	@:optional
	var writableType : Any;
};