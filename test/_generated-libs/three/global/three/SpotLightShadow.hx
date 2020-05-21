package global.three;

@:native("THREE.SpotLightShadow") extern class SpotLightShadow extends LightShadow {
	function update(light:Light):Void;
	function copy(source:LightShadow):SpotLightShadow;
	function clone(?recursive:Bool):SpotLightShadow;
	static var prototype : SpotLightShadow;
}