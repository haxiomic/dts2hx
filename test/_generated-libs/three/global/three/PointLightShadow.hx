package global.three;

@:native("THREE.PointLightShadow") extern class PointLightShadow extends LightShadow {
	function copy(source:LightShadow):PointLightShadow;
	function clone(?recursive:Bool):PointLightShadow;
	static var prototype : PointLightShadow;
}