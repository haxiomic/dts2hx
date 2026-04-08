package chart_js;

@:jsRequire("chart.js", "BasePlatform") extern class BasePlatform {
	function new();
	/**
		Called at chart construction time, returns a context2d instance implementing
		the [W3C Canvas 2D Context API standard]
		{@link
		https://www.w3.org/TR/2dcontext/
		}
		.
	**/
	function acquireContext(canvas:js.html.CanvasElement, ?options:js.html.CanvasRenderingContext2DSettings):Null<js.html.CanvasRenderingContext2D>;
	/**
		Called at chart destruction time, releases any resources associated to the context
		previously returned by the acquireContext() method.
	**/
	function releaseContext(context:js.html.CanvasRenderingContext2D):Bool;
	/**
		Registers the specified listener on the given chart.
	**/
	function addEventListener(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, type:String, listener:(e:ChartEvent) -> Void):Void;
	/**
		Removes the specified listener previously registered with addEventListener.
	**/
	function removeEventListener(chart:Chart<String, Array<Null<ts.AnyOf3<Float, ScatterDataPoint, BubbleDataPoint>>>, Any>, type:String, listener:(e:ChartEvent) -> Void):Void;
	function getDevicePixelRatio():Float;
	function getMaximumSize(canvas:js.html.CanvasElement, ?width:Float, ?height:Float, ?aspectRatio:Float):{
		var width : Float;
		var height : Float;
	};
	function isAttached(canvas:js.html.CanvasElement):Bool;
	static var prototype : BasePlatform;
}