package three;

@:jsRequire("three", "AnimationActionLoopStyles") @:enum extern abstract AnimationActionLoopStyles(Any) from Any to Any {
	var LoopOnce : AnimationActionLoopStyles;
	var LoopRepeat : AnimationActionLoopStyles;
	var LoopPingPong : AnimationActionLoopStyles;
}