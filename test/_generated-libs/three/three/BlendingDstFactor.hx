package three;

@:enum @:jsRequire("three") extern abstract BlendingDstFactor(Int) from Int to Int {
	var ZeroFactor : BlendingDstFactor;
	var OneFactor : BlendingDstFactor;
	var SrcColorFactor : BlendingDstFactor;
	var OneMinusSrcColorFactor : BlendingDstFactor;
	var SrcAlphaFactor : BlendingDstFactor;
	var OneMinusSrcAlphaFactor : BlendingDstFactor;
	var DstAlphaFactor : BlendingDstFactor;
	var OneMinusDstAlphaFactor : BlendingDstFactor;
	var DstColorFactor : BlendingDstFactor;
	var OneMinusDstColorFactor : BlendingDstFactor;
}