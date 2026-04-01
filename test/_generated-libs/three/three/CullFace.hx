package three;

@:jsRequire("three") extern enum abstract CullFace(Int) from Int to Int {
	final CullFaceNone : CullFace;
	final CullFaceBack : CullFace;
	final CullFaceFront : CullFace;
	final CullFaceFrontBack : CullFace;
}