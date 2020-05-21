package global.three;

@:native("THREE.BufferGeometryLoader") extern class BufferGeometryLoader {
	function new(?manager:LoadingManager);
	var manager : LoadingManager;
	function load(url:String, onLoad:(bufferGeometry:BufferGeometry) -> Void, ?onProgress:(event:Dynamic) -> Void, ?onError:(event:Dynamic) -> Void):Void;
	function parse(json:Dynamic):BufferGeometry;
	static var prototype : BufferGeometryLoader;
}