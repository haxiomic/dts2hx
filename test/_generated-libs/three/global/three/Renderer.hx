package global.three;

typedef Renderer = {
	var domElement : js.html.CanvasElement;
	function render(scene:Scene, camera:Camera):Void;
	function setSize(width:Float, height:Float, ?updateStyle:Bool):Void;
};