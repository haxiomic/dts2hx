package three;
@:jsRequire("three", "UniformsUtils") @valueModuleOnly extern class UniformsUtils {
	static function merge(uniforms:std.Array<Any>):Any;
	static function clone(uniforms_src:Any):Any;
}