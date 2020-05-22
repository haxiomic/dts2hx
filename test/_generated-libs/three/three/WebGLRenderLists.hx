package three;

@:jsRequire("three", "WebGLRenderLists") extern class WebGLRenderLists {
	function new();
	function dispose():Void;
	function get(scene:Scene, camera:Camera):WebGLRenderList;
	static var prototype : WebGLRenderLists;
}