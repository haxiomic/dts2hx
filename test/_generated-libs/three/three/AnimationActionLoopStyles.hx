package three;

@:enum @:jsRequire("three") extern abstract AnimationActionLoopStyles(Int) from Int to Int {
	var LoopOnce : AnimationActionLoopStyles;
	var LoopRepeat : AnimationActionLoopStyles;
	var LoopPingPong : AnimationActionLoopStyles;
}