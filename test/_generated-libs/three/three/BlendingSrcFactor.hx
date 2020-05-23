package three;

@:enum @:jsRequire("three") extern abstract BlendingSrcFactor(Int) from Int to Int {
	final SrcAlphaSaturateFactor : BlendingSrcFactor;
}