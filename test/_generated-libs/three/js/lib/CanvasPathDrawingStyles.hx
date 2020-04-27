package js.lib;
extern typedef CanvasPathDrawingStyles = { var lineCap : String; var lineDashOffset : Float; var lineJoin : String; var lineWidth : Float; var miterLimit : Float; function getLineDash():std.Array<Float>; @:overload(function(segments:Iterable<Float>):Void { })
	function setLineDash(segments:std.Array<Float>):Void; };