package global.three;

@:enum @:native("THREE") extern abstract FrontFaceDirection(Int) from Int to Int {
	final FrontFaceDirectionCW : FrontFaceDirection;
	final FrontFaceDirectionCCW : FrontFaceDirection;
}