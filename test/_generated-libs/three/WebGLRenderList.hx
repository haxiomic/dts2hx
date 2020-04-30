package three;
@:jsRequire("three", "WebGLRenderList") extern class WebGLRenderList {
	var opaque : std.Array<RenderItem>;
	var transparent : std.Array<RenderItem>;
	function init():Void;
	function push(object:Object3D, geometry:Null<BufferGeometry>, material:Material, groupOrder:Float, z:Float, group:Null<Group>):Void;
	function unshift(object:Object3D, geometry:Null<BufferGeometry>, material:Material, groupOrder:Float, z:Float, group:Null<Group>):Void;
	function sort():Void;
}