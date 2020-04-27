package js.html;
extern interface AnimationFrameProvider {
	function cancelAnimationFrame(handle:Float):Void;
	function requestAnimationFrame(callback:FrameRequestCallback):Float;
}