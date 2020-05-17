package three;

typedef RenderItem = {
	var id : Float;
	var object : Object3D;
	var geometry : Null<BufferGeometry>;
	var material : Material;
	var program : WebGLProgram;
	var groupOrder : Float;
	var renderOrder : Float;
	var z : Float;
	var group : Null<Group>;
};