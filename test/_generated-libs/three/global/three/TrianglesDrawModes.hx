package global.three;

@:native("THREE") extern enum abstract TrianglesDrawModes(Int) from Int to Int {
	final TrianglesDrawMode : TrianglesDrawModes;
	final TriangleStripDrawMode : TrianglesDrawModes;
	final TriangleFanDrawMode : TrianglesDrawModes;
}