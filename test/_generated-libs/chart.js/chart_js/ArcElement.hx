package chart_js;

@:jsRequire("chart.js", "ArcElement") extern class ArcElement<T:(ArcProps), O:(ArcOptions)> {
	function new(cfg:haxe.DynamicAccess<Any>);
	final x : Float;
	final y : Float;
	final active : Bool;
	final options : O;
	function tooltipPosition(?useFinalPosition:Bool):Point;
	function hasValue():Bool;
	@:overload(function<P:(ts.AnyOf3<String, Float, js.lib.Symbol>), P2:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(props:ts.Tuple2<P, P2>, ?final_:Bool):{ } { })
	@:overload(function<P:(ts.AnyOf3<String, Float, js.lib.Symbol>), P2:(ts.AnyOf3<String, Float, js.lib.Symbol>), P3:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(props:ts.Tuple3<P, P2, P3>, ?final_:Bool):{ } { })
	@:overload(function<P:(ts.AnyOf3<String, Float, js.lib.Symbol>), P2:(ts.AnyOf3<String, Float, js.lib.Symbol>), P3:(ts.AnyOf3<String, Float, js.lib.Symbol>), P4:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(props:ts.Tuple4<P, P2, P3, P4>, ?final_:Bool):{ } { })
	@:overload(function<P:(ts.AnyOf3<String, Float, js.lib.Symbol>), P2:(ts.AnyOf3<String, Float, js.lib.Symbol>), P3:(ts.AnyOf3<String, Float, js.lib.Symbol>), P4:(ts.AnyOf3<String, Float, js.lib.Symbol>), P5:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(props:ts.Tuple5<P, P2, P3, P4, P5>, ?final_:Bool):{ } { })
	@:overload(function(props:Array<Dynamic>, ?final_:Bool):T { })
	function getProps<P:(ts.AnyOf3<String, Float, js.lib.Symbol>)>(props:ts.Tuple1<P>, ?final_:Bool):{ };
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
	static var id : String;
	@:optional
	static var defaults : haxe.DynamicAccess<Any>;
	@:optional
	static var defaultRoutes : haxe.DynamicAccess<String>;
	@:optional
	static function beforeRegister():Void;
	@:optional
	static function afterRegister():Void;
	@:optional
	static function beforeUnregister():Void;
	@:optional
	static function afterUnregister():Void;
	static var prototype : ArcElement<ArcProps, ArcOptions>;
}