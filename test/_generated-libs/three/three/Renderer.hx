package three;
extern typedef Renderer = {
	var domElement : js.html.IHTMLCanvasElement;
	function render(scene:Scene, camera:Camera):Void;
	function setSize(width:Float, height:Float, ?updateStyle:Bool):Void;
};