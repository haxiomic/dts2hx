package ts.html;
/**
	This Streams API interface represents a controller allowing control of a WritableStream's state. When constructing a WritableStream, the underlying sink is given a corresponding WritableStreamDefaultController instance to manipulate.
**/
typedef WritableStreamDefaultController = {
	function error(?error:Dynamic):Void;
};