package global.three;

@:native("THREE.ImmediateRenderObject") extern class ImmediateRenderObject extends Object3D {
	function new(material:Material);
	var material : Material;
	function render(renderCallback:haxe.Constraints.Function):Void;
	function copy(source:ImmediateRenderObject, ?recursive:Bool):ImmediateRenderObject;
	static var prototype : ImmediateRenderObject;
}