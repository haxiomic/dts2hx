package three;
@:jsRequire("three", "GeometryUtils") @valueModuleOnly extern class GeometryUtils {
	static function merge(geometry1:Any, geometry2:Any, ?materialIndexOffset:Any):Any;
	static function center(geometry:Any):Any;
}