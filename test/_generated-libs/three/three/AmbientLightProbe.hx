package three;

@:jsRequire("three", "AmbientLightProbe") extern class AmbientLightProbe extends LightProbe {
	function new(?color:ts.AnyOf3<String, Float, Color>, ?intensity:Float);
	var isAmbientLightProbe : Bool;
	function copy(source:AmbientLightProbe, ?recursive:Bool):AmbientLightProbe;
	static var prototype : AmbientLightProbe;
}