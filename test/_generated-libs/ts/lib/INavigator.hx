package ts.lib;
/**
	The state and the identity of the user agent. It allows scripts to query it and to register themselves to carry on some activities.
**/
extern typedef INavigator = {
	final activeVRDisplays : ReadonlyArray<IVRDisplay>;
	final clipboard : ts.html.IClipboard;
	final credentials : ts.html.ICredentialsContainer;
	final doNotTrack : Null<String>;
	final geolocation : ts.html.Geolocation;
	final maxTouchPoints : Float;
	final mediaDevices : ts.html.IMediaDevices;
	final msManipulationViewsEnabled : Bool;
	final msMaxTouchPoints : Float;
	final msPointerEnabled : Bool;
	final permissions : ts.html.IPermissions;
	final pointerEnabled : Bool;
	final serviceWorker : ts.html.IServiceWorkerContainer;
	function getGamepads():std.Array<Null<ts.html.IGamepad>>;
	function getUserMedia(constraints:ts.html.MediaStreamConstraints, successCallback:ts.html.NavigatorUserMediaSuccessCallback, errorCallback:ts.html.NavigatorUserMediaErrorCallback):Void;
	function getVRDisplays():IPromise<std.Array<IVRDisplay>>;
	function msLaunchUri(uri:String, ?successCallback:ts.html.MSLaunchUriCallback, ?noHandlerCallback:ts.html.MSLaunchUriCallback):Void;
	@:overload(function(keySystem:String, supportedConfigurations:Iterable<ts.html.MediaKeySystemConfiguration>):IPromise<ts.html.IMediaKeySystemAccess> { })
	function requestMediaKeySystemAccess(keySystem:String, supportedConfigurations:std.Array<ts.html.MediaKeySystemConfiguration>):IPromise<ts.html.IMediaKeySystemAccess>;
	function vibrate(pattern:ts.AnyOf2<Float, std.Array<Float>>):Bool;
	function msSaveBlob(blob:Any, ?defaultName:String):Bool;
	function msSaveOrOpenBlob(blob:Any, ?defaultName:String):Bool;
	function confirmSiteSpecificTrackingException(args:ts.html.ConfirmSiteSpecificExceptionsInformation):Bool;
	function confirmWebWideTrackingException(args:ts.html.ExceptionInformation):Bool;
	function removeSiteSpecificTrackingException(args:ts.html.ExceptionInformation):Void;
	function removeWebWideTrackingException(args:ts.html.ExceptionInformation):Void;
	function storeSiteSpecificTrackingException(args:ts.html.StoreSiteSpecificExceptionsInformation):Void;
	function storeWebWideTrackingException(args:ts.html.StoreExceptionsInformation):Void;
	final webdriver : Bool;
	function sendBeacon(url:String, ?data:ts.AnyOf14<String, IArrayBuffer, ts.html.IBlob, IFloat32Array, IFloat64Array, IFormData, IUint8Array, IInt8Array, IInt16Array, IInt32Array, IUint16Array, IUint32Array, IUint8ClampedArray, IDataView>):Bool;
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
	final storage : ts.html.IStorageManager;
};