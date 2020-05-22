package global.three;

@:native("THREE.WebGLRenderList") extern class WebGLRenderList {
	function new();
	var opaque : Array<RenderItem>;
	var transparent : Array<RenderItem>;
	function init():Void;
	function push(object:Object3D, geometry:Null<BufferGeometry>, material:Material, groupOrder:Float, z:Float, group:Null<Group>):Void;
	function unshift(object:Object3D, geometry:Null<BufferGeometry>, material:Material, groupOrder:Float, z:Float, group:Null<Group>):Void;
	function sort():Void;
	static var prototype : WebGLRenderList;
}