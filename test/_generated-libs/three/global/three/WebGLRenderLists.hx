package global.three;

@:native("THREE.WebGLRenderLists") extern class WebGLRenderLists {
	function dispose():Void;
	function get(scene:Scene, camera:Camera):WebGLRenderList;
	static var prototype : WebGLRenderLists;
}