package three;

@:enum @:jsRequire("three") extern abstract AnimationActionLoopStyles(Int) from Int to Int {
	final LoopOnce : AnimationActionLoopStyles;
	final LoopRepeat : AnimationActionLoopStyles;
	final LoopPingPong : AnimationActionLoopStyles;
}