package ts.html;
@:native("ExtensionScriptApis") extern class ExtensionScriptApis {
	function new();
	function extensionIdToShortId(extensionId:String):Float;
	function fireExtensionApiTelemetry(functionName:String, isSucceeded:Bool, isSupported:Bool, errorString:String):Void;
	function genericFunction(routerAddress:Any, ?parameters:String, ?callbackId:Float):Void;
	function genericSynchronousFunction(functionId:Float, ?parameters:String):String;
	function genericWebRuntimeCallout(to:Any, from:Any, payload:String):Void;
	function getExtensionId():String;
	function registerGenericFunctionCallbackHandler(callbackHandler:ts.lib.IFunction):Void;
	function registerGenericPersistentCallbackHandler(callbackHandler:ts.lib.IFunction):Void;
	function registerWebRuntimeCallbackHandler(handler:ts.lib.IFunction):Any;
	static var prototype : IExtensionScriptApis;
}