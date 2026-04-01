package three;

@:jsRequire("three") extern enum abstract Wrapping(Int) from Int to Int {
	final RepeatWrapping : Wrapping;
	final ClampToEdgeWrapping : Wrapping;
	final MirroredRepeatWrapping : Wrapping;
}