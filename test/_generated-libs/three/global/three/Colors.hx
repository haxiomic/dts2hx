package global.three;

@:enum @:native("THREE") extern abstract Colors(Int) from Int to Int {
	final NoColors : Colors;
	final FaceColors : Colors;
	final VertexColors : Colors;
}