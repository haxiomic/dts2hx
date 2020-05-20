package three;

@:jsRequire("three", "Wrapping") @:enum extern abstract Wrapping(Any) from Any to Any {
	var RepeatWrapping : Wrapping;
	var ClampToEdgeWrapping : Wrapping;
	var MirroredRepeatWrapping : Wrapping;
}