package three;

@:enum @:jsRequire("three") extern abstract Colors(Int) from Int to Int {
	final NoColors : Colors;
	final FaceColors : Colors;
	final VertexColors : Colors;
}