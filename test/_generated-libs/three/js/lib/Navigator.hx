package js.lib;
/**
	The state and the identity of the user agent. It allows scripts to query it and to register themselves to carry on some activities.
**/
@:native("Navigator") @tsInterface extern class Navigator {
	function new();
	final activeVRDisplays : ReadonlyArray<VRDisplay>;
	final clipboard : js.html.Clipboard;
	final credentials : js.html.CredentialsContainer;
	final doNotTrack : Null<String>;
	final geolocation : js.html.Geolocation;
	final maxTouchPoints : Float;
	final mediaDevices : js.html.MediaDevices;
	final msManipulationViewsEnabled : Bool;
	final msMaxTouchPoints : Float;
	final msPointerEnabled : Bool;
	final permissions : js.html.Permissions;
	final pointerEnabled : Bool;
	final serviceWorker : js.html.ServiceWorkerContainer;
	function getGamepads():std.Array<Null<js.html.Gamepad>>;
	function getUserMedia(constraints:js.html.MediaStreamConstraints, successCallback:js.html.NavigatorUserMediaSuccessCallback, errorCallback:js.html.NavigatorUserMediaErrorCallback):Void;
	function getVRDisplays():Promise<std.Array<VRDisplay>>;
	function msLaunchUri(uri:String, ?successCallback:js.html.MSLaunchUriCallback, ?noHandlerCallback:js.html.MSLaunchUriCallback):Void;
	@:overload(function(keySystem:String, supportedConfigurations:Iterable<js.html.MediaKeySystemConfiguration>):Promise<js.html.MediaKeySystemAccess> { })
	function requestMediaKeySystemAccess(keySystem:String, supportedConfigurations:std.Array<js.html.MediaKeySystemConfiguration>):Promise<js.html.MediaKeySystemAccess>;
	function vibrate(pattern:haxe.extern.EitherType<Float, std.Array<Float>>):Bool;
	function msSaveBlob(blob:Any, ?defaultName:String):Bool;
	function msSaveOrOpenBlob(blob:Any, ?defaultName:String):Bool;
	function confirmSiteSpecificTrackingException(args:js.html.ConfirmSiteSpecificExceptionsInformation):Bool;
	function confirmWebWideTrackingException(args:js.html.ExceptionInformation):Bool;
	function removeSiteSpecificTrackingException(args:js.html.ExceptionInformation):Void;
	function removeWebWideTrackingException(args:js.html.ExceptionInformation):Void;
	function storeSiteSpecificTrackingException(args:js.html.StoreSiteSpecificExceptionsInformation):Void;
	function storeWebWideTrackingException(args:js.html.StoreExceptionsInformation):Void;
	final webdriver : Bool;
	function sendBeacon(url:String, ?data:haxe.extern.EitherType<String, haxe.extern.EitherType<Int8Array, haxe.extern.EitherType<Uint8Array, haxe.extern.EitherType<Uint8ClampedArray, haxe.extern.EitherType<Int16Array, haxe.extern.EitherType<Uint16Array, haxe.extern.EitherType<Int32Array, haxe.extern.EitherType<Uint32Array, haxe.extern.EitherType<Float32Array, haxe.extern.EitherType<Float64Array, haxe.extern.EitherType<ArrayBuffer, haxe.extern.EitherType<js.html.Blob, haxe.extern.EitherType<FormData, DataView>>>>>>>>>>>>>):Bool;
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
	final languages : ReadonlyArray<String>;
	final onLine : Bool;
	final mimeTypes : MimeTypeArray;
	final plugins : PluginArray;
	function javaEnabled():Bool;
	final storage : js.html.StorageManager;
	static var prototype : Navigator;
}