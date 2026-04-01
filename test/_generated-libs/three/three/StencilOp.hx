package three;

@:jsRequire("three") extern enum abstract StencilOp(Int) from Int to Int {
	final ZeroStencilOp : StencilOp;
	final KeepStencilOp : StencilOp;
	final ReplaceStencilOp : StencilOp;
	final IncrementStencilOp : StencilOp;
	final DecrementStencilOp : StencilOp;
	final IncrementWrapStencilOp : StencilOp;
	final DecrementWrapStencilOp : StencilOp;
	final InvertStencilOp : StencilOp;
}