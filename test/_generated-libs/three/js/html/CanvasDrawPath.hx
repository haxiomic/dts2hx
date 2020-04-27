package js.html;
extern interface CanvasDrawPath {
	function beginPath():Void;
	@:overload(function(path:Path2D, ?fillRule:String):Void { })
	function clip(?fillRule:String):Void;
	@:overload(function(path:Path2D, ?fillRule:String):Void { })
	function fill(?fillRule:String):Void;
	@:overload(function(path:Path2D, x:Float, y:Float, ?fillRule:String):Bool { })
	function isPointInPath(x:Float, y:Float, ?fillRule:String):Bool;
	@:overload(function(path:Path2D, x:Float, y:Float):Bool { })
	function isPointInStroke(x:Float, y:Float):Bool;
	@:overload(function(path:Path2D):Void { })
	function stroke():Void;
}