package node.util;

typedef StyleTextOptions = {
	/**
		When true, `stream` is checked to see if it can handle colors.
	**/
	@:optional
	var validateStream : Bool;
	/**
		A stream that will be validated if it can be colored.
	**/
	@:optional
	var stream : global.nodejs.WritableStream;
};