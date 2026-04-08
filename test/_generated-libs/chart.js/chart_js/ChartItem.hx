package chart_js;

typedef ChartItem = ts.AnyOf7<String, js.html.OffscreenCanvas, js.html.CanvasElement, js.html.CanvasRenderingContext2D, js.html.OffscreenCanvasRenderingContext2D, {
	var canvas : ts.AnyOf2<js.html.OffscreenCanvas, js.html.CanvasElement>;
}, js.lib.ArrayLike<ts.AnyOf3<js.html.OffscreenCanvas, js.html.CanvasElement, js.html.CanvasRenderingContext2D>>>;