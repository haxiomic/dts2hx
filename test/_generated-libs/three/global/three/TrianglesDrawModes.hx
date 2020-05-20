package global.three;

@:enum @:native("THREE") extern abstract TrianglesDrawModes(Any) from Any to Any {
	var TrianglesDrawMode : TrianglesDrawModes;
	var TriangleStripDrawMode : TrianglesDrawModes;
	var TriangleFanDrawMode : TrianglesDrawModes;
}