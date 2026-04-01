package global.three;

@:native("THREE") extern enum abstract BlendingSrcFactor(Int) from Int to Int {
	final SrcAlphaSaturateFactor : BlendingSrcFactor;
}