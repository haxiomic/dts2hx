package three;

@:enum @:jsRequire("three") extern abstract DepthModes(Int) from Int to Int {
	final NeverDepth : DepthModes;
	final AlwaysDepth : DepthModes;
	final LessDepth : DepthModes;
	final LessEqualDepth : DepthModes;
	final EqualDepth : DepthModes;
	final GreaterEqualDepth : DepthModes;
	final GreaterDepth : DepthModes;
	final NotEqualDepth : DepthModes;
}