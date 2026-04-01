package global.three;

@:native("THREE") extern enum abstract Wrapping(Int) from Int to Int {
	final RepeatWrapping : Wrapping;
	final ClampToEdgeWrapping : Wrapping;
	final MirroredRepeatWrapping : Wrapping;
}