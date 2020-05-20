package three;

@:jsRequire("three", "FrontFaceDirection") @:enum extern abstract FrontFaceDirection(Any) from Any to Any {
	var FrontFaceDirectionCW : FrontFaceDirection;
	var FrontFaceDirectionCCW : FrontFaceDirection;
}