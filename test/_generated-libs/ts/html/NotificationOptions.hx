package ts.html;
extern typedef NotificationOptions = {
	@:optional
	var actions : std.Array<NotificationAction>;
	@:optional
	var badge : String;
	@:optional
	var body : String;
	@:optional
	var data : Dynamic;
	@:optional
	var dir : String;
	@:optional
	var icon : String;
	@:optional
	var image : String;
	@:optional
	var lang : String;
	@:optional
	var renotify : Bool;
	@:optional
	var requireInteraction : Bool;
	@:optional
	var silent : Bool;
	@:optional
	var tag : String;
	@:optional
	var timestamp : Float;
	@:optional
	var vibrate : ts.AnyOf2<Float, std.Array<Float>>;
};