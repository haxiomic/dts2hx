package ts.html;
@:native("DOMRect") extern class DOMRect {
	function new(?x:Float, ?y:Float, ?width:Float, ?height:Float);
	var height : Float;
	var width : Float;
	var x : Float;
	var y : Float;
	static var prototype : IDOMRect;
	static function fromRect(?other:DOMRectInit):IDOMRect;
}