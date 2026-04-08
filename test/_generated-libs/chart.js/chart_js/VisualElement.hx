package chart_js;

typedef VisualElement = {
	function draw(ctx:js.html.CanvasRenderingContext2D):Void;
	function inRange(mouseX:Float, mouseY:Float, ?useFinalPosition:Bool):Bool;
	function inXRange(mouseX:Float, ?useFinalPosition:Bool):Bool;
	function inYRange(mouseY:Float, ?useFinalPosition:Bool):Bool;
	function getCenterPoint(?useFinalPosition:Bool):{
		var x : Float;
		var y : Float;
	};
	@:optional
	function getRange(axis:String):Float;
};