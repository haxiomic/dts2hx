package three;
extern interface LineDashedMaterialParameters extends MaterialParameters {
	@:optional
	var color : haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Color>>;
	@:optional
	var linewidth : Float;
	@:optional
	var scale : Float;
	@:optional
	var dashSize : Float;
	@:optional
	var gapSize : Float;
}