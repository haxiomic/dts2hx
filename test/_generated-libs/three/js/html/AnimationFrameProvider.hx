package js.html;
extern typedef AnimationFrameProvider = { function cancelAnimationFrame(handle:Float):Void; function requestAnimationFrame(callback:FrameRequestCallback):Float; };