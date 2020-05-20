package three;

@:jsRequire("three") extern abstract StencilOp(Any) from Any to Any {
	var ZeroStencilOp : StencilOp;
	var KeepStencilOp : StencilOp;
	var ReplaceStencilOp : StencilOp;
	var IncrementStencilOp : StencilOp;
	var DecrementStencilOp : StencilOp;
	var IncrementWrapStencilOp : StencilOp;
	var DecrementWrapStencilOp : StencilOp;
	var InvertStencilOp : StencilOp;
}