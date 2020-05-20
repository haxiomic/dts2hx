package three;

@:jsRequire("three", "CullFace") @:enum extern abstract CullFace(Any) from Any to Any {
	var CullFaceNone : CullFace;
	var CullFaceBack : CullFace;
	var CullFaceFront : CullFace;
	var CullFaceFrontBack : CullFace;
}