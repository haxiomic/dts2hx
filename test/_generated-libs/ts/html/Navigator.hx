package ts.html;
/**
	The state and the identity of the user agent. It allows scripts to query it and to register themselves to carry on some activities.
**/
@:native("Navigator") extern class Navigator {
	function new();
	final activeVRDisplays : ts.lib.ReadonlyArray<VRDisplay>;
	final clipboard : Clipboard;
	final credentials : CredentialsContainer;
	final doNotTrack : Null<String>;
	final geolocation : Geolocation;
	final maxTouchPoints : Float;
	final mediaDevices : MediaDevices;
	final msManipulationViewsEnabled : Bool;
	final msMaxTouchPoints : Float;
	final msPointerEnabled : Bool;
	final permissions : Permissions;
	final pointerEnabled : Bool;
	final serviceWorker : ServiceWorkerContainer;
	function getGamepads():Array<Null<Gamepad>>;
	function getUserMedia(constraints:MediaStreamConstraints, successCallback:NavigatorUserMediaSuccessCallback, errorCallback:NavigatorUserMediaErrorCallback):Void;
	function getVRDisplays():ts.lib.Promise<Array<VRDisplay>>;
	function msLaunchUri(uri:String, ?successCallback:MSLaunchUriCallback, ?noHandlerCallback:MSLaunchUriCallback):Void;
	@:overload(function(keySystem:String, supportedConfigurations:ts.lib.Iterable<MediaKeySystemConfiguration>):ts.lib.Promise<MediaKeySystemAccess> { })
	function requestMediaKeySystemAccess(keySystem:String, supportedConfigurations:Array<MediaKeySystemConfiguration>):ts.lib.Promise<MediaKeySystemAccess>;
	function vibrate(pattern:ts.AnyOf2<Float, Array<Float>>):Bool;
	function msSaveBlob(blob:Dynamic, ?defaultName:String):Bool;
	function msSaveOrOpenBlob(blob:Dynamic, ?defaultName:String):Bool;
	function confirmSiteSpecificTrackingException(args:ConfirmSiteSpecificExceptionsInformation):Bool;
	function confirmWebWideTrackingException(args:ExceptionInformation):Bool;
	function removeSiteSpecificTrackingException(args:ExceptionInformation):Void;
	function removeWebWideTrackingException(args:ExceptionInformation):Void;
	function storeSiteSpecificTrackingException(args:StoreSiteSpecificExceptionsInformation):Void;
	function storeWebWideTrackingException(args:StoreExceptionsInformation):Void;
	final webdriver : Bool;
	function sendBeacon(url:String, ?data:ts.AnyOf14<String, ts.lib.ArrayBuffer, Blob, ts.lib.Float32Array, ts.lib.Float64Array, FormData, ts.lib.Uint8Array, ts.lib.Int8Array, ts.lib.Int16Array, ts.lib.Int32Array, ts.lib.Uint16Array, ts.lib.Uint32Array, ts.lib.Uint8ClampedArray, ts.lib.DataView>):Bool;
	final hardwareConcurrency : Float;
	function registerProtocolHandler(scheme:String, url:String, title:String):Void;
	function unregisterProtocolHandler(scheme:String, url:String):Void;
	final cookieEnabled : Bool;
	final appCodeName : String;
	final appName : String;
	final appVersion : String;
	final oscpu : String;
	final platform : String;
	final product : String;
	final productSub : String;
	final userAgent : String;
	final vendor : String;
	final vendorSub : String;
	function taintEnabled():Bool;
	final language : String;
	final languages : ts.lib.ReadonlyArray<String>;
	final onLine : Bool;
	final mimeTypes : MimeTypeArray;
	final plugins : PluginArray;
	function javaEnabled():Bool;
	final storage : StorageManager;
	static var prototype : Navigator;
}