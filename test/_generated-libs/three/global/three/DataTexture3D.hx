package global.three;

@:native("THREE.DataTexture3D") extern class DataTexture3D extends Texture {
	function new(data:TypedArray, width:Float, height:Float, depth:Float);
	function clone():DataTexture3D;
	function copy(source:Texture):DataTexture3D;
	static var prototype : DataTexture3D;
}