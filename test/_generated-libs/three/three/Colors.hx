package three;

@:enum @:jsRequire("three") extern abstract Colors(Int) from Int to Int {
	var NoColors : Colors;
	var FaceColors : Colors;
	var VertexColors : Colors;
}