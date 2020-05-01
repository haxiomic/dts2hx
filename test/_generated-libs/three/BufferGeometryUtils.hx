package three;
@:jsRequire("three", "BufferGeometryUtils") @valueModuleOnly extern class BufferGeometryUtils {
	static function mergeBufferGeometries(geometries:std.Array<BufferGeometry>):BufferGeometry;
	static function computeTangents(geometry:BufferGeometry):Dynamic;
	static function mergeBufferAttributes(attributes:std.Array<BufferAttribute>):BufferAttribute;
}