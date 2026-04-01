package three;

@:jsRequire("three") extern enum abstract DepthModes(Int) from Int to Int {
	final NeverDepth : DepthModes;
	final AlwaysDepth : DepthModes;
	final LessDepth : DepthModes;
	final LessEqualDepth : DepthModes;
	final EqualDepth : DepthModes;
	final GreaterEqualDepth : DepthModes;
	final GreaterDepth : DepthModes;
	final NotEqualDepth : DepthModes;
}