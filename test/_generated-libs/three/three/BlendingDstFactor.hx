package three;

@:enum @:jsRequire("three") extern abstract BlendingDstFactor(Int) from Int to Int {
	final ZeroFactor : BlendingDstFactor;
	final OneFactor : BlendingDstFactor;
	final SrcColorFactor : BlendingDstFactor;
	final OneMinusSrcColorFactor : BlendingDstFactor;
	final SrcAlphaFactor : BlendingDstFactor;
	final OneMinusSrcAlphaFactor : BlendingDstFactor;
	final DstAlphaFactor : BlendingDstFactor;
	final OneMinusDstAlphaFactor : BlendingDstFactor;
	final DstColorFactor : BlendingDstFactor;
	final OneMinusDstColorFactor : BlendingDstFactor;
}