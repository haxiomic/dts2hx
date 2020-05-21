package three;

@:enum @:jsRequire("three") extern abstract FrontFaceDirection(Int) from Int to Int {
	var FrontFaceDirectionCW : FrontFaceDirection;
	var FrontFaceDirectionCCW : FrontFaceDirection;
}