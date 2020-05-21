package global.three;

@:enum @:native("THREE") extern abstract AnimationActionLoopStyles(Int) from Int to Int {
	var LoopOnce : AnimationActionLoopStyles;
	var LoopRepeat : AnimationActionLoopStyles;
	var LoopPingPong : AnimationActionLoopStyles;
}