package node.http2;
extern typedef ClientSessionRequestOptions = { @:optional
	var endStream : Bool; @:optional
	var exclusive : Bool; @:optional
	var parent : Float; @:optional
	var weight : Float; @:optional
	var getTrailers : (trailers:node.http.OutgoingHttpHeaders, flags:Float) -> Void; };