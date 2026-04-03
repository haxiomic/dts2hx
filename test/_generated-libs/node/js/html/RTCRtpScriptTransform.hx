package js.html;

/**
	The **`RTCRtpScriptTransform`** interface of the WebRTC API is used to insert a WebRTC Encoded Transform (a TransformStream running in a worker thread) into the WebRTC sender and receiver pipelines.
	
	[MDN Reference](https://developer.mozilla.org/docs/Web/API/RTCRtpScriptTransform)
**/
@:native("RTCRtpScriptTransform") extern class RTCRtpScriptTransform {
	function new(worker:js.html.Worker, ?options:Dynamic, ?transfer:Array<Dynamic>);
	static var prototype : RTCRtpScriptTransform;
}