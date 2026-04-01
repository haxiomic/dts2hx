package three;

@:jsRequire("three") extern enum abstract FrontFaceDirection(Int) from Int to Int {
	final FrontFaceDirectionCW : FrontFaceDirection;
	final FrontFaceDirectionCCW : FrontFaceDirection;
}