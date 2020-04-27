package js.html;
@:native("DOMRect") @tsInterface extern class DOMRect {
	function new(?x:Float, ?y:Float, ?width:Float, ?height:Float);
	var height : Float;
	var width : Float;
	var x : Float;
	var y : Float;
	final bottom : Float;
	final left : Float;
	final right : Float;
	final top : Float;
	function toJSON():Any;
	static var prototype : DOMRect;
	static function fromRect(?other:DOMRectInit):DOMRect;
}