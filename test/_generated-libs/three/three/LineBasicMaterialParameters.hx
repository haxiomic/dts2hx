package three;
extern interface LineBasicMaterialParameters extends MaterialParameters {
	@:optional
	var color : haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Color>>;
	@:optional
	var linewidth : Float;
	@:optional
	var linecap : String;
	@:optional
	var linejoin : String;
}