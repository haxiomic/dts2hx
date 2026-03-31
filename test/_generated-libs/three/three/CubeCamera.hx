package three;

@:jsRequire("three", "CubeCamera") extern class CubeCamera extends Object3D {
	function new(?near:Float, ?far:Float, ?cubeResolution:Float);
	var renderTarget : WebGLRenderTargetCube;
	function update(renderer:WebGLRenderer, scene:Scene):Void;
	function clear(renderer:WebGLRenderer, color:Bool, depth:Bool, stencil:Bool):Void;
	function copy(source:CubeCamera, ?recursive:Bool):CubeCamera;
	static var prototype : CubeCamera;
}