package three;

@:jsRequire("three") extern enum abstract BlendingSrcFactor(Int) from Int to Int {
	final SrcAlphaSaturateFactor : BlendingSrcFactor;
}