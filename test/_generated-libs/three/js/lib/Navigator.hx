package js.lib;
/**
	The state and the identity of the user agent. It allows scripts to query it and to register themselves to carry on some activities.
**/
@:native("Navigator") extern class Navigator {
	function new();
	final activeVRDisplays : ReadonlyArray<IVRDisplay>;
	final clipboard : js.html.IClipboard;
	final credentials : js.html.ICredentialsContainer;
	final doNotTrack : Null<String>;
	final geolocation : js.html.Geolocation;
	final maxTouchPoints : Float;
	final mediaDevices : js.html.IMediaDevices;
	final msManipulationViewsEnabled : Bool;
	final msMaxTouchPoints : Float;
	final msPointerEnabled : Bool;
	final permissions : js.html.IPermissions;
	final pointerEnabled : Bool;
	final serviceWorker : js.html.IServiceWorkerContainer;
	function getGamepads():std.Array<Null<js.html.IGamepad>>;
	function getUserMedia(constraints:js.html.MediaStreamConstraints, successCallback:js.html.NavigatorUserMediaSuccessCallback, errorCallback:js.html.NavigatorUserMediaErrorCallback):Void;
	function getVRDisplays():IPromise<std.Array<IVRDisplay>>;
	function msLaunchUri(uri:String, ?successCallback:js.html.MSLaunchUriCallback, ?noHandlerCallback:js.html.MSLaunchUriCallback):Void;
	@:overload(function(keySystem:String, supportedConfigurations:Iterable<js.html.MediaKeySystemConfiguration>):IPromise<js.html.IMediaKeySystemAccess> { })
	function requestMediaKeySystemAccess(keySystem:String, supportedConfigurations:std.Array<js.html.MediaKeySystemConfiguration>):IPromise<js.html.IMediaKeySystemAccess>;
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
	function sendBeacon(url:String, ?data:haxe.extern.EitherType<String, haxe.extern.EitherType<IInt8Array, haxe.extern.EitherType<IUint8Array, haxe.extern.EitherType<IUint8ClampedArray, haxe.extern.EitherType<IInt16Array, haxe.extern.EitherType<IUint16Array, haxe.extern.EitherType<IInt32Array, haxe.extern.EitherType<IUint32Array, haxe.extern.EitherType<IFloat32Array, haxe.extern.EitherType<IFloat64Array, haxe.extern.EitherType<IArrayBuffer, haxe.extern.EitherType<js.html.IBlob, haxe.extern.EitherType<IFormData, IDataView>>>>>>>>>>>>>):Bool;
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
	final mimeTypes : IMimeTypeArray;
	final plugins : IPluginArray;
	function javaEnabled():Bool;
	final storage : js.html.IStorageManager;
	static var prototype : INavigator;
}