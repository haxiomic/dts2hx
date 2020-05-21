package global.three;

@:enum @:native("THREE") extern abstract Colors(Int) from Int to Int {
	var NoColors : Colors;
	var FaceColors : Colors;
	var VertexColors : Colors;
}