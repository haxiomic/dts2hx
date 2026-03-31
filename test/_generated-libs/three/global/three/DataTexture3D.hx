package global.three;

@:native("THREE.DataTexture3D") extern class DataTexture3D extends Texture {
	function new(data:TypedArray, width:Float, height:Float, depth:Float);
	static var prototype : DataTexture3D;
}