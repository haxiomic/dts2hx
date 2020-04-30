package ts.lib;
/**
	The state and the identity of the user agent. It allows scripts to query it and to register themselves to carry on some activities.
**/
@:native("Navigator") extern class Navigator {
	function new();
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
	function vibrate(pattern:haxe.extern.EitherType<Float, std.Array<Float>>):Bool;
	static var prototype : INavigator;
}