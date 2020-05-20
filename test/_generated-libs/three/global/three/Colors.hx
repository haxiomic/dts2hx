package global.three;

@:enum @:native("THREE") extern abstract Colors(Any) from Any to Any {
	var NoColors : Colors;
	var FaceColors : Colors;
	var VertexColors : Colors;
}