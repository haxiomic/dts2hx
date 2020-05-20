package global.three;

@:native("THREE") extern abstract AnimationActionLoopStyles(Any) from Any to Any {
	var LoopOnce : AnimationActionLoopStyles;
	var LoopRepeat : AnimationActionLoopStyles;
	var LoopPingPong : AnimationActionLoopStyles;
}