package js.html;
extern typedef IExtensionScriptApis = {
	function extensionIdToShortId(extensionId:String):Float;
	function fireExtensionApiTelemetry(functionName:String, isSucceeded:Bool, isSupported:Bool, errorString:String):Void;
	function genericFunction(routerAddress:Any, ?parameters:String, ?callbackId:Float):Void;
	function genericSynchronousFunction(functionId:Float, ?parameters:String):String;
	function genericWebRuntimeCallout(to:Any, from:Any, payload:String):Void;
	function getExtensionId():String;
	function registerGenericFunctionCallbackHandler(callbackHandler:js.lib.IFunction):Void;
	function registerGenericPersistentCallbackHandler(callbackHandler:js.lib.IFunction):Void;
	function registerWebRuntimeCallbackHandler(handler:js.lib.IFunction):Any;
};