package ts.html;
extern typedef ReadableStreamDefaultController<R> = {
	final desiredSize : Null<Float>;
	function close():Void;
	function enqueue(chunk:R):Void;
	function error(?error:Any):Void;
};