package ts.html;
@:native("DOMRectReadOnly") extern class DOMRectReadOnly {
	function new(?x:Float, ?y:Float, ?width:Float, ?height:Float);
	final bottom : Float;
	final height : Float;
	final left : Float;
	final right : Float;
	final top : Float;
	final width : Float;
	final x : Float;
	final y : Float;
	function toJSON():Dynamic;
	static var prototype : DOMRectReadOnly;
	static function fromRect(?other:DOMRectInit):DOMRectReadOnly;
}