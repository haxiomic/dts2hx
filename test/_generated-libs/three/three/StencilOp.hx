package three;

@:enum @:jsRequire("three") extern abstract StencilOp(Int) from Int to Int {
	var ZeroStencilOp : StencilOp;
	var KeepStencilOp : StencilOp;
	var ReplaceStencilOp : StencilOp;
	var IncrementStencilOp : StencilOp;
	var DecrementStencilOp : StencilOp;
	var IncrementWrapStencilOp : StencilOp;
	var DecrementWrapStencilOp : StencilOp;
	var InvertStencilOp : StencilOp;
}