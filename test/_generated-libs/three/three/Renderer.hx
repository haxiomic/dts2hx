package three;
extern interface Renderer {
	var domElement : js.html.HTMLCanvasElement;
	function render(scene:Scene, camera:Camera):Void;
	function setSize(width:Float, height:Float, ?updateStyle:Bool):Void;
}