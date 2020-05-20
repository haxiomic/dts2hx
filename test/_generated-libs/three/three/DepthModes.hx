package three;

@:jsRequire("three", "DepthModes") @:enum extern abstract DepthModes(Any) from Any to Any {
	var NeverDepth : DepthModes;
	var AlwaysDepth : DepthModes;
	var LessDepth : DepthModes;
	var LessEqualDepth : DepthModes;
	var EqualDepth : DepthModes;
	var GreaterEqualDepth : DepthModes;
	var GreaterDepth : DepthModes;
	var NotEqualDepth : DepthModes;
}