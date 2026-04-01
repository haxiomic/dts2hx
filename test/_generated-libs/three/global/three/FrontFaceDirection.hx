package global.three;

@:native("THREE") extern enum abstract FrontFaceDirection(Int) from Int to Int {
	final FrontFaceDirectionCW : FrontFaceDirection;
	final FrontFaceDirectionCCW : FrontFaceDirection;
}