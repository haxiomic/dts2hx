package js.html;
@:native("ExtensionScriptApis") @tsInterface extern class ExtensionScriptApis {
	function new();
	function extensionIdToShortId(extensionId:String):Float;
	function fireExtensionApiTelemetry(functionName:String, isSucceeded:Bool, isSupported:Bool, errorString:String):Void;
	function genericFunction(routerAddress:Any, ?parameters:String, ?callbackId:Float):Void;
	function genericSynchronousFunction(functionId:Float, ?parameters:String):String;
	function genericWebRuntimeCallout(to:Any, from:Any, payload:String):Void;
	function getExtensionId():String;
	function registerGenericFunctionCallbackHandler(callbackHandler:js.lib.Function):Void;
	function registerGenericPersistentCallbackHandler(callbackHandler:js.lib.Function):Void;
	function registerWebRuntimeCallbackHandler(handler:js.lib.Function):Any;
	static var prototype : ExtensionScriptApis;
}