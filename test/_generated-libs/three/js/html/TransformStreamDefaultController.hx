package js.html;
extern typedef TransformStreamDefaultController<O> = {
	final desiredSize : Null<Float>;
	function enqueue(chunk:O):Void;
	function error(?reason:Any):Void;
	function terminate():Void;
};