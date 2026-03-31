package global.three;

@:native("THREE.LightProbe") extern class LightProbe extends Light {
	function new(?sh:SphericalHarmonics3, ?intensity:Float);
	var isLightProbe : Bool;
	var sh : SphericalHarmonics3;
	function copy(source:LightProbe, ?recursive:Bool):LightProbe;
	static var prototype : LightProbe;
}