package ts.html;
extern typedef Transformer<I, O> = {
	@:optional
	var flush : TransformStreamDefaultControllerCallback<O>;
	@:optional
	var readableType : Void;
	@:optional
	var start : TransformStreamDefaultControllerCallback<O>;
	@:optional
	var transform : TransformStreamDefaultControllerTransformCallback<I, O>;
	@:optional
	var writableType : Void;
};