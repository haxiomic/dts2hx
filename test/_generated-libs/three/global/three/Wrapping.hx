package global.three;

@:enum @:native("THREE") extern abstract Wrapping(Int) from Int to Int {
	var RepeatWrapping : Wrapping;
	var ClampToEdgeWrapping : Wrapping;
	var MirroredRepeatWrapping : Wrapping;
}