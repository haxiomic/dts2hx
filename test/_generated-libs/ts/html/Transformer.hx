package ts.html;
extern typedef Transformer<I, O> = {
	@:optional
	var flush : TransformStreamDefaultControllerCallback<O>;
	@:optional
	var readableType : Null<(TPath({ pack : [], name : "Any", params : [] }) : haxe.macro.Expr.ComplexType)>;
	@:optional
	var start : TransformStreamDefaultControllerCallback<O>;
	@:optional
	var transform : TransformStreamDefaultControllerTransformCallback<I, O>;
	@:optional
	var writableType : Null<(TPath({ pack : [], name : "Any", params : [] }) : haxe.macro.Expr.ComplexType)>;
};