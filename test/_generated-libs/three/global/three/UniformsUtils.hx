package global.three;

@:native("THREE.UniformsUtils") @valueModuleOnly extern class UniformsUtils {
	static function merge(uniforms:Array<Dynamic>):Dynamic;
	static function clone(uniforms_src:Dynamic):Dynamic;
}