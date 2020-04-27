package three;
@:jsRequire("three", "ImmediateRenderObject") extern class ImmediateRenderObject extends Object3D {
	function new(material:Material);
	var material : Material;
	function render(renderCallback:js.lib.Function):Void;
}