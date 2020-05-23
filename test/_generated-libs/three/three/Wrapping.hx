package three;

@:enum @:jsRequire("three") extern abstract Wrapping(Int) from Int to Int {
	final RepeatWrapping : Wrapping;
	final ClampToEdgeWrapping : Wrapping;
	final MirroredRepeatWrapping : Wrapping;
}