package vscode;

/**
	Represents a debug adapter running as a socket based server.
**/
@:jsRequire("vscode", "DebugAdapterServer") extern class DebugAdapterServer {
	/**
		Create a description for a debug adapter running as a socket based server.
	**/
	function new(port:Float, ?host:String);
	/**
		The port.
	**/
	final port : Float;
	/**
		The host.
	**/
	@:optional
	final host : String;
	static var prototype : DebugAdapterServer;
}