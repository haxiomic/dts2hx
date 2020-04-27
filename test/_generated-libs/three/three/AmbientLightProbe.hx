package three;
@:jsRequire("three", "AmbientLightProbe") extern class AmbientLightProbe extends LightProbe {
	function new(?color:haxe.extern.EitherType<String, haxe.extern.EitherType<Float, Color>>, ?intensity:Float);
	var isAmbientLightProbe : Bool;
}