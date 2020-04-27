package node.http2;
extern typedef ServerStreamResponseOptions = { @:optional
	var endStream : Bool; @:optional
	var waitForTrailers : Bool; };