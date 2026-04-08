package chart_js;

typedef ILineElement<T:(LineProps), O:(LineOptions)> = {
	function updateControlPoints(chartArea:ChartArea, ?indexAxis:String):Void;
	var points : Array<Point>;
	final segments : Array<Segment>;
	function first():ts.AnyOf2<Bool, Point>;
	function last():ts.AnyOf2<Bool, Point>;
	function interpolate(point:Point, property:String):Null<ts.AnyOf2<Point, Array<Point>>>;
	function pathSegment(ctx:js.html.CanvasRenderingContext2D, segment:Segment, params:haxe.DynamicAccess<Any>):Null<Bool>;
	function path(ctx:js.html.CanvasRenderingContext2D):Bool;
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
};