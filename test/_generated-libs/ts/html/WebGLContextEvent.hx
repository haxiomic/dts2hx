package ts.html;
/**
	The WebContextEvent interface is part of the WebGL API and is an interface for an event that is generated in response to a status change to the WebGL rendering context.
**/
@:native("WebGLContextEvent") extern class WebGLContextEvent {
	function new(type:String, ?eventInit:WebGLContextEventInit);
	final statusMessage : String;
	static var prototype : IWebGLContextEvent;
}