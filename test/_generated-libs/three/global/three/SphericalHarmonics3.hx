package global.three;

@:native("THREE.SphericalHarmonics3") extern class SphericalHarmonics3 {
	function new();
	var coefficients : Array<Vector3>;
	var isSphericalHarmonics3 : Bool;
	function set(coefficients:Array<Vector3>):SphericalHarmonics3;
	function zero():SphericalHarmonics3;
	function add(sh:SphericalHarmonics3):SphericalHarmonics3;
	function scale(s:Float):SphericalHarmonics3;
	function lerp(sh:SphericalHarmonics3, alpha:Float):SphericalHarmonics3;
	function equals(sh:SphericalHarmonics3):Bool;
	function copy(sh:SphericalHarmonics3):SphericalHarmonics3;
	function clone():SphericalHarmonics3;
	function fromArray(array:Array<Float>):SphericalHarmonics3;
	function toArray():Array<Float>;
	function getAt(normal:Vector3, target:Vector3):Vector3;
	function getIrradianceAt(normal:Vector3, target:Vector3):Vector3;
	static var prototype : SphericalHarmonics3;
	static function getBasisAt(normal:Vector3, shBasis:Array<Float>):Void;
}