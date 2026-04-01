package global.three;

@:native("THREE") extern enum abstract AnimationActionLoopStyles(Int) from Int to Int {
	final LoopOnce : AnimationActionLoopStyles;
	final LoopRepeat : AnimationActionLoopStyles;
	final LoopPingPong : AnimationActionLoopStyles;
}