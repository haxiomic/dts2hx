package node.stream.web;

/**
	This Streams API interface represents a controller allowing control of a
	WritableStream's state. When constructing a WritableStream, the
	underlying sink is given a corresponding WritableStreamDefaultController
	instance to manipulate.
**/
@:jsRequire("stream/web", "WritableStreamDefaultController") extern class WritableStreamDefaultController {
	function new();
	function error(?e:Dynamic):Void;
	static var prototype : WritableStreamDefaultController;
}