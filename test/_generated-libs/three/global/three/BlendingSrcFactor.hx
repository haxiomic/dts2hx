package global.three;

@:enum @:native("THREE") extern abstract BlendingSrcFactor(Int) from Int to Int {
	var SrcAlphaSaturateFactor : BlendingSrcFactor;
}