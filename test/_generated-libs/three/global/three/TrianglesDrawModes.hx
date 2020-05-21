package global.three;

@:enum @:native("THREE") extern abstract TrianglesDrawModes(Int) from Int to Int {
	var TrianglesDrawMode : TrianglesDrawModes;
	var TriangleStripDrawMode : TrianglesDrawModes;
	var TriangleFanDrawMode : TrianglesDrawModes;
}