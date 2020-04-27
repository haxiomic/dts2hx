package three;
@:jsRequire("three", "CubeCamera") extern class CubeCamera extends Object3D {
	function new(?near:Float, ?far:Float, ?cubeResolution:Float);
	var type : String;
	var renderTarget : WebGLRenderTargetCube;
	function update(renderer:WebGLRenderer, scene:Scene):Void;
	function clear(renderer:WebGLRenderer, color:Bool, depth:Bool, stencil:Bool):Void;
}