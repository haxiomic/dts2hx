package global.three;

@:enum @:native("THREE") extern abstract FrontFaceDirection(Int) from Int to Int {
	var FrontFaceDirectionCW : FrontFaceDirection;
	var FrontFaceDirectionCCW : FrontFaceDirection;
}