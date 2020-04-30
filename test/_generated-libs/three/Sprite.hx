package three;
@:jsRequire("three", "Sprite") extern class Sprite extends Object3D {
	function new(?material:SpriteMaterial);
	var isSprite : Bool;
	var geometry : BufferGeometry;
	var material : SpriteMaterial;
	var center : Vector2;
}