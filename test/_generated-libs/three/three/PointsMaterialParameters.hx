package three;
extern interface PointsMaterialParameters extends MaterialParameters {
	@:optional
	var color : haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Color>>;
	@:optional
	var map : Texture;
	@:optional
	var size : Float;
	@:optional
	var sizeAttenuation : Bool;
}