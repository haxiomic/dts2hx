package global.three;

@:native("THREE.GeometryUtils") @valueModuleOnly extern class GeometryUtils {
	static function merge(geometry1:Dynamic, geometry2:Dynamic, ?materialIndexOffset:Dynamic):Dynamic;
	static function center(geometry:Dynamic):Dynamic;
}