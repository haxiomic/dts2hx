package js.html;
extern typedef NotificationOptions = { @:optional
	var actions : std.Array<NotificationAction>; @:optional
	var badge : String; @:optional
	var body : String; @:optional
	var data : Any; @:optional
	var dir : String; @:optional
	var icon : String; @:optional
	var image : String; @:optional
	var lang : String; @:optional
	var renotify : Bool; @:optional
	var requireInteraction : Bool; @:optional
	var silent : Bool; @:optional
	var tag : String; @:optional
	var timestamp : Float; @:optional
	var vibrate : haxe.extern.EitherType<Float, std.Array<Float>>; };