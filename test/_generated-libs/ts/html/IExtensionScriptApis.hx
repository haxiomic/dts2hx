package ts.html;
typedef IExtensionScriptApis = {
	function extensionIdToShortId(extensionId:String):Float;
	function fireExtensionApiTelemetry(functionName:String, isSucceeded:Bool, isSupported:Bool, errorString:String):Void;
	function genericFunction(routerAddress:Dynamic, ?parameters:String, ?callbackId:Float):Void;
	function genericSynchronousFunction(functionId:Float, ?parameters:String):String;
	function genericWebRuntimeCallout(to:Dynamic, from:Dynamic, payload:String):Void;
	function getExtensionId():String;
	function registerGenericFunctionCallbackHandler(callbackHandler:ts.lib.Function):Void;
	function registerGenericPersistentCallbackHandler(callbackHandler:ts.lib.Function):Void;
	function registerWebRuntimeCallbackHandler(handler:ts.lib.Function):Dynamic;
};