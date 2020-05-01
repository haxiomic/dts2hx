package three;
typedef Renderer = {
	var domElement : ts.html.IHTMLCanvasElement;
	function render(scene:Scene, camera:Camera):Void;
	function setSize(width:Float, height:Float, ?updateStyle:Bool):Void;
};