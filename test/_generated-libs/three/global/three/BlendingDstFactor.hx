package global.three;

@:enum @:native("THREE") extern abstract BlendingDstFactor(Any) from Any to Any {
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