package three;
extern typedef SpriteMaterialParameters = MaterialParameters & { @:optional
	var color : haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Color>>; @:optional
	var map : Texture; @:optional
	var rotation : Float; @:optional
	var sizeAttenuation : Bool; };