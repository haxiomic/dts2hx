package global.three;

@:native("THREE") extern abstract Wrapping(Any) from Any to Any {
	var RepeatWrapping : Wrapping;
	var ClampToEdgeWrapping : Wrapping;
	var MirroredRepeatWrapping : Wrapping;
}