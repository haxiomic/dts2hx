package three;
extern typedef LineBasicMaterialParameters = MaterialParameters & { @:optional
	var color : haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Color>>; @:optional
	var linewidth : Float; @:optional
	var linecap : String; @:optional
	var linejoin : String; };