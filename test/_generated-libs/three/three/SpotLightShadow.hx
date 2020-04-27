package three;
@:jsRequire("three", "SpotLightShadow") extern class SpotLightShadow extends LightShadow {
	var camera : PerspectiveCamera;
	function update(light:Light):Void;
}