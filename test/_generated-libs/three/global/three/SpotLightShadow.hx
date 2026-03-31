package global.three;

@:native("THREE.SpotLightShadow") extern class SpotLightShadow extends LightShadow {
	function update(light:Light):Void;
	static var prototype : SpotLightShadow;
}