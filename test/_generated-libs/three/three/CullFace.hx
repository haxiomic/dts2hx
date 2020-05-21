package three;

@:enum @:jsRequire("three") extern abstract CullFace(Int) from Int to Int {
	var CullFaceNone : CullFace;
	var CullFaceBack : CullFace;
	var CullFaceFront : CullFace;
	var CullFaceFrontBack : CullFace;
}