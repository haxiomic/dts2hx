package three;

@:jsRequire("three") extern enum abstract Colors(Int) from Int to Int {
	final NoColors : Colors;
	final FaceColors : Colors;
	final VertexColors : Colors;
}