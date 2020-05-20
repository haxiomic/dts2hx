package three;

@:enum @:jsRequire("three") extern abstract StencilFunc(Any) from Any to Any {
	var NeverStencilFunc : StencilFunc;
	var LessStencilFunc : StencilFunc;
	var EqualStencilFunc : StencilFunc;
	var LessEqualStencilFunc : StencilFunc;
	var GreaterStencilFunc : StencilFunc;
	var NotEqualStencilFunc : StencilFunc;
	var GreaterEqualStencilFunc : StencilFunc;
	var AlwaysStencilFunc : StencilFunc;
}