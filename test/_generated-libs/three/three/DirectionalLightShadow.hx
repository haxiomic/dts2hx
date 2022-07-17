package three;

@:jsRequire("three", "DirectionalLightShadow") extern class DirectionalLightShadow extends LightShadow {
	function copy(source:LightShadow):DirectionalLightShadow;
	function clone(?recursive:Bool):DirectionalLightShadow;
	static var prototype : DirectionalLightShadow;
}