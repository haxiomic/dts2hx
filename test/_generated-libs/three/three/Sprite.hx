package three;
@:jsRequire("three", "Sprite") extern class Sprite extends Object3D {
	function new(?material:SpriteMaterial);
	var type : String;
	var isSprite : Bool;
	var geometry : BufferGeometry;
	var material : SpriteMaterial;
	var center : Vector2;
	function raycast(raycaster:Raycaster, intersects:std.Array<Intersection>):Void;
	function copy(source:Sprite):Sprite;
}