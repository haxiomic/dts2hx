package three;

@:enum @:jsRequire("three") extern abstract StencilFunc(Int) from Int to Int {
	final NeverStencilFunc : StencilFunc;
	final LessStencilFunc : StencilFunc;
	final EqualStencilFunc : StencilFunc;
	final LessEqualStencilFunc : StencilFunc;
	final GreaterStencilFunc : StencilFunc;
	final NotEqualStencilFunc : StencilFunc;
	final GreaterEqualStencilFunc : StencilFunc;
	final AlwaysStencilFunc : StencilFunc;
}