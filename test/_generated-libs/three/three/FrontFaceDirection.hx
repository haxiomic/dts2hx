package three;

@:enum @:jsRequire("three") extern abstract FrontFaceDirection(Int) from Int to Int {
	final FrontFaceDirectionCW : FrontFaceDirection;
	final FrontFaceDirectionCCW : FrontFaceDirection;
}