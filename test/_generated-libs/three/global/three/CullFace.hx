package global.three;

@:enum @:native("THREE") extern abstract CullFace(Int) from Int to Int {
	final CullFaceNone : CullFace;
	final CullFaceBack : CullFace;
	final CullFaceFront : CullFace;
	final CullFaceFrontBack : CullFace;
}